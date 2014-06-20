let rec zip alist blist =
    match (alist, blist) with
    ([], _) | (_, []) -> []
  | (a :: ta, b :: tb) -> (a, b) :: zip ta tb
let sample1 = [2; 3; 4; 5; 6; 7; 8; 9; 10; 11]
let sample2 = [true; true; false; true; false; true; false; false; false;
               true]
