#!/usr/bin/env python3.6
import os
import re
from typing import Dict, List

import requests
from jinja2 import Environment, FileSystemLoader, select_autoescape
from pathlib import Path
from add_solution import get_score, get_target_scores
import shutil

OUTPUT_DIR = Path('_build')
STATIC_DIR = Path('static')
SOLUTIONS_DIR = Path('solutions')


def main():
    if OUTPUT_DIR.exists():
        shutil.rmtree(OUTPUT_DIR)
    OUTPUT_DIR.mkdir()
    env = Environment(
        loader=FileSystemLoader('templates'),
        autoescape=select_autoescape(['html', 'xml'])
    )

    template = env.get_template('index.html')
    with open(OUTPUT_DIR / 'index.html', 'w') as f:
        f.write(template.render(years=get_years()))

    render_year_pages(env)
    render_solution_pages(env)

    for file in STATIC_DIR.glob('*'):
        shutil.copy(file, OUTPUT_DIR / file.name)


def render_year_pages(env: Environment):
    template = env.get_template('year.html')
    for directory in SOLUTIONS_DIR.glob('*'):
        year = get_year_details(directory)
        if year['coffee_break']:
            continue
        dir = OUTPUT_DIR / year['slug']
        if not dir.exists():
            dir.mkdir()
        with open(dir / 'index.html', 'w') as f:
            solutions = year['solutions']
            target_size = solutions[0]['target_size']
            target_speed = solutions[0]['target_speed']
            shortest = solutions[0]['shortest']
            fastest = solutions[0]['fastest']
            # size_solution = min(solutions, key=lambda x: x['size'])
            # speed_solution = min(solutions, key=lambda x: x['speed'])
            # speed_and_size_solution = min([s for s in solutions if meets_size_and_speed(s)], key=lambda x: x['speed'] + x['size'], default=None)
            solution_sizes = [s['size'] for s in solutions]
            solution_speeds = [s['speed'] for s in solutions]
            solution_authors = [s.get('author') for s in solutions]
            f.write(template.render(
                year=year,
                target_size=target_size,
                target_speed=target_speed,
                shortest=shortest,
                fastest=fastest,
                size_range=max(solution_sizes + [target_size]) * 1.1,
                speed_range=max(solution_speeds + [target_speed]) * 1.1,
                solution_sizes=solution_sizes,
                solution_speeds=solution_speeds,
                solution_authors=solution_authors,
                solutions=zip(solution_sizes, solution_speeds, solution_authors),
            ))


github_cache = {}


def fetch_github_data(username: str):
    result = github_cache.get(username)
    if not result:
        github_token = os.environ.get('GITHUB_TOKEN')
        if github_token:
            headers = {'Authorization': f'token {github_token}'}
        else:
            headers = None
        response = requests.get(f'https://api.github.com/users/{username}', headers=headers)
        if response.status_code not in (200, 404):
            raise Exception(f'Probably had an issue with rate limit. HTTP Status Code: {response.status_code}')
        result = response.json()
        github_cache[username] = result
    return result


def render_solution_pages(env: Environment):
    template = env.get_template('solution.html')
    solutions = [(get_solution_details(x), x) for x in SOLUTIONS_DIR.glob('**/*.asm')]
    for solution, asm_path in solutions:
        year = asm_path.parent.name[:2]
        name = asm_path.parent.name[5:]
        size = solution['size']
        speed = solution['speed']
        html_path = OUTPUT_DIR / slugify(f'{year}-{name}/') / f'size-{size}_speed-{speed}.html'
        author_name = solution.get('author')
        if author_name:
            github_data = fetch_github_data(author_name)
            author = {
                'username': github_data.get('login'),
                'avatar': github_data.get('avatar_url'),
                'name': github_data.get('name'),
                'profile': github_data.get('html_url'),
            }
        else:
            author = {
                'unknown': True
            }
        with html_path.open('w') as f:
            f.write(template.render(
                year=year,
                size=size,
                speed=speed,
                source=solution['source'],
                author=author,
            ))


def get_years() -> List[Dict]:
    years = [get_year_details(path) for path in SOLUTIONS_DIR.glob('*')]
    return sorted(years, key=lambda x: x['year'])


def get_year_details(path: Path) -> Dict:
    year = path.name[:2]
    name = path.name[5:]
    solutions = [get_solution_details(x) for x in path.glob('*.asm')]
    if not solutions:
        return {
            'year': year,
            'name': name,
            'coffee_break': True,
        }
    # If in any file the target score differs from another file, a typo must be somewhere
    assert len(set([s['target_size'] for s in solutions])) == 1
    assert len(set([s['target_speed'] for s in solutions])) == 1
    return {
        'year': year,
        'name': name,
        'target_size': solutions[0]['target_size'],
        'size': min([s['size'] for s in solutions]),
        'target_speed': solutions[0]['target_speed'],
        'speed': min([s['speed'] for s in solutions]),
        'size_and_speed': any([meets_size_and_speed(s) for s in solutions]),
        'slug': slugify(f'{year}-{name}/'),
        'coffee_break': False,
        'solutions': solutions,
    }


def get_solution_details(path: Path) -> Dict:
    with path.open() as f:
        source = f.read()
    year = int(re.search('\d+', source.split('\n')[1]).group(0))
    target_size, target_speed, shortest, fastest = get_target_scores(year)
    match = re.search('^-- Author: (.+)$', source, re.MULTILINE)
    if match:
        author = match.group(1)
    else:
        author = None
    return {
        # 'source': pygments.highlight(source, guess_lexer(source), HtmlFormatter()),
        'source': source,
        'target_size': target_size,
        'size': get_score(path, 'size'),
        'target_speed': target_speed,
        'speed': get_score(path, 'speed'),
        'shortest': shortest,
        'fastest': fastest,
        'author': author,
    }


def slugify(text):
    return text.replace(' ', '_')


def meets_size_and_speed(solution: Dict):
    size = solution['size']
    target_size = solution['target_size']
    speed = solution['speed']
    target_speed = solution['target_speed']
    return size <= target_size and speed <= target_speed


if __name__ == '__main__':
    main()
