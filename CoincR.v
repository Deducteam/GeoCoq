Axiom my_false : False.

Ltac CoincR :=
  match goal with
   |- ?g => let H := fresh in assert (H:g) by (elim my_false); exact H
  end.