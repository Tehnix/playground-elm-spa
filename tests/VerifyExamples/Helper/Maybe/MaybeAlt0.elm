module VerifyExamples.Helper.Maybe.MaybeAlt0 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Helper.Maybe exposing (..)







spec0 : Test.Test
spec0 =
    Test.test "#maybeAlt: \n\n    maybeAlt \"nope\" Nothing (String.reverse)\n    --> \"nope\"" <|
        \() ->
            Expect.equal
                (
                maybeAlt "nope" Nothing (String.reverse)
                )
                (
                "nope"
                )