let rec nested_length = function
    [] -> 0
  | a :: rest ->
    let rec length = function
        [] -> 0
      | a :: rest -> 1 + length rest
    in length a + nested_length rest;;
(* ものすごーく無駄のありそうなコード... *)
(* パターンマッチがどっちも一緒だから簡潔にできそう... *)
