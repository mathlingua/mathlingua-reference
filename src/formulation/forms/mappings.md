# Mappings

Mapping syntax uses `[| ... |]` and stores named expression bindings.

```mlg
[| value := x, index := i |]
f[| value := x |]
```

Mapping expressions are useful for structured expression data. Each entry has a name on the left and an expression on the right. They are expressions, not structural sections.
