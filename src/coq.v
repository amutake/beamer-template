Require Import List.
Import ListNotations.

Theorem modus_ponens : forall P Q, P -> (P -> Q) -> Q.
Proof. auto. Qed.

(* 日本語も大丈夫 *)
Theorem my_app_assoc : forall (A : Type) (l m n : list A),
                         l ++ m ++ n = (l ++ m) ++ n.
Proof.
  intros A l m n.
  induction l.
  - simpl; auto.
  - simpl.
    rewrite IHl.
    auto.
Qed.
