#!/bin/bash

SB_EVAL2=$HOME/work/eval2

SBCL=${SBCL:-sbcl}
SBCL_OPT="--disable-debugger --userinit /dev/null"

make clean optimize-files
$SBCL ${SBCL_OPT} --load $SB_EVAL2/sb-eval2.lisp --load sysdep/setup-sb-eval2.lisp --load do-interpret-script.lisp --eval '(quit)'

