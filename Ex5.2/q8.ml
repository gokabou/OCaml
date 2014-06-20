let rec downto1 n =
    if n = 0 then [] else n :: downto1 (n - 1)
let ten_to_zero = downto1 10
let rec take n list =
    match list with
    [] -> []
  | a :: rest -> if n = 0 then [] else a :: take (n - 1) rest
let rec drop n list =
    match list with
    [] -> []
  | a :: rest -> if n > 0 then drop (n - 1) rest
                          else a :: drop n rest
