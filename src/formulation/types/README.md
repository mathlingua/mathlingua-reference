# Is

```mlg
IsOrSpec ::= IsStatement | SubjectSpecStatement
IsStatement ::= IsSubject " is " TypeExpression
SubjectSpecStatement ::= SpecSubject TopLevelQuotedOperator Name
IsSubject ::= IsSubjectFormList | OperatorText
SpecSubject ::= FormOrDeclaration | OperatorText
IsSubjectForm ::= FormOrDeclaration | PlaceholderForm
IsSubjectFormList ::= IsSubjectForm ("," IsSubjectForm)*
TypeExpression ::= CommandExpression
```
