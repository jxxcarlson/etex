ETeX is an alternative to standard ETeX. Where in TeX one writes
\\frac{1}{ n+1}", in ETeX one writes "frac(1, n+1)". The function
transformETeX maps ETeX expressions to TeX expressions:

```
  transformETeX Dict.empty "frac(1, n+1)" == "\\frac{1}{ n+1}"
```

In addition, one has

```
  transformETeX Dict.empty "\\frac{1}{ n+1}" == "\\frac{1}{ n+1}"
```

Therefore a both TeX and ETeX expressions can be mixed freely

The first argument is a dictionary of ETeX macro definitions. ETeX macro
definitions look like this:

```
  bra:    \langle #1 |
  ket:    | #1 \rangle
  braket: \langle #1 | #2 \rangle
```

Then one can say `$braket(a,b)$` to obtain (roughly) < a | b >
## Functions

All functions are in `ETeX.Transform`.

- `transformETeX macros source` — ETeX to TeX for export. Calls to user-defined macros stay
  as macro calls; `toLaTeXNewCommands` gives the matching `\newcommand`s for the preamble.
- `evalStr macros source` — ETeX to TeX for display (e.g. KaTeX): user-defined macros are
  expanded in place.
- `makeMacroDict definitions` — build the macro dictionary from definitions like the ones
  above, or `\newcommand` lines.
- `toLaTeXNewCommands definitions` — the same definitions as LaTeX `\newcommand`s.
- `reduceLet source` — expand a `LET ... IN` block of single-letter definitions
  (`transformETeX` and `evalStr` already do this).
- `inverseTransformETeX macros source` — partial inverse: TeX back to ETeX notation.

Input that cannot be parsed comes back with an `[ETeX error]` marker in front, so the problem
is visible instead of part of the formula being dropped.
