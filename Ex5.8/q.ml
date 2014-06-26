let map2 f list =
    let rec fold_right g l e =
        match l with
        [] -> e
      | h :: t -> g h (fold_right g t e)
    in fold_right (fun x y -> (f x) :: y) list []
