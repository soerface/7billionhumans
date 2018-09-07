#!/bin/bash

if [ -z "$1" ]; then
	cat
else
	cat "$1"
fi | grep -vP "^\t*(--.*|\w{1,3}:|(end|comment).+|.*(and|or))?$" | grep -v "^$" | sed '/^\DEFINE COMMENT.*/,$ d' | wc -l

# test with
# for f in */*/*.asm; do echo $f; if [ $(./loc.sh "$f") != $(grep "^-- Size:" "$f" | cut -c10-) ] ; then echo "error at $f"; fi; done

