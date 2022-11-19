(*********************)
(** * Bool data type *)
(*********************)
Inductive bool := true | false.

(*********************)
(** * Bool function  *)
(*********************)
Definition inverse(b : bool) : bool := match b with
    | true  => false
    | false => true
    end.

Definition and(a b : bool) : bool := match a with
    | false => false
    | true  => match b with
        | false => false
        | true  => true
        end
    end
.

Definition or(a b : bool) : bool := match a with
    | true  => true
    | false => match b with
        | true  => true
        | false => false
        end
    end
.

(*********************)
(** * Bool notation  *)
(*********************)
Notation "¬ a" := (inverse a) (at level 50) : type_scope.
Notation "a ∧ b" := (and a b) (at level 50) : type_scope.
Notation "a ∨ b" := (or a b) (at level 50) : type_scope.

(*********************)
(** * Bool Theorem   *)
(*********************)
Theorem basic_bool_theorem: forall a b : bool,
    (a ∧ b) ∨ (¬(a ∧ b)) = true.
    
