"""
    1. Backup your profiles.bin in $HOME/.local/share/Tomorrow\ Corporation/7\ Billion\ Humans/
    2. Start 7BillionHumans and goto the elevator.
    3. Run gdb -p `pgrep -f "./7BillionHumans.bin.x86_64"`
    4. Type "source /path/to/gdb.py" in the gdb command prompt
    5. After each level click on "continue to elevator'

"""


import traceback

import gdb

#from antlr.SevenBillionHumansParser import SevenBillionHumansParser
from pathlib import Path
import subprocess
import re
import math
import json
from typing import Tuple as MyTuple
from typing import List as MyList


state = 0
lvl = 0
source = ""


def evlevator_actions():
    global lvl

    if lvl < 60:
        game.enabled = True
        gdb.execute("call (void)ConExecCommandLine(\"level {}\")".format(lvl))
        lvl += 1

    gdb.execute("continue")


def game_actions():
    global source
    reset.enabled = True
    reset.cnt = 24
    gdb.execute("set $clip = (void *) ElevatorGetClipboard2()")
    gdb.execute("set $list = (char *) malloc (0x100000)")
    gdb.execute("call (void)GenerateTextFromClipboard($clip, $list, 0x100000)")
    source = gdb.execute("printf \"%s\", $list", to_string=True)
    #source = source.strip('\r')
    source = source.split('\n')
    gdb.execute("call (void)free($list)")
    gdb.execute("call (void)TriggerEndOfLevelScreen(1)")
    gdb.execute("continue")


def end_of_level():
    global source
    try:
        #avg_speed = gdb.execute("print (float)GetAvgRunSpeed()", to_string=True)
        avg_speed = gdb.execute("printf \"%f\", (float)GetAvgRunSpeed()", to_string=True)
        fail_cnt = gdb.execute("printf \"%d\", (int)CountRunsFailed()", to_string=True)
        #partial = (fail_cnt, 25)
        ele.enabled = True
        print(">> source = {}".format(source))
        print(">> avg_speed = {}".format(avg_speed))
        print(">> fail_cnt = {}".format(fail_cnt))

        gdb.execute("continue")
    except Exception as e:
        error = traceback.format_exc()
        print(error)


class ResetBP(gdb.Breakpoint):
    def __init__(self):
        gdb.Breakpoint.__init__(self, "ResetLevel")
        self.cnt = 24

    def stop(self):
        if self.cnt > 0:
            self.cnt -= 1
            return False

        self.enabled = False
        gdb.post_event(end_of_level)
        return True


class GameBP(gdb.Breakpoint):
    def __init__(self):
        gdb.Breakpoint.__init__(self, "TestTick")

    def stop(self):

        self.enabled = False
        gdb.post_event(game_actions)

        return True


class ElevatorBP(gdb.Breakpoint):
    def __init__(self):
        gdb.Breakpoint.__init__(self, "ElevatorTick")

    def stop(self):

        self.enabled = False
        gdb.post_event(evlevator_actions)

        return True


reset = ResetBP()
reset.enabled = False

game = GameBP()
game.enabled = False

ele = ElevatorBP()
gdb.execute("continue")
