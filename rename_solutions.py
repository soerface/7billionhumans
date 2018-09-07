from pathlib import Path
# import shutil
import subprocess

from build_html import get_solution_details

if __name__ == '__main__':
    for path in Path('solutions').glob('**/*.asm'):
        details = get_solution_details(path)
        size = details['size']
        speed = details['speed']
        dst = path.parent / f'size-{size}_speed-{speed}.asm'
        # shutil.move(path, dst)
        subprocess.call(['git', 'mv', path, dst])
        subprocess.call(['git', 'rm', path])
