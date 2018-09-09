# Generated from SBHasm.g4 by ANTLR 4.7.1
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .SBHasmParser import SBHasmParser
else:
    from SBHasmParser import SBHasmParser

# This class defines a complete listener for a parse tree produced by SBHasmParser.
class SBHasmListener(ParseTreeListener):

    # Enter a parse tree produced by SBHasmParser#asm.
    def enterAsm(self, ctx:SBHasmParser.AsmContext):
        pass

    # Exit a parse tree produced by SBHasmParser#asm.
    def exitAsm(self, ctx:SBHasmParser.AsmContext):
        pass


    # Enter a parse tree produced by SBHasmParser#line.
    def enterLine(self, ctx:SBHasmParser.LineContext):
        pass

    # Exit a parse tree produced by SBHasmParser#line.
    def exitLine(self, ctx:SBHasmParser.LineContext):
        pass


    # Enter a parse tree produced by SBHasmParser#cmd.
    def enterCmd(self, ctx:SBHasmParser.CmdContext):
        pass

    # Exit a parse tree produced by SBHasmParser#cmd.
    def exitCmd(self, ctx:SBHasmParser.CmdContext):
        pass


    # Enter a parse tree produced by SBHasmParser#pickup.
    def enterPickup(self, ctx:SBHasmParser.PickupContext):
        pass

    # Exit a parse tree produced by SBHasmParser#pickup.
    def exitPickup(self, ctx:SBHasmParser.PickupContext):
        pass


    # Enter a parse tree produced by SBHasmParser#step.
    def enterStep(self, ctx:SBHasmParser.StepContext):
        pass

    # Exit a parse tree produced by SBHasmParser#step.
    def exitStep(self, ctx:SBHasmParser.StepContext):
        pass


    # Enter a parse tree produced by SBHasmParser#directions.
    def enterDirections(self, ctx:SBHasmParser.DirectionsContext):
        pass

    # Exit a parse tree produced by SBHasmParser#directions.
    def exitDirections(self, ctx:SBHasmParser.DirectionsContext):
        pass


    # Enter a parse tree produced by SBHasmParser#label.
    def enterLabel(self, ctx:SBHasmParser.LabelContext):
        pass

    # Exit a parse tree produced by SBHasmParser#label.
    def exitLabel(self, ctx:SBHasmParser.LabelContext):
        pass


    # Enter a parse tree produced by SBHasmParser#cond.
    def enterCond(self, ctx:SBHasmParser.CondContext):
        pass

    # Exit a parse tree produced by SBHasmParser#cond.
    def exitCond(self, ctx:SBHasmParser.CondContext):
        pass


    # Enter a parse tree produced by SBHasmParser#expressions.
    def enterExpressions(self, ctx:SBHasmParser.ExpressionsContext):
        pass

    # Exit a parse tree produced by SBHasmParser#expressions.
    def exitExpressions(self, ctx:SBHasmParser.ExpressionsContext):
        pass


    # Enter a parse tree produced by SBHasmParser#expression.
    def enterExpression(self, ctx:SBHasmParser.ExpressionContext):
        pass

    # Exit a parse tree produced by SBHasmParser#expression.
    def exitExpression(self, ctx:SBHasmParser.ExpressionContext):
        pass


    # Enter a parse tree produced by SBHasmParser#comment.
    def enterComment(self, ctx:SBHasmParser.CommentContext):
        pass

    # Exit a parse tree produced by SBHasmParser#comment.
    def exitComment(self, ctx:SBHasmParser.CommentContext):
        pass


    # Enter a parse tree produced by SBHasmParser#items.
    def enterItems(self, ctx:SBHasmParser.ItemsContext):
        pass

    # Exit a parse tree produced by SBHasmParser#items.
    def exitItems(self, ctx:SBHasmParser.ItemsContext):
        pass


    # Enter a parse tree produced by SBHasmParser#item.
    def enterItem(self, ctx:SBHasmParser.ItemContext):
        pass

    # Exit a parse tree produced by SBHasmParser#item.
    def exitItem(self, ctx:SBHasmParser.ItemContext):
        pass


    # Enter a parse tree produced by SBHasmParser#write.
    def enterWrite(self, ctx:SBHasmParser.WriteContext):
        pass

    # Exit a parse tree produced by SBHasmParser#write.
    def exitWrite(self, ctx:SBHasmParser.WriteContext):
        pass


    # Enter a parse tree produced by SBHasmParser#calc.
    def enterCalc(self, ctx:SBHasmParser.CalcContext):
        pass

    # Exit a parse tree produced by SBHasmParser#calc.
    def exitCalc(self, ctx:SBHasmParser.CalcContext):
        pass


    # Enter a parse tree produced by SBHasmParser#setval.
    def enterSetval(self, ctx:SBHasmParser.SetvalContext):
        pass

    # Exit a parse tree produced by SBHasmParser#setval.
    def exitSetval(self, ctx:SBHasmParser.SetvalContext):
        pass


    # Enter a parse tree produced by SBHasmParser#take.
    def enterTake(self, ctx:SBHasmParser.TakeContext):
        pass

    # Exit a parse tree produced by SBHasmParser#take.
    def exitTake(self, ctx:SBHasmParser.TakeContext):
        pass


    # Enter a parse tree produced by SBHasmParser#give.
    def enterGive(self, ctx:SBHasmParser.GiveContext):
        pass

    # Exit a parse tree produced by SBHasmParser#give.
    def exitGive(self, ctx:SBHasmParser.GiveContext):
        pass


    # Enter a parse tree produced by SBHasmParser#nearest.
    def enterNearest(self, ctx:SBHasmParser.NearestContext):
        pass

    # Exit a parse tree produced by SBHasmParser#nearest.
    def exitNearest(self, ctx:SBHasmParser.NearestContext):
        pass


    # Enter a parse tree produced by SBHasmParser#drop.
    def enterDrop(self, ctx:SBHasmParser.DropContext):
        pass

    # Exit a parse tree produced by SBHasmParser#drop.
    def exitDrop(self, ctx:SBHasmParser.DropContext):
        pass


    # Enter a parse tree produced by SBHasmParser#sonst.
    def enterSonst(self, ctx:SBHasmParser.SonstContext):
        pass

    # Exit a parse tree produced by SBHasmParser#sonst.
    def exitSonst(self, ctx:SBHasmParser.SonstContext):
        pass


    # Enter a parse tree produced by SBHasmParser#sbhcomment.
    def enterSbhcomment(self, ctx:SBHasmParser.SbhcommentContext):
        pass

    # Exit a parse tree produced by SBHasmParser#sbhcomment.
    def exitSbhcomment(self, ctx:SBHasmParser.SbhcommentContext):
        pass


    # Enter a parse tree produced by SBHasmParser#sbhcommentd.
    def enterSbhcommentd(self, ctx:SBHasmParser.SbhcommentdContext):
        pass

    # Exit a parse tree produced by SBHasmParser#sbhcommentd.
    def exitSbhcommentd(self, ctx:SBHasmParser.SbhcommentdContext):
        pass


    # Enter a parse tree produced by SBHasmParser#listen.
    def enterListen(self, ctx:SBHasmParser.ListenContext):
        pass

    # Exit a parse tree produced by SBHasmParser#listen.
    def exitListen(self, ctx:SBHasmParser.ListenContext):
        pass


    # Enter a parse tree produced by SBHasmParser#tell.
    def enterTell(self, ctx:SBHasmParser.TellContext):
        pass

    # Exit a parse tree produced by SBHasmParser#tell.
    def exitTell(self, ctx:SBHasmParser.TellContext):
        pass


    # Enter a parse tree produced by SBHasmParser#direction.
    def enterDirection(self, ctx:SBHasmParser.DirectionContext):
        pass

    # Exit a parse tree produced by SBHasmParser#direction.
    def exitDirection(self, ctx:SBHasmParser.DirectionContext):
        pass


    # Enter a parse tree produced by SBHasmParser#mem.
    def enterMem(self, ctx:SBHasmParser.MemContext):
        pass

    # Exit a parse tree produced by SBHasmParser#mem.
    def exitMem(self, ctx:SBHasmParser.MemContext):
        pass


    # Enter a parse tree produced by SBHasmParser#number.
    def enterNumber(self, ctx:SBHasmParser.NumberContext):
        pass

    # Exit a parse tree produced by SBHasmParser#number.
    def exitNumber(self, ctx:SBHasmParser.NumberContext):
        pass


    # Enter a parse tree produced by SBHasmParser#calcop.
    def enterCalcop(self, ctx:SBHasmParser.CalcopContext):
        pass

    # Exit a parse tree produced by SBHasmParser#calcop.
    def exitCalcop(self, ctx:SBHasmParser.CalcopContext):
        pass


    # Enter a parse tree produced by SBHasmParser#message.
    def enterMessage(self, ctx:SBHasmParser.MessageContext):
        pass

    # Exit a parse tree produced by SBHasmParser#message.
    def exitMessage(self, ctx:SBHasmParser.MessageContext):
        pass


    # Enter a parse tree produced by SBHasmParser#everyone.
    def enterEveryone(self, ctx:SBHasmParser.EveryoneContext):
        pass

    # Exit a parse tree produced by SBHasmParser#everyone.
    def exitEveryone(self, ctx:SBHasmParser.EveryoneContext):
        pass


    # Enter a parse tree produced by SBHasmParser#foreachdir.
    def enterForeachdir(self, ctx:SBHasmParser.ForeachdirContext):
        pass

    # Exit a parse tree produced by SBHasmParser#foreachdir.
    def exitForeachdir(self, ctx:SBHasmParser.ForeachdirContext):
        pass


