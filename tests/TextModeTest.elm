module TextModeTest exposing (suite)

{-| The argument of a text-mode command (\\text, \\mathrm, \\operatorname, ...)
is ordinary text: words in it must not become macros. Before the fix,
`\text{There exists a model}` came out as `\text{There \exists a model}`.
-}

import Dict
import ETeX.Transform exposing (transformETeX)
import Expect
import Test exposing (Test, describe, test)


t : String -> String
t =
    transformETeX Dict.empty


suite : Test
suite =
    describe "text-mode arguments are left as written"
        [ test "\\text with a word that is also a symbol name" <|
            \_ -> t "\\text{There exists a model}" |> Expect.equal "\\text{There exists a model}"
        , test "the reported case: \\text inside \\boxed" <|
            \_ ->
                t "\\boxed{\\text{There exists a model satisfying all the rules simultaneously}.}"
                    |> Expect.equal "\\boxed{\\text{There exists a model satisfying all the rules simultaneously}.}"
        , test "\\text with 'in' and 'for all'" <|
            \_ -> t "\\text{for all x in A}" |> Expect.equal "\\text{for all x in A}"
        , test "\\mathrm" <|
            \_ -> t "\\mathrm{exists}" |> Expect.equal "\\mathrm{exists}"
        , test "\\operatorname" <|
            \_ -> t "\\operatorname{sin}" |> Expect.equal "\\operatorname{sin}"
        , test "\\textbf with nested braces" <|
            \_ -> t "\\textbf{a {in} b}" |> Expect.equal "\\textbf{a {in} b}"
        , test "\\text containing an escaped brace" <|
            \_ -> t "\\text{set \\{ in \\}}" |> Expect.equal "\\text{set \\{ in \\}}"
        , test "math around a \\text argument is still transformed as before" <|
            \_ -> t "x \\in A \\text{ for all } x" |> Expect.equal "x \\in A \\text{ for all } x"
        , test "ETeX notation: text(...) keeps its words" <|
            \_ -> t "text(exists here)" |> Expect.equal "\\text{exists here}"
        , test "ETeX notation: math outside text(...) is still transformed" <|
            \_ -> t "x in A text(for all x in B)" |> Expect.equal "x \\in A \\text{for all x in B}"
        , test "a word outside text mode is unaffected (TeX input)" <|
            \_ -> t "\\forall x \\in A" |> Expect.equal "\\forall x \\in A"
        ]
