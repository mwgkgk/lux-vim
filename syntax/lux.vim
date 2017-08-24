" Vim syntax file
" Language:     Lux
" Maintainer:   mwgkgkgkgkgkgkgkgkgk...
" URL:          http://github.com/mwgkgk/lux-vim.git

if exists("b:current_syntax")
  finish
endif

syn keyword luxBoolean true false
syn match luxInt "\<-\=[0-9_]\+\>"
syn match luxNat "\<+[0-9_]\+\>"
syn match luxReal "\<-\=[0-9_]\+\.[0-9_]\+\>"
syn match luxFrac "\<\.[0-9_]\+\>"
syn match luxChar /\k\@<!#"\([a-zA-Z0-9]\|\\u[0-9a-fA-F]\{4}\|\\[a-z]\)"\k\@!/
syn region luxText start=/"/ skip=/\\"/ end=/"/ contains=@Spell
syn match luxVariant "\k\@<!#\k\+\k\@!"

syn match luxType "\<[A-Z][a-zA-Z0-9_'><]*\>"

syn keyword luxTodo contained TODO FIXME XXX NOTE
syn match luxLineComment "##.*$" contains=luxTodo

" Keywords taken from original lux-mode.el:
syn keyword luxKeyword ;module:
syn keyword luxKeyword def: type: macro: syntax: program:
syn keyword luxKeyword sig: struct: context: template:
syn keyword luxKeyword class: interface:
syn keyword luxKeyword poly: derived:
syn keyword luxKeyword actor: message: on:
syn keyword luxKeyword exception:
syn keyword luxKeyword word:
syn keyword luxKeyword opaque:
syn keyword luxKeyword unit: scale:
syn keyword luxKeyword function case : :! :!! undefined ident-for
syn keyword luxKeyword and or
syn keyword luxKeyword char
syn keyword luxKeyword exec let with-expansions if cond do be open loop recur comment list list& io vector tree
syn keyword luxKeyword get@ set@ update@ <| <|. _$ $_ ~ ~@ ~' :: ::: default
syn keyword luxKeyword & -> All Ex Rec host $ type
syn keyword luxKeyword ^ ^or ^slots ^multi ^~ ^@ ^template ^open ^|> ^stream& ^regex
syn keyword luxKeyword bin oct hex
syn keyword luxKeyword pre post
syn keyword luxKeyword sig struct derive
syn keyword luxKeyword infix
syn keyword luxKeyword format
syn keyword luxKeyword ` `' ' do-template
syn keyword luxKeyword object jvm-import do-to with-open synchronized class-for
syn keyword luxKeyword doc
syn keyword luxKeyword regex

" Keywords starting with | don't play nice despite being a part of iskeyword:
syn match luxKeyword "\<|\>"
syn match luxKeyword "\<|>\>"
syn match luxKeyword "\<|>\.\>"

" More keywords:
syn keyword luxKeyword log! lambda

highlight def link luxBoolean Boolean
highlight def link luxInt Number
highlight def link luxNat Number
highlight def link luxReal Float
highlight def link luxFrac Float
highlight def link luxChar Character
highlight def link luxText String
highlight def link luxVariant Identifier

highlight def link luxType Type

highlight def link luxLineComment Comment
highlight def link luxTodo Todo

highlight def link luxKeyword Keyword

let b:current_syntax = "lux"
