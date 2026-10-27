module LineBreakTest exposing (suite)

{-| A formula written over several lines keeps its line breaks, so the end of one
line cannot fuse with the start of the next (`\alpha` + `b` must not become
`\alphab`).
-}

import Dict
import ETeX.Transform exposing (evalStr, transformETeX)
import Expect
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "line breaks inside math"
        [ test "a command at the end of a line does not fuse with the next line" <|
            \_ ->
                transformETeX Dict.empty "\\alpha\nb"
                    |> Expect.equal "\\alpha\nb"
        , test "evalStr keeps the line break too" <|
            \_ ->
                evalStr Dict.empty "\\alpha\nb"
                    |> Expect.equal "\\alpha\nb"
        , test "two variables on separate lines stay separate" <|
            \_ ->
                transformETeX Dict.empty "x\ny"
                    |> Expect.equal "x\ny"
        ]
