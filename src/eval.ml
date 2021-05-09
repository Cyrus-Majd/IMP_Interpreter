open Ast

exception TypeError
exception UndefinedVar
exception DivByZeroError

(* Remove shadowed bindings *)
let prune_env (env : environment) : environment =
  let binds = List.sort_uniq compare (List.map (fun (id, _) -> id) env) in
  List.map (fun e -> (e, List.assoc e env)) binds

(* Env print function to stdout *)
let print_env_std (env : environment): unit =
  List.iter (fun (var, value) ->
      let vs = match value with
        | Int_Val(i) -> string_of_int i
        | Bool_Val(b) -> string_of_bool b in
      Printf.printf "- %s => %s\n" var vs) (prune_env env)

(* Env print function to string *)
let print_env_str (env : environment): string =
  List.fold_left (fun acc (var, value) ->
      let vs = match value with
        | Int_Val(i) -> string_of_int i
        | Bool_Val(b) -> string_of_bool b in
      acc ^ (Printf.sprintf "- %s => %s\n" var vs)) "" (prune_env env)



(***********************)
(****** Your Code ******)
(***********************)

let rec listSearch e target =
    match e with
	| (a, b) :: tl -> if target = a then b else listSearch tl target
	| [] -> raise TypeError

(* evaluate an expression in an environment *)
let rec eval_expr (e : exp) (env : environment) : value =
    match e with
	| Number first ->
		Int_Val first
	| True ->
		Bool_Val true
	| False ->
		Bool_Val false
	| Var value ->
		listSearch env value
	| Plus (e1, e2) ->
		let first = eval_expr e1 env in
    		let second = eval_expr e2 env in
    		(match first, second with
    		    | Int_Val i, Int_Val j -> Int_Val (i + j)
    		    | _ -> raise TypeError)
	| Minus (e1, e2) ->
		let first = eval_expr e1 env in
		let second = eval_expr e2 env in
		(match first, second with
		    | Int_Val i, Int_Val j -> Int_Val (i - j)
		    | _ -> raise TypeError)
	| Times (e1, e2) ->
		let first = eval_expr e1 env in
		let second = eval_expr e2 env in
		(match first, second with
		    | Int_Val i, Int_Val j -> Int_Val (i * j)
		    | _ -> raise TypeError)
	| Div (e1, e2) ->
		let first = eval_expr e1 env in
		let second = eval_expr e2 env in
		(match first, second with
		    | Int_Val i, Int_Val j -> if j = 0 then raise DivByZeroError else Int_Val (i / j)
		    | _ -> raise TypeError)	
	| Mod (e1, e2) ->
		let first = eval_expr e1 env in
		let second = eval_expr e2 env in
		(match first, second with
		    | Int_Val i, Int_Val j -> Int_Val (i mod j)
		    | _ -> raise TypeError)
	| Or (e1, e2) ->
		let first = eval_expr e1 env in
		let second = eval_expr e2 env in
		(match first, second with
		    | Bool_Val i, Bool_Val j -> Bool_Val (i || j)
		    | _ -> raise TypeError)
	| And (e1, e2) ->
		let first = eval_expr e1 env in
		let second = eval_expr e2 env in
		(match first, second with
		    | Bool_Val i, Bool_Val j -> Bool_Val (i && j)
		    | _ -> raise TypeError)
	| Not e1 ->
		let element = eval_expr e1 env in
		(match element with
		    | Bool_Val thing -> Bool_Val (not thing)
		    | _ -> raise TypeError)
	| Lt (e1, e2) ->
		let first = eval_expr e1 env in
		let second = eval_expr e2 env in
		(match first, second with
		    | Int_Val i, Int_Val j -> Bool_Val (i < j)
		    | _ -> raise TypeError)
	| Leq (e1, e2) ->
		let first = eval_expr e1 env in
		let second = eval_expr e2 env in
		(match first, second with
		    | Int_Val i, Int_Val j -> Bool_Val (i <= j)
		    | _ -> raise TypeError)
	| Eq (e1, e2) ->
		let first = eval_expr e1 env in
		let second = eval_expr e2 env in
		(match first, second with
		    | Int_Val i, Int_Val j -> Bool_Val (i = j)
		    | _ -> raise TypeError)

(* evaluate a command in an environment *)
let rec addVariables e target dataType = 
	match e with
	    | (a, b) :: tl -> if target = a 
				then (target, dataType) :: tl
				else (a,b) :: (addVariables tl target dataType)
	    | [] -> [(target, dataType)]

let rec assign lst name newdata =
	match lst with
	    | [] -> raise UndefinedVar
	    | (str, data) :: tl -> if str = name
					then
					    match newdata, data with
						| Bool_Val bool1, Bool_Val bool2 ->
							(str, newdata) :: tl
						| Int_Val num1, Int_Val num2 ->
							(str, newdata) :: tl
						| _ -> raise TypeError
					else (str, data) :: assign tl name newdata

let rec eval_command (c : com) (env : environment) : environment =
    match c with
	| Skip -> env
	| Comp (curr, next) -> eval_command next (eval_command curr env)
	| Declare (dataType, inputString) -> 
		(match dataType with
		    | Int_Type -> addVariables env inputString (Int_Val 0)
		    | Bool_Type -> addVariables env inputString (Bool_Val false))
	| Assg (name, expr) -> assign env name (eval_expr expr env)
	| Cond (expression, ifbody, elsebody) ->
		(match (eval_expr expression env) with
		    | Bool_Val boolean ->
			if boolean then eval_command ifbody env else eval_command elsebody env
		    | _ -> raise TypeError)
	| While (expression, command) -> 
		(match (eval_expr expression env) with
		    | Bool_Val boolean ->
			if boolean then (eval_command c (eval_command command env)) else env
		    | _ -> raise TypeError)
	| For (expression, command) ->
		(match (eval_expr expression env) with
		    | Int_Val value ->
			if value > 0 
			    then eval_command (For 
							(Number (value-1), command)
					      ) 
					      (eval_command command env)
			else env
		    | _ -> raise TypeError)
