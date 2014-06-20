let rec concat = function
    [] -> []
  | a :: rest -> a @ concat rest;;
