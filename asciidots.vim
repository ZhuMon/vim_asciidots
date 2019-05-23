" Vim syntax file
" Language:     Asciidots
" Maintainer:   ZhuMon <richardlin0212@gmail.com>
" Last Change:  2019 May 24

" Quit when a (custom) syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

" Asciidots Keywords
syntax match Comment "\v\`\`.*$"

syntax match Number "\<\d\>"

syntax match turn "\vv"
syntax match turn "\v\>"
syntax match turn "\v\^"
syntax match turn "\v\<"
syntax match turn "\v\("
syntax match turn "\v\)"

syntax match reg "\v\@"
syntax match reg "\v\#"

syntax match copy "\v\*"
syntax match condition "\v\~"

syntax match print "\v\$"
syntax match print "\v\$_"
syntax match print "\v\$a"
syntax match print "\v\$_a"

syntax match warps  "\v[A-Z]"
syntax match warps  "\v[a-uw-z]"

syntax region dotsOP matchgroup=brackets start=/\v\{/  end=/\v}/ 
syntax region dotsOP matchgroup=brackets start=/\v\[/  end=/\v]/ 

syntax region dotsString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region dotsString start=/\v'/ skip=/\v\\./ end=/\v'/


" Highlight keyword
hi link dotsOP Operator
hi link turn Function
hi link reg Macro
hi link condition Operator
hi link copy Function
hi link print Function

hi warps term=bold ctermfg=11 guifg=Yellow
hi brackets term=bold ctermfg=Grey
hi link dotsString String

let b:current_syntax = "asciidots"
