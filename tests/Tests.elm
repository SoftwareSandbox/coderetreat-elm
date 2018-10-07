module Tests exposing (suite)

-- import Fuzz exposing (Fuzzer, int, list, string)

import Expect exposing (Expectation)
import Main exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "Main"
        [ describe "reading properties of a record"
            [ test "string" <|
                \_ ->
                    Expect.equal initialModel.text "Hello"
            , test "Union Type" <|
                \_ ->
                    Expect.equal initialModel.place World
            ]
        , describe "union type in action"
            [ test "world" <|
                \_ ->
                    let
                        world =
                            Model "Hello" World
                    in
                    greet world
                        |> Expect.equal "Hello World"
            , test "elm" <|
                \_ ->
                    let
                        elm =
                            Model "Snarf Snarf" Elm
                    in
                    greet elm
                        |> Expect.equal "Snarf Snarf Elm"
            ]
        ]



{-
   exampleTests : Test
   exampleTests =
       describe "Sample Test Suite"
           [ describe "Unit test examples"
               [ test "Addition" <|
                   \() ->
                       Expect.equal (3 + 7) 10
               , test "String.left" <|
                   \() ->
                       Expect.equal "a" (String.left 1 "abcdefg")
               ]
           , describe "Fuzz test examples, using randomly generated input"
               [ fuzz (list int) "Lists always have positive length" <|
                   \aList ->
                       List.length aList |> Expect.atLeast 0
               , fuzz (list int) "Sorting a list does not change its length" <|
                   \aList ->
                       List.sort aList |> List.length |> Expect.equal (List.length aList)
               , fuzzWith { runs = 1000 } int "List.member will get an integer in a list containing it" <|
                   \i ->
                       List.member i [ i ] |> Expect.true "If you see this, List.member returned False!"
               , fuzz2 string string "The length of a string equals the sum of its substrings' lengths" <|
                   \s1 s2 ->
                       s1 ++ s2 |> String.length |> Expect.equal (String.length s1 + String.length s2)
               ]
           ]
-}
