# Phrases

A phrase is a meaningful piece of formulation syntax used by a structural section. MathLingua does not use one universal phrase parser. Instead, each section chooses the parser it needs.

Common phrase kinds are:

- expressions, such as `x + y` or `\empty.set`
- declaration statements, such as `X is \set` or `f(x__) := x__ is \function`
- forms and declarations, such as `f(x_)` or `G ::= (X, *, e)`
- command headers, such as `\function:?on{A}:?to{B}`
- aliases, such as `x_ - y_ :=> x_ \.set.minus./ y_`
- resource, author, and label headers

A clause argument is tried as a declaration statement first and then as an expression. This is why `x is \set` inside a clause records a declaration/fact rather than an ordinary expression.
