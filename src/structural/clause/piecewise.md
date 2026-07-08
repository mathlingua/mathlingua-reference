# Piecewise

`piecewise:` records a piecewise clause with required `if:` and `then:` sections and an optional `else:` section.

```mlg
piecewise:
if: x = 0
then: y = 0
else: y = 1
```

The `piecewise:` section itself may contain optional open text used as a label or description. The checker validates each clause in its appropriate context.
