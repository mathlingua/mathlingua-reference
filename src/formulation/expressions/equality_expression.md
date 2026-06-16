# Equality Expression

```mlg
ExpressionBinding ::= Expression ":=" Expression

IsSubject ::= IsSubjectFormList | OperatorText
SpecSubject ::= FormOrDeclaration | OperatorText
IsSubjectForm ::= FormOrDeclaration | PlaceholderForm
IsSubjectFormList ::= IsSubjectForm ("," IsSubjectForm)*
TopLevelQuotedOperator ::= a top-level double-quoted string found by raw scanning

IsStatement ::= IsSubject " is " CommandExpression
SubjectSpecStatement ::= SpecSubject TopLevelQuotedOperator Name
PlaceholderSpecStatement ::= PlaceholderForm TopLevelQuotedOperator Name

IsOrSpec ::= IsStatement | SubjectSpecStatement

IsOrRefinedStatement ::= IsSubject " is " (CommandExpression | RefinedCommandExpression)
IsOrRefinedStatementSpec ::= IsOrRefinedStatement | SubjectSpecStatement

IsViaStatement ::= IsStatement " via " FormOrDeclaration
```
