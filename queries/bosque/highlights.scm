(identifier) @variable
(this) @variable.builtin
; "_" @variable.builtin

(true_lit) @boolean
(false_lit) @boolean

(namespace
  namespace_id: (identifier) @module)

(entity_id) @constant
(enum_member) @constant
(none_lit) @constant

(function_call) @function.call

(function_signature
  function_id: (entity_id) @function)

"+" @operator
"-" @operator
"*" @operator
"//" @operator
"%" @operator
"||" @operator
"&&" @operator
"|" @operator
"^" @operator
"&" @operator
"===" @operator
"!==" @operator
"==" @operator
"!=" @operator
">" @operator
">=" @operator
"<=" @operator
"==>" @operator
"<==>" @operator
"<" @operator
"<<" @operator
">>" @operator

"(" @punctuation.bracket
")" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

"(|" @punctuation.special
"|)" @punctuation.special

"$" @punctuation.delimiter
"." @punctuation.delimiter
";" @punctuation.delimiter
"=>" @punctuation.delimiter
"->" @punctuation.delimiter

(string) @string
(cstring) @string
(string_regex) @string.regexp

(num_whole) @number
(num_float) @number.float

"fn" @statement
"if" @statement
"match" @statement
"let" @statement
"switch" @statement

"return" @keyword.return

; "recursive?" @keyword
; "recursive" @keyword
; "action" @keyword
; "_debug" @keyword
; "abort" @keyword
"assert" @keyword.conditional
; "bsqon" @keyword
; "$bsqon" @keyword
; "do" @keyword
; "elif" @keyword
"else" @keyword.conditional
; "env" @keyword
; "fail" @keyword
; "implements" @keyword
; "ok" @keyword
; "option" @keyword
; "pred" @keyword
"ref" @keyword.modifier
; "result" @keyword
"some" @keyword
; "self" @keyword
; "then" @keyword
"type" @keyword
"var" @keyword.modifier
; "yield" @keyword
; "continue" @keyword
; "break" @keyword
; "debug" @keyword
; "release" @keyword
; "safety" @keyword
; "spec" @keyword
; "test" @keyword
; "api" @keyword
"as" @keyword
"concept" @keyword
"const" @keyword.modifier
"declare" @keyword
"enum" @keyword
"entity" @keyword
"ensures" @keyword
"field" @keyword
"function" @keyword
"invariant" @keyword
"method" @keyword
"namespace" @keyword
"of" @keyword
"provides" @keyword
"requires" @keyword
; "in" @keyword
; "task" @keyword
"datatype" @keyword
"using" @keyword
; "validate" @keyword
; "when" @keyword
; "event" @keyword
; "status" @keyword
; "resource" @keyword
; "predicate" @keyword
; "softcheck" @keyword
; "errtest" @keyword
; "chktest" @keyword
; "example" @keyword
; "operator" @keyword
; "variant" @keyword
; "private" @keyword
; "internal" @keyword
; "hidden" @keyword
"public" @keyword
; "sensitive" @keyword
; "export" @keyword
; "deterministic" @keyword
; "idempotent" @keyword
; "abstract" @keyword
; "override" @keyword
; "virtual" @keyword

