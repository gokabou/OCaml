let rec filter pred = function
    [] -> []
  | a :: rest -> if pred a then a :: filter pred rest
                           else filter pred rest
let rec length = function
    [] -> 0
  | _ :: rest -> 1 + length rest 
let sample = [[1; 2; 3]; [4; 5]; [6; 7; 8]; [9]]
