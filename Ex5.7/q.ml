let squares r =
    let rec find_square (x, y) list =
        if y * y > r then list
        else let r' = x * x + y * y in
        if r' < r then
            if x = y then find_square (0, y + 1) list
                     else find_square (x + 1, y) list
        else if r' = r then find_square (0, y + 1) ((x, y) :: list)
        else find_square (0, y + 1) list
      in find_square (0, 0) []
