(* *)

type t

type id

(** load from include dirs *)
val load: string list -> t

val all: t -> id list

val get: t -> string -> id

val complete: t -> string -> id list

val complete_module: t -> string -> id list

val complete_value: t -> ?modul:string -> string -> id list

val complete_type: t -> ?modul:string -> string -> id list

val complete_class: t -> ?modul:string -> string -> id list

val name: id -> string
val ty: id -> string
val doc: id -> string
val loc: id -> string

val pretty: ?color:bool -> id -> string

val format_id: ?color:bool -> Format.formatter -> id -> unit
