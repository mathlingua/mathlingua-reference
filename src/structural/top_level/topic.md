# Topic

`Topic:` names a documentation topic. Its `[#some.name]` heading is a dotted,
`#`-sigil path that renders as a human title (for example `#real.analysis`
renders as "Real Analysis") unless `Documented:` `called:` gives an explicit
rendering. It is stated, not proven, and registers no type facts.

```mlg
[#dotted.name]
Topic: <OpenText>*
within?: <OpenText>
Related?: <TopicRelatedItem>+
Documented?: <CalledGroup>+
Id?: <OpenText>
```

The `[#dotted.name]` heading is required. `within:` names a parent topic (making
this a sub-topic) as a quoted `"#..."` reference. Each `Related:` entry has one or
more `to:` references — quoted `"#topic"` or `"\signature"` strings — and a
required `means:` description. A topic's `Documented:` accepts only `called:`,
which overrides how the title renders.

```mlg
Related?:
. to: <OpenText>+
  means: <OpenText>
```

```mlg
[#real.analysis]
Topic: "Analysis over the real numbers."
within: "#analysis"
Related:
. to: "#complex.analysis"
  . "\sin"
  means: "Closely connected subjects."
. to: "\function:on:to"
  means: "Functions studied here."
Documented:
. called: "Real Analysis"
```
