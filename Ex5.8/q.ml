let map2 f list =
    let rec fold_right g l e =
        match l with
        [] -> e
      | h :: tail -> g h (fold_right g tail e)
    in fold_right (fun x y -> (f x) :: y) list []
