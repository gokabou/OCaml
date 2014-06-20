let rec mem a = function
    [] -> false
  | x :: rest -> if a = x then true else mem a rest
let rec intersect s1 s2 =
    match s1 with
    [] -> []
  | a :: rest -> if (mem a s2) then a :: intersect rest s2
                               else intersect rest s2
