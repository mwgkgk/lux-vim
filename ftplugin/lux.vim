if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

setlocal lisp
setlocal comments=s1:#(,m1:-,ex:)#,:##
setlocal commentstring=##%s

setlocal iskeyword+=43,?,:,!,$,~,.,',;,35,>,<,@-@,124,`,&,^
