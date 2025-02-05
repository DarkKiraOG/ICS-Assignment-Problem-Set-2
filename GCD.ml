(* The original version was based on subtraction: given two numbers
   a and b, you would update a = a − b (if a was bigger than b) or b = b − a
   otherwise, until a was equal to b. This last value would be your solution. *)

let a = 30;;
let b = 105;;

let rec gcd_sub x y =
  if x = y then x
  else if x > y then gcd_sub (x - y) y
  else gcd_sub x (y - x)
;;

let gcd = gcd_sub a b;;
print_int gcd;;
