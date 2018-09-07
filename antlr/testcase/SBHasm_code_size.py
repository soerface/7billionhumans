import os
import unittest
from antlr import SevenBillionHumans


class TestAntlrParser(unittest.TestCase):
    def test_command_size(self):
        for root, dirs, files in os.walk("../solutions/", topdown=False):
            for dir in dirs:
                for name in ["size.asm", "speed.asm", "size+speed.asm"]:
                    expected = 0
                    try:
                        filename = os.path.join(root, dir, name)
                        print(filename)
                        with open(filename) as f:
                            for line in f:
                                if line.startswith("-- Size:"):
                                    expected = int(line[8:])
                                    break
                    except FileNotFoundError:
                        continue
                    print(filename)
                    s = SevenBillionHumans.SevenBillionHumans(filename)
                    self.assertEqual(s.cmd_size, expected)






if __name__ == '__main__':
    unittest.main()
