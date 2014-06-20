let rec roman assoclist number =
    match assoclist with
    [] -> ""
  | a :: rest -> if number >= (fst a) then
                    (snd a) ^ roman assoclist (number - (fst a))
                  else roman rest number
let sample1 = [(1000, "M"); (500, "D"); (100, "C"); (50, "L"); (10, "X");
               (5, "V"); (1, "I")]
let sample2 = [(1000, "M"); (900, "CM"); (500, "D"); (400, "CD");
              (100, "C"); (90, "XC"); (50, "L"); (40, "XL"); (10, "X");
              (9, "IX"); (5, "V"); (4, "IV"); (1, "I")]
