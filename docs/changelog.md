# Changelog

## 1.1.0 — 2026-10-26

Merges the ETeX code that had grown separately inside the Scripta compiler
(`scripta-compiler-v3/src/ETeX`) back into this package, so the compiler can depend on it.

**New functions:** `toLaTeXNewCommands` (macro definitions as LaTeX `\newcommand`s) and
`reduceLet` (`LET ... IN` blocks).

**From the compiler's copy:** `LET ... IN` definitions; LaTeX environments
(`\begin{...}...\end{...}`); `\\` line breaks; macros whose braces span several lines;
nested parentheses in macro arguments; recursive and nested user-defined macros; LaTeX
control symbols (`\$`, `\%`, `\ ` ...); `inverseTransformETeX` improvements; a control space
`\ ` at the end of the math no longer becomes an `[ETeX error]`.

**Kept from 1.0.4 – 1.0.8:** the larger KaTeX command table (dots, ~240 commands); words inside
`\text{...}`, `\mathrm{...}`, `\operatorname{...}` and `text(...)` are not turned into commands;
the whole formula must parse (unmatched parentheses are symbols, nothing is dropped); deciding
whether a `(` is closed by looking ahead, so many unclosed parentheses no longer take
exponential time.

**Fixed while merging:** a formula written over several lines kept its lines but joined them with
nothing in between, so `\alpha` at the end of a line fused with the next line (`\alphab`). Line
breaks are now kept.

Removed the unused internal module `Macro.MathMacro`. Tests: 177 (the package's and the
compiler's suites together, plus line-break and documentation-example tests), all passing.
