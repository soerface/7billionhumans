#!/usr/bin/env python3.6
import math
import re
from typing import Dict, List

from jinja2 import Environment, FileSystemLoader, select_autoescape
from pathlib import Path
from add_solution import get_score
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

    for file in STATIC_DIR.glob('*'):
        shutil.copy(file, OUTPUT_DIR / file.name)


def get_years() -> List[Dict]:
    years = [get_details(path) for path in SOLUTIONS_DIR.glob('*')]
    return sorted(years, key=lambda x: x['year'])
    # return [
    #     {
    #         'year': 5,
    #         'name': 'An Important Decision',
    #         'target_size': 5,
    #         'size': 5,
    #         'target_speed': 3,
    #         'speed': 3,
    #         'size_and_speed': False,
    #     }
    # ]


def get_details(path: Path) -> Dict:
    solutions = [x for x in path.glob('*.asm')]
    year = path.name[:2]
    name = path.name[5:]
    if not solutions:
        return {
            'year': year,
            'name': name,
            'coffee_break': True,
        }
    # If in any file the target score differs from another file, a typo must be somewhere
    assert len(set([get_target_score(s, 'size') for s in solutions])) == 1
    assert len(set([get_target_score(s, 'speed') for s in solutions])) == 1
    return {
        'year': year,
        'name': name,
        'target_size': get_target_score(solutions[0], 'size'),
        'size': min([get_score(s, 'size') for s in solutions]),
        'target_speed': get_target_score(solutions[0], 'speed'),
        'speed': min([get_score(s, 'speed') for s in solutions]),
        'size_and_speed': any([meets_size_and_speed(s) for s in solutions])
    }


def meets_size_and_speed(path):
    size = get_score(path, 'size')
    target_size = get_target_score(path, 'size')
    speed = get_score(path, 'speed')
    target_speed = get_target_score(path, 'speed')
    return size <= target_size and speed <= target_speed


def get_target_score(path, category):
    with path.open() as f:
        for line in f.readlines():
            s = line.lower()
            if category in s and 'target' in s:
                match = re.search(r'\d+', s)
                if match:
                    return int(match.group())
    return math.inf


if __name__ == '__main__':
    main()
