from SBHasmListener import SBHasmListener
from SBHasmParser import SBHasmParser


class SBHRenderListener(SBHasmListener):

    def __init__(self, parser):
        super(SBHRenderListener, self).__init__()
        self.parser = parser
        self.cmd_cnt = 0
        self.html = ""
        self.root = etree.Element('root')
        self.current = self.root
        self.current_item = None
        self.level = 1
        self.dict = []
        self.current_dict = None





    def enterStep(self, ctx):
        step = etree.Element('step')
        self.current_item = step
        self.current.append(step)

    def enterPickup(self, ctx):
        step = etree.Element('pickup')
        self.current_item = step
        self.current.append(step)

        children_ = ctx.children[1]
        if isinstance(children_, SBHasmParser.MemContext):
            self.dict.append(Pickup(Mem(str(children_.children[0]))))
        elif isinstance(children_, SBHasmParser.DirectionContext):
            self.dict.append(Pickup(Dir(str(children_.children[0]))))

    def enterCalc(self, ctx):
        step = etree.Element('calc')
        self.current_item = step
        self.current.append(step)

    def enterSetval(self, ctx):
        step = etree.Element('set')
        self.current_item = step
        self.current.append(step)



    def exitCmd(self, ctx):
        pass

    def enterCond(self, ctx):
        condtag = etree.Element('if')
        self.current.append(condtag)
        self.current_item = condtag
        self.current = condtag

    def enterJump(self, ctx):
        self.current.append(etree.Element('jump'))
        pass

    def enterLabel(self, ctx):
        t = etree.Element('label')
        t.text = ctx.children[0].symbol.text
        self.current.append(t)
        pass

    def enterNumber(self, ctx):
        t = etree.Element('number')
        t.text = ctx.children[0].symbol.text
        self.current.append(t)

    def enterCmd(self, ctx):
        self.cmd_cnt += 1



    def enterSonst(self, ctx):
        condtag = etree.Element('else')
        self.current.append(condtag)
        self.current = condtag
        self.cmd_cnt += 1

    def exitCond(self, ctx):
        self.current = self.current.getparent()
        self.current_item = None

    def exitSonst(self, ctx):
        self.current = self.current.getparent()

    def enterDirection(self, ctx):
        if self.current_item is None:
            sys.stdout.flush()
        self.current_item.append(etree.Element('dir'))

    def enterMem(self, ctx):
        t = etree.Element('mem')
        t.text = ctx.children[0].symbol.text
        if self.current_item is None:
            self.current.append(t)
            self.current_item = t
        else:
            self.current_item.append(t)




    def enterEveryRule(self, ctx):
        #print("{}<{}>\n".format("  "*self.level, ctx.parser.ruleNames[ctx.getRuleIndex()]))
        self.level += 1

    def exitEveryRule(self, ctx):
        self.level -= 1
        #print("{}</{}>\n".format("  " * self.level, ctx.parser.ruleNames[ctx.getRuleIndex()]))

    def visitTerminal(self, node):
        #print(str(node.symbol))
        pass