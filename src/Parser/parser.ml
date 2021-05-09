type token =
  | TRUE
  | FALSE
  | AND
  | OR
  | NOT
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | MOD
  | EQ
  | LEQ
  | LT
  | GEQ
  | GT
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | ASSG
  | COMP
  | SKIP
  | IF
  | ELSE
  | WHILE
  | FOR
  | PRINT
  | INPUT
  | VAR of (string)
  | NUMBER of (int)
  | EOL
  | INT
  | BOOL

open Parsing;;
let _ = parse_error;;
# 2 "src/Parser/parser.mly"
open Ast
# 41 "src/Parser/parser.ml"
let yytransl_const = [|
  257 (* TRUE *);
  258 (* FALSE *);
  259 (* AND *);
  260 (* OR *);
  261 (* NOT *);
  262 (* PLUS *);
  263 (* MINUS *);
  264 (* TIMES *);
  265 (* DIV *);
  266 (* MOD *);
  267 (* EQ *);
  268 (* LEQ *);
  269 (* LT *);
  270 (* GEQ *);
  271 (* GT *);
  272 (* LPAREN *);
  273 (* RPAREN *);
  274 (* LBRACE *);
  275 (* RBRACE *);
  276 (* ASSG *);
  277 (* COMP *);
  278 (* SKIP *);
  279 (* IF *);
  280 (* ELSE *);
  281 (* WHILE *);
  282 (* FOR *);
  283 (* PRINT *);
  284 (* INPUT *);
  287 (* EOL *);
  288 (* INT *);
  289 (* BOOL *);
    0|]

