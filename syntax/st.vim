" Vim syntax file
" Language: Structured Text
" Maintainer: Georgy Komarov <jubnzv@gmail.com>
" Latest Revision: 16 May 2018

if exists("b:current_syntax")
  finish
endif

" IEC syntax is case-insenstitive
syntax case ignore

" POU declaration
syn keyword POUKeywords FUNCTION FUNCTION_BLOCK PROGRAM
syn keyword POUKeywords END_FUNCTION END_FUNCTION_BLOCK END_PROGRAM
syn keyword POUKeywords EN ENO F_EDGE R_EDGE

" Type declaration keywords
syn keyword TypeKeywords TYPE STRUCT
syn keyword TypeKeywords END_TYPE END_STRUCT
syn keyword TypeKeywords ARRAY OF T D TIME_OF_DAY DATE_AND_TIME

" Configuration
syn keyword IECConf         CONFIGURATION RESOURCE VAR_ACCESS VAR_CONFIG VAR_GLOBAL
syn keyword IECConf         END_CONFIGURATION END_RESOURCE END_VAR
syn keyword IECConf         WITH READ_ONLY READ_WRITE
syn keyword IECConfTask     TASK
syn keyword IECConfTaskOpt  INTERVAL PRIORITY SINGLE
syn keyword IECConf         ON nextgroup=IECConfTargetName skipwhite
syn match IECConfTargetName '\i\+' contained

" Variable declaration keywords
syn keyword VariableKeywords VAR VAR_INPUT VAR_OUTPUT VAR_IN_OUT VAR_TEMP VAR_EXTERNAL
syn keyword VariableKeywords END_VAR
syn keyword VariableKeywords AT CONSTANT RETAIN NON_RETAIN

" IEC data types
syn keyword IECTypeBool BOOL
syn keyword IECTypeInteger SINT INT DINT LINT USINT UINT UDINT ULINT BYTE WORD DWORD LWORD
syn keyword IECTypeReal REAL LREAL
syn keyword IECTypeDate TIME DATE DT TOD

" Duration literals
syn region  IECDuration start="#\(\-\)\=[0-9]\{1,2}\(\-[0-9]\{1,2}\)\{-\}[mshd(ms)]" end="[ ,]"he=e-1 contains=IECTypeDate

" Structured Text definitions
syn keyword STBoolean TRUE FALSE
syn keyword STOperator NOT MOD AND XOR OR
syn keyword STConditional IF ELSIF ELSE CASE END_IF END_CASE THEN OF TO
syn keyword STLoop FOR WHILE REPEAT END_FOR END_WHILE END_REPEAT BY DO DO UNTIL
syn keyword STFunction EXIT RETURN

" Comments
syn region STComment start="(\*" end="\*)"

" Highlighting
hi link POUKeywords             Function
hi link TypeKeywords            Type

hi link IECConf                 Special
hi link IECConfTask             Function
hi link IECConfTaskOpt          Keyword
hi link IECConfTargetName       Identifier

hi link VariableKeywords        Keyword
hi link IECTypeBool             Type
hi link IECTypeInteger          Type
hi link IECTypeReal             Type
hi link IECTypeDate             Type
hi link STBoolean               Boolean
hi link STOperator              Operator
hi link STConditional           Conditional
hi link STLoop                  Repeat
hi link STFunction              Function
hi link STComment               Comment
hi link IECDuration             String

let b:current_syntax = "st"
