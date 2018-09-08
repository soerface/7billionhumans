grammar SBHasm;

// PARSER
asm         : line+ ;
line        : (cmd|comment|label|sbhcomment|sbhcommentd)? (EOL) ;
cmd         : JUMP | step | pickup | cond | write | drop | calc | setval | take | give
                | nearest | END | pickup | listen | tell;
pickup      : PICKUP (direction | mem)? ;
step        : STEP (directions | mem) ;
directions  : direction (COMMA directions)? ;
label       : LABEL;

cond        : IF expressions COLON EOL line+ (sonst EOL line+)? ENDIF ;
expressions : expression ((AND | OR) EOL expression)* ;
expression  : (direction | items | number) COMPARE (direction | items | number) ;

comment     : COMMENT;
items       : (item | mem | MYITEM | NOTHING) ;
item        : ITEM ;
write       : WRITE (number | direction | mem) ;
calc        : mem EQUAL CALC (direction | mem | MYITEM | number) calcop (direction | mem | MYITEM | number);
setval      : mem EQUAL SET (direction | mem | MYITEM | number | NOTHING) ;
take        : TAKE (direction | mem) ;
give        : GIVE (direction | mem) ;
nearest     : mem EQUAL NEAREST item ;
drop        : DROP ;
sonst       : ELSE ;
sbhcomment  : GAMECOMMENT number;
sbhcommentd : GAMECOMMENTDEF number;
listen      : LISTEN message ;
tell        : TELL (everyone | direction) message ;
direction   : DIRECTION ;
mem         : MEM ;
number      : NUMBER ;
calcop      : CALC_OP ;
message     : MESSAGE ;
everyone    : EVERYONE ;



// LEXER

COMMENT        : '--' ~ [\r\n]* -> channel(HIDDEN) ;
WHITESPACE     : [ \t] -> channel(HIDDEN) ;
JUMP           : 'jump ' [a-z] ;
STEP           : 'step' ;
PICKUP         : 'pickup' ;
IF             : 'if' ;
ELSE           : 'else:' ;
ENDIF          : 'endif' ;
DROP           : 'drop' ;
WRITE          : 'write' ;
CALC           : 'calc' ;
SET            : 'set' ;
TAKE           : 'takefrom' ;
GIVE           : 'giveto' ;
NEAREST        : 'nearest' ;
MYITEM         : 'myitem' ;
END            : 'end' ;
NOTHING        : 'nothing' ;
ITEM           : 'printer' | 'datacube'  | 'hole' | 'worker' | 'shredder' | 'wall' | 'button';
MEM            : 'mem'[1-4] ;
COMPARE        : '==' | '<' | '>' | '!=' | '>=' | '<=';
CALC_OP        : '+' | '-' | '/' | 'x' ;
NUMBER         : [0-9]+ ;
DIRECTION      : 'n' | 'ne' | 'e' | 'se' | 's' | 'sw' | 'nw' | 'c' | 'w' ;
LABEL          : [a-z]{self.column < 5}?':' ;
EOL            : [\r\n]+ ;
COLON          : ':' ;
COMMA          : ',' ;
EQUAL          : '=' ;
AND            : 'and' ;
OR             : 'or' ;
LISTEN         : 'listenfor' ;
TELL           : 'tell' ;
EVERYONE       : 'everyone' ;
MESSAGE        : 'ready' | 'ok' | 'hi' | 'go' | 'coffeetime' | 'ugh' | 'morning' ;
GAMECOMMENT    : 'comment';
GAMECOMMENTDEF : 'DEFINE COMMENT' ;

