(* hogepoyo *)
let hoge = poyo

let rec f = function
  | S (hoge, poyo) ->
     let a = f hoge in
     g a poyo
