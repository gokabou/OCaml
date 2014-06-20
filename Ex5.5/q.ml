let fold_right f l e =
    match l with
    [] -> e
  | a :: rest -> f a (fold_right f rest e)
(* concat made of fold_right *)
let concat l =
    fold_right (fun x y -> x @ y) l []

(* forall made of fold_right *)
let forall pred l =
    fold_right (fun x y -> pred x && y) l true

(* exists made of fold_right *)
let exists pred l =
    fold_right (fun x y -> pred x || y) l false
