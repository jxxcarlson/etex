module DocExamplesTest exposing (suite)

{-| The examples in the `ETeX.Transform` documentation, checked. -}

import Dict
import ETeX.Transform exposing (makeMacroDict, reduceLet, transformETeX)
import Expect
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "documentation examples"
        [ test "frac(1, n+1)" <|
            \_ -> transformETeX Dict.empty "frac(1, n+1)" |> Expect.equal "\\frac{1}{ n+1}"
        , test "plain TeX passes through" <|
            \_ -> transformETeX Dict.empty "\\frac{1}{n+1}" |> Expect.equal "\\frac{1}{n+1}"
        , test "reduceLet" <|
            \_ -> reduceLet "LET\n  A = x^2\nIN\n  A + 1" |> Expect.equal "x^2 + 1"
        , test "makeMacroDict reads both forms" <|
            \_ -> makeMacroDict "nat: mathbb N\n\\newcommand{\\reals}{\\mathbb{R}}" |> Dict.keys |> Expect.equal [ "nat", "reals" ]
        ]