let yytransl_block = [|
  285 (* VAR *);
  286 (* NUMBER *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\004\000\
\004\000\004\000\004\000\004\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\000\000"

let yylen = "\002\000\
\002\000\003\000\002\000\002\000\001\000\003\000\002\000\005\000\
\005\000\007\000\007\000\003\000\001\000\002\000\002\000\003\000\
\005\000\005\000\007\000\007\000\001\000\001\000\003\000\003\000\
\003\000\003\000\003\000\003\000\002\000\003\000\003\000\003\000\
\003\000\003\000\003\000\002\000\003\000\003\000\001\000\001\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\013\000\000\000\000\000\000\000\000\000\
\000\000\000\000\041\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\014\000\015\000\001\000\000\000\000\000\
\003\000\016\000\039\000\040\000\000\000\000\000\000\000\021\000\
\022\000\000\000\000\000\000\000\000\000\002\000\006\000\036\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\023\000\037\000\038\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\008\000\017\000\009\000\018\000\000\000\000\000\010\000\019\000\
\011\000\020\000"

let yydgoto = "\002\000\
\011\000\012\000\013\000\014\000\034\000"

let yysindex = "\007\000\
\192\255\000\000\192\255\000\000\251\254\255\254\035\255\036\255\
\029\255\055\255\000\000\026\255\039\255\180\255\046\255\037\255\
\037\255\037\255\037\255\000\000\000\000\000\000\192\255\192\255\
\000\000\000\000\000\000\000\000\037\255\037\255\037\255\000\000\
\000\000\223\255\238\255\253\255\027\000\000\000\000\000\000\000\
\049\000\012\000\037\255\037\255\037\255\037\255\037\255\037\255\
\037\255\037\255\037\255\037\255\037\255\037\255\192\255\192\255\
\192\255\000\000\000\000\000\000\049\000\049\000\018\255\018\255\
\049\000\041\000\041\000\041\000\041\000\041\000\063\255\064\255\
\000\000\000\000\000\000\000\000\192\255\192\255\000\000\000\000\
\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\028\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\030\255\117\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\241\254\000\000\000\000\000\000\
\110\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\132\255\154\255\062\255\088\255\
\176\255\242\254\031\255\061\255\087\255\109\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\040\000\219\255\224\255\239\255"

let yytablesize = 314
let yytable = "\035\000\
\036\000\037\000\030\000\012\000\030\000\012\000\030\000\001\000\
\012\000\030\000\016\000\040\000\041\000\042\000\017\000\012\000\
\030\000\071\000\073\000\075\000\043\000\044\000\072\000\074\000\
\076\000\059\000\060\000\061\000\062\000\063\000\064\000\065\000\
\066\000\067\000\068\000\069\000\070\000\027\000\028\000\079\000\
\081\000\029\000\015\000\030\000\080\000\082\000\005\000\031\000\
\004\000\031\000\018\000\031\000\031\000\025\000\031\000\019\000\
\022\000\020\000\005\000\023\000\004\000\031\000\038\000\039\000\
\026\000\032\000\033\000\026\000\026\000\026\000\026\000\026\000\
\026\000\026\000\026\000\026\000\026\000\032\000\026\000\032\000\
\026\000\032\000\026\000\021\000\032\000\026\000\077\000\078\000\
\000\000\000\000\000\000\032\000\026\000\027\000\027\000\027\000\
\027\000\027\000\027\000\027\000\027\000\027\000\027\000\033\000\
\027\000\033\000\027\000\033\000\027\000\000\000\033\000\027\000\
\000\000\000\000\000\000\029\000\029\000\033\000\027\000\029\000\
\029\000\029\000\029\000\029\000\029\000\034\000\029\000\034\000\
\029\000\034\000\029\000\000\000\034\000\029\000\000\000\007\000\
\000\000\024\000\024\000\034\000\029\000\024\000\024\000\024\000\
\024\000\024\000\024\000\007\000\024\000\000\000\024\000\000\000\
\024\000\000\000\000\000\024\000\000\000\000\000\000\000\025\000\
\025\000\000\000\024\000\025\000\025\000\025\000\025\000\025\000\
\025\000\000\000\025\000\000\000\025\000\000\000\025\000\000\000\
\000\000\025\000\000\000\000\000\000\000\028\000\028\000\000\000\
\025\000\028\000\028\000\028\000\028\000\028\000\028\000\000\000\
\028\000\000\000\028\000\000\000\028\000\003\000\000\000\028\000\
\024\000\004\000\005\000\000\000\006\000\007\000\028\000\000\000\
\008\000\003\000\000\000\009\000\010\000\004\000\005\000\000\000\
\006\000\007\000\000\000\000\000\008\000\000\000\000\000\009\000\
\010\000\043\000\044\000\000\000\045\000\046\000\047\000\048\000\
\049\000\050\000\051\000\052\000\053\000\054\000\000\000\055\000\
\043\000\044\000\000\000\045\000\046\000\047\000\048\000\049\000\
\050\000\051\000\052\000\053\000\054\000\000\000\056\000\043\000\
\044\000\000\000\045\000\046\000\047\000\048\000\049\000\050\000\
\051\000\052\000\053\000\054\000\000\000\057\000\043\000\044\000\
\000\000\045\000\046\000\047\000\048\000\049\000\050\000\051\000\
\052\000\053\000\054\000\000\000\058\000\043\000\044\000\000\000\
\045\000\046\000\047\000\048\000\049\000\050\000\051\000\052\000\
\053\000\054\000\000\000\043\000\044\000\000\000\045\000\046\000\
\047\000\048\000\049\000\043\000\044\000\000\000\000\000\000\000\
\047\000\048\000"

let yycheck = "\017\000\
\018\000\019\000\017\001\019\001\019\001\021\001\021\001\001\000\
\024\001\024\001\016\001\029\000\030\000\031\000\016\001\031\001\
\031\001\055\000\056\000\057\000\003\001\004\001\055\000\056\000\
\057\000\043\000\044\000\045\000\046\000\047\000\048\000\049\000\
\050\000\051\000\052\000\053\000\054\000\001\001\002\001\077\000\
\078\000\005\001\003\000\007\001\077\000\078\000\019\001\017\001\
\019\001\019\001\016\001\021\001\016\001\014\000\024\001\020\001\
\031\001\029\001\031\001\021\001\031\001\031\001\023\000\024\000\
\019\001\029\001\030\001\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\017\001\017\001\019\001\
\019\001\021\001\021\001\029\001\024\001\024\001\024\001\024\001\
\255\255\255\255\255\255\031\001\031\001\006\001\007\001\008\001\
\009\001\010\001\011\001\012\001\013\001\014\001\015\001\017\001\
\017\001\019\001\019\001\021\001\021\001\255\255\024\001\024\001\
\255\255\255\255\255\255\006\001\007\001\031\001\031\001\010\001\
\011\001\012\001\013\001\014\001\015\001\017\001\017\001\019\001\
\019\001\021\001\021\001\255\255\024\001\024\001\255\255\019\001\
\255\255\006\001\007\001\031\001\031\001\010\001\011\001\012\001\
\013\001\014\001\015\001\031\001\017\001\255\255\019\001\255\255\
\021\001\255\255\255\255\024\001\255\255\255\255\255\255\006\001\
\007\001\255\255\031\001\010\001\011\001\012\001\013\001\014\001\
\015\001\255\255\017\001\255\255\019\001\255\255\021\001\255\255\
\255\255\024\001\255\255\255\255\255\255\006\001\007\001\255\255\
\031\001\010\001\011\001\012\001\013\001\014\001\015\001\255\255\
\017\001\255\255\019\001\255\255\021\001\018\001\255\255\024\001\
\021\001\022\001\023\001\255\255\025\001\026\001\031\001\255\255\
\029\001\018\001\255\255\032\001\033\001\022\001\023\001\255\255\
\025\001\026\001\255\255\255\255\029\001\255\255\255\255\032\001\
\033\001\003\001\004\001\255\255\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\255\255\017\001\
\003\001\004\001\255\255\006\001\007\001\008\001\009\001\010\001\
\011\001\012\001\013\001\014\001\015\001\255\255\017\001\003\001\
\004\001\255\255\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\014\001\015\001\255\255\017\001\003\001\004\001\
\255\255\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\013\001\014\001\015\001\255\255\017\001\003\001\004\001\255\255\
\006\001\007\001\008\001\009\001\010\001\011\001\012\001\013\001\
\014\001\015\001\255\255\003\001\004\001\255\255\006\001\007\001\
\008\001\009\001\010\001\003\001\004\001\255\255\255\255\255\255\
\008\001\009\001"

let yynames_const = "\
  TRUE\000\
  FALSE\000\
  AND\000\
  OR\000\
  NOT\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  MOD\000\
  EQ\000\
  LEQ\000\
  LT\000\
  GEQ\000\
  GT\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  ASSG\000\
  COMP\000\
  SKIP\000\
  IF\000\
  ELSE\000\
  WHILE\000\
  FOR\000\
  PRINT\000\
  INPUT\000\
  EOL\000\
  INT\000\
  BOOL\000\
  "

let yynames_block = "\
  VAR\000\
  NUMBER\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'comlist) in
    Obj.repr(
# 36 "src/Parser/parser.mly"
                ( _1 )
# 273 "src/Parser/parser.ml"
               : Ast.com))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'com) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'comlist) in
    Obj.repr(
# 40 "src/Parser/parser.mly"
                     ( Comp (_1, _3) )
# 281 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'combr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'comlist) in
    Obj.repr(
# 41 "src/Parser/parser.mly"
                  ( Comp (_1, _2) )
# 289 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'com) in
    Obj.repr(
# 42 "src/Parser/parser.mly"
             ( _1 )
# 296 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 43 "src/Parser/parser.mly"
        ( _1 )
# 303 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'combr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'comlist) in
    Obj.repr(
# 44 "src/Parser/parser.mly"
                       ( Comp (_1, _3) )
# 311 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'combr) in
    Obj.repr(
# 45 "src/Parser/parser.mly"
               ( _1 )
# 318 "src/Parser/parser.ml"
               : 'comlist))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 49 "src/Parser/parser.mly"
                                ( While (_3, _5) )
# 326 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 50 "src/Parser/parser.mly"
                                ( For   (_3, _5) )
# 334 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'com) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 51 "src/Parser/parser.mly"
                                      ( Cond (_3, _5, _7) )
# 343 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'combr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'com) in
    Obj.repr(
# 52 "src/Parser/parser.mly"
                                        ( Cond (_3, _5, _7) )
# 352 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 53 "src/Parser/parser.mly"
                 ( Assg (_1, _3) )
# 360 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    Obj.repr(
# 54 "src/Parser/parser.mly"
         ( Skip )
# 366 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 55 "src/Parser/parser.mly"
            ( Declare (Int_Type, _2) )
# 373 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 56 "src/Parser/parser.mly"
             ( Declare (Bool_Type, _2) )
# 380 "src/Parser/parser.ml"
               : 'com))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'comlist) in
    Obj.repr(
# 60 "src/Parser/parser.mly"
                          ( _2 )
# 387 "src/Parser/parser.ml"
               : 'combr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'combr) in
    Obj.repr(
# 61 "src/Parser/parser.mly"
                                  ( While (_3, _5) )
# 395 "src/Parser/parser.ml"
               : 'combr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'combr) in
    Obj.repr(
# 62 "src/Parser/parser.mly"
                                  ( For   (_3, _5) )
# 403 "src/Parser/parser.ml"
               : 'combr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'com) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'combr) in
    Obj.repr(
# 63 "src/Parser/parser.mly"
                                        ( Cond (_3, _5, _7) )
# 412 "src/Parser/parser.ml"
               : 'combr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'combr) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'combr) in
    Obj.repr(
# 64 "src/Parser/parser.mly"
                                          ( Cond (_3, _5, _7) )
# 421 "src/Parser/parser.ml"
               : 'combr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 68 "src/Parser/parser.mly"
        ( Var _1 )
# 428 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 69 "src/Parser/parser.mly"
           ( Number _1 )
# 435 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 70 "src/Parser/parser.mly"
                      ( _2 )
# 442 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 71 "src/Parser/parser.mly"
                 ( Plus (_1, _3) )
# 450 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 72 "src/Parser/parser.mly"
                  ( Minus (_1, _3) )
# 458 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 73 "src/Parser/parser.mly"
                  ( Times (_1, _3) )
# 466 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 74 "src/Parser/parser.mly"
                ( Div (_1, _3) )
# 474 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 75 "src/Parser/parser.mly"
                ( Mod (_1, _3) )
# 482 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 76 "src/Parser/parser.mly"
              ( Minus (Number 0, _2) )
# 489 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 77 "src/Parser/parser.mly"
               ( Eq (_1, _3) )
# 497 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 78 "src/Parser/parser.mly"
                ( Leq (_1, _3) )
# 505 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 79 "src/Parser/parser.mly"
               ( Lt (_1, _3) )
# 513 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 80 "src/Parser/parser.mly"
                ( Leq (_3, _1) )
# 521 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 81 "src/Parser/parser.mly"
               ( Lt (_3, _1) )
# 529 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 82 "src/Parser/parser.mly"
                      ( _2 )
# 536 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 83 "src/Parser/parser.mly"
            ( Not _2 )
# 543 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 84 "src/Parser/parser.mly"
                ( And (_1, _3) )
# 551 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 85 "src/Parser/parser.mly"
               ( Or (_1, _3) )
# 559 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "src/Parser/parser.mly"
         ( True )
# 565 "src/Parser/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 87 "src/Parser/parser.mly"
          ( False )
# 571 "src/Parser/parser.ml"
               : 'exp))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.com)
;;
