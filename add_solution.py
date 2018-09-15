#!/usr/bin/env python3.6
import json
from pathlib import Path
import subprocess
import re
import math
from tkinter import Tk
from typing import Tuple, List

from antlr.SevenBillionHumansParser import SevenBillionHumansParser

BASE_PATH = Path('./solutions')


def get_sourcecode():
    tk = Tk()
    tk.withdraw()
    data = tk.clipboard_get()
    tk.destroy()
    return data.split('\n')


def read_integer(msg):
    level_id = None
    while not level_id:
        try:
            n = int(input(msg))
        except ValueError:
            print('Invalid number')
        return n


def add_scores(source, size, speed, author=None, speed_list: List[int]=None, partial_success: Tuple[int, int]=None):
    source.insert(3, '')
    if partial_success:
        source.insert(3, f'-- Success Rate: {partial_success[0]}/{partial_success[1]}')
    if speed_list:
        speed_tests = ', '.join(map(str, speed_list))
        source.insert(3, f'-- Speed Tests: {speed_tests}')
    source.insert(3, f'-- Speed: {speed}')
    source.insert(3, f'-- Size: {size}')
    if author:
        source.insert(3, f'-- Author: {author}')


def get_details(source):
    n, name = re.search('(\d{1,2}): (.+) --', source[1]).groups()
    return int(n), name


def get_target_scores(year):
    with open('challenges.json') as f:
        challenges = json.load(f)
    scores = challenges[str(year)]
    return scores['size_challenge'], scores['speed_challenge'], scores['shortest_known'], scores['fastest_known']


def get_score(path, category):
    with path.open() as f:
        for line in f.readlines():
            s = line.lower()
            if category in s and 'target' not in s:
                match = re.search(r'\d+', s)
                if match:
                    return int(match.group())
    return math.inf


def save(source, dirname, size, speed):

    path = dirname / f'size-{size}_speed-{speed}.asm'

    if path.exists():
        print('Already exists, not overwriting')
        return
    if not dirname.exists():
        dirname.mkdir()

    other_scores = [(get_score(path, 'size'), get_score(path, 'speed'), path) for path in dirname.glob('*.asm')]

    if any((other_size <= size and other_speed <= speed for other_size, other_speed, _ in other_scores)):
        if input('Your solution is dominated by another solution. Do you want to add it anyway? [y/N] ').lower() != 'y':
            print('not saving')
            return

    with path.open('w', newline='\n') as f:
        f.write('\n'.join(source))
    subprocess.call(['git', 'add', str(path)])
    print(f'Saved:                                      {str(path):>40}')


def add_solution(author):
    speed = read_integer('Speed: ')

    partial_success=None
    if input('Were there failing solutions (red bars instead of green ones)? [y/N] ').lower() == 'y':
        partial_success = (25-read_integer('How many red bars were there? '), 25)

    speed_list = None
    if input('Were there different times in different measurements? [y/N] ').lower() == 'y':
        speed_list = [speed]

    if partial_success or speed_list:
        while input('Do you want to repeat the test to improve the results? [y/N] ').lower() == 'y':
            if speed_list:
                speed_list += [read_integer('Speed: ')]
            if partial_success:
                partial_success = (partial_success[0]+25-read_integer('How many red bars? '), partial_success[1]+25)

    if speed_list:
        speed = round(sum(speed_list)/len(speed_list))

    source = None
    while not source:
        input('Copy the sourcecode to the clipboard and press enter\n')
        source = get_sourcecode()

    size = SevenBillionHumansParser(source='\n'.join(source)).cmd_size
    add_scores(source, size, speed, author, speed_list, partial_success)

    level_id, level_name = get_details(source)
    print()
    dirname = f'{level_id:02} - {level_name}'

    save(source, BASE_PATH / dirname, size, speed)
    print()

    return input('Add another source? [y/N] ').lower() == 'y'


if __name__ == '__main__':
    author = input('GitHub username (will be added to your code): ')
    while add_solution(author):
        pass
