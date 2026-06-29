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