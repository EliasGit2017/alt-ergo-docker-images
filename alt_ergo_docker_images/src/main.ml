(* open Dockerfile *)
(* open Dockerfile_cmd.Gen *)

let gen_all_dockerfiles () = ()

let generate_dockerfile (target : string) (all:bool) =
  match target with
  | "alt-ergo-2.4.1" -> ()
  | "ae-2.4.2" -> ()
  | _ -> if not all then
		print_endline "Wrong target"
	else
		 gen_all_dockerfiles ()

let () = print_endline "Hello, World!"

let () =
  let _ = Dockerfile.empty in
  print_endline "Generating Dockerfiless";
  generate_dockerfile "" false
