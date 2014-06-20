let rec unzip = function
    [] -> ([], [])
  | a :: rest -> let (first, second) = unzip rest in
                 ((fst a) :: first, (snd a) :: second);;
