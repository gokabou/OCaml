let rec mem a = function
    [] -> false
  | x :: rest -> if a = x then true else mem a rest
