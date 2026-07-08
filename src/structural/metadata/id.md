# Id

`id:` is a nested metadata item, while direct top-level `Id:` is the current item identity section.

```mlg
Id: "23e4567e-e89b-42d3-a456-426614174000"
```

Every top-level item must have a unique ID. `mlg check` generates missing direct `Id:` sections using UUID v4 values before semantic checking.

IDs are intended for stable internal identity. Tools should use the ID rather than deriving identity from source position, title text, or rendered labels.
