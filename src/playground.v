Inductive day : Type :=
| monday
| tuesday
| wednesday
| thursday
| friday
| saturday
| sunday.

Definition next_day (d:day) : day :=
  match d with
  | monday    => tuesday
  | tuesday   => wednesday
  | wednesday => thursday
  | thursday  => friday
  | friday    => saturday
  | saturday  => sunday
  | sunday    => monday
end.

Compute (next_day monday).

Compute (next_day (next_day saturday)).

Example test_next_day:
  (next_day (next_day tuesday)) = thursday.
Proof. simpl. reflexivity. Qed.
