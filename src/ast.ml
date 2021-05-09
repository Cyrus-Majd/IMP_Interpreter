(* IMP abstract syntax *)
type value =
  | Int_Val of int
  | Bool_Val of bool

type dtype =
  | Int_Type
  | Bool_Type

type exp =
  | Var of string
  | Number of int
  | Plus of exp * exp
  | Minus of exp * exp
  | Times of exp * exp
  | Div of exp * exp
  | Mod of exp * exp
  | Eq of exp * exp
  | Leq of exp * exp
  | Lt of exp * exp
  | Not of exp
  | And of exp * exp
  | Or of exp * exp
  | True
  | False

type com =
  | While of exp * com
  | For   of exp * com
  | Cond of exp * com * com
  | Comp of com * com
  | Assg of string * exp
  | Declare of dtype * string
  | Skip

type environment = (string * value) list
