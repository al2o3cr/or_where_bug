# OrWhereBug

A tiny demo app for some unexpected query generation behavior in Ecto.

In short, clauses with `or_where` will generate cleanly in isolation but incorrectly in *some* composition orders.

The included failing test demonstrates that the two orderings don't produce the same results.
