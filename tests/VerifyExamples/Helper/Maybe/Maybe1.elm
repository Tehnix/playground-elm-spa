module VerifyExamples.Helper.Maybe.Maybe1 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Helper.Maybe exposing (..)







spec1 : Test.Test
spec1 =
    Test.test "#maybe: \n\n    maybe \"nope\" (String.reverse) (Just \"yes\")\n    --> \"sey\"" <|
        \() ->
            Expect.equal
                (
                maybe "nope" (String.reverse) (Just "yes")
                )
                (
                "sey"
                )