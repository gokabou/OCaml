let rec max_list = function
    [a] -> a
  | x :: rest -> let max = max_list rest in
                 if x > max then x else max
(* []とのパターンマッチが行われないので警告でる *)
