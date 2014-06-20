let f = fun x -> x + 1
let g = fun x -> x * 2
let l = [1; 2; 3]
let rec map f = function
    [] -> []
  | a :: rest -> f a :: map f rest;;
(* the answer is below *)
map (fun x -> f (g x)) l;;
