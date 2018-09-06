#!/bin/bash

grep -vP "^\t*(--.*|\w{1,3}:|(end|comment).+|.*(and|or))?$" "$1" | grep -v "^$" | sed '/^\DEFINE COMMENT.*/,$ d' | wc -l

# test with
# for f in */*/*.asm; do echo $f; if [ $(./loc.sh "$f") != $(grep "^-- Size:" "$f" | cut -c10-) ] ; then echo "error at $f"; fi; done

