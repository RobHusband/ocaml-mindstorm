open Printf

let print game =
  printf "\n";
  for i = 5 downto 0 do
    for j = 0 to 6 do
      let couleur = match (Game.get_color game i j) with
        | None -> "       "
        | Some Game.Yellow -> " Yellow"
        | Some Game.Red -> " Red   " in
      printf "%s" couleur;
    done;
    printf "\n"
  done;
  printf "--------------------------------------------------\n"

let g = Game.make();;
Game.move g 3 Game.Yellow;;
Game.move g 3 Game.Red;;
Game.move g 3 Game.Yellow;;


(*let a = alphabeta g Game.Red (neg_infinity) infinity 2 h;;
Printf.printf "%f" (fst a);;
Printf.printf "\n";;
Printf.printf "%i" (snd a);;*)

(*let g = Game.make();;*)
(*Game.move g 0 Game.Red;
Game.move g 1 Game.Yellow;
Game.move g 1 Game.Red;
Game.move g 0 Game.Yellow;
Game.move g 0 Game.Red;
Game.move g 1 Game.Yellow;
Game.move g 1 Game.Red;
Game.move g 0 Game.Yellow;
(*Game.move g 0 Game.Yellow;*)
(*Game.move g 1 Game.Red;*)
Game.move g 3 Game.Red;
Game.move g 2 Game.Yellow;
Game.move g 2 Game.Red;
(*Game.move g 3 Game.Yellow;*)
(*Game.move g 0 Game.Red;*)
Game.move g 2 Game.Yellow;
(*Game.move g 2 Game.Red;*)
(*Game.move g 3 Game.Yellow;*)
(*Game.move g 3 Game.Red;*)
(*Game.move g 2 Game.Yellow;*)
Game.move g 5 Game.Red;
Game.move g 6 Game.Yellow;
Game.move g 6 Game.Red;
Game.move g 5 Game.Yellow;
Game.move g 5 Game.Red;
Game.move g 6 Game.Yellow;
(*Game.move g 6 Game.Red;*)
(*Game.move g 5 Game.Yellow;*)
(*Game.move g 5 Game.Red;*)
(*Game.move g 6 Game.Yellow;*)
Game.move g 4 Game.Red;
Game.move g 4 Game.Yellow;
Game.move g 4 Game.Red;;
(*Game.move g 4 Game.Red;;*)
(*Game.move g 4 Game.Red;;*)
(*Game.move g 3 Game.Yellow;;*)
(*Game.move g 4 Game.Red;;*)
*)


Game.move g 2 Game.Red;;
Game.move g 0 Game.Yellow;;
Game.move g 0 Game.Red;;
Game.move g 2 Game.Yellow;;
Game.move g 2 Game.Red;;
Game.move g 0 Game.Yellow;;
Game.move g 0 Game.Red;;
Game.move g 0 Game.Yellow;;
Game.move g 2 Game.Red;;
(*Game.move g 0 Game.Yellow;;
Game.move g 0 Game.Red;;
Game.move g 2 Game.Yellow;;
Game.move g 0 Game.Red;;
Game.move g 0 Game.Yellow;;*)

print g;;
printf "\n";;

let cost, col = Alphabeta.alphabeta g Game.Yellow neg_infinity infinity 8 Alphabeta.h;;
printf "%f\n%i" cost, col
