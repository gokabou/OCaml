let rec diff s1 s2 =
    match s1 with
    [] -> []
  | a :: rest -> if (mem a s2) then diff rest s2
                               else a :: diff rest s2
