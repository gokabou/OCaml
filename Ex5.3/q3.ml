let rec union s1 s2 =
    match s1 with
    [] -> s2
  | a :: rest -> if (mem a s2) then union rest s2
                               else a :: union rest s2
