import unittest
from antlr import SevenBillionHumans
from pathlib import Path

from build_html import get_solution_details


class TestAntlrParser(unittest.TestCase):
    def test_command_size(self):
        for path in Path('solutions').glob('**/*.asm'):
            expected = get_solution_details(path)['size']
            print(path)
            s = SevenBillionHumans.SevenBillionHumans(path)
            self.assertEqual(s.cmd_size, expected)


if __name__ == '__main__':
    unittest.main()
