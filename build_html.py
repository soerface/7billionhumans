#!/usr/bin/env python3.6

from jinja2 import Environment, FileSystemLoader, select_autoescape
from pathlib import Path
import shutil

OUTPUT_DIR = Path('_build')
STATIC_DIR = Path('static')


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


def get_years():
    return [
        {
            'year': 5,
            'name': 'An Important Decision',
            'target_size': 5,
            'size': 5,
            'target_speed': 3,
            'speed': 3,
            'size_and_speed': False,
        }
    ]


if __name__ == '__main__':
    main()
