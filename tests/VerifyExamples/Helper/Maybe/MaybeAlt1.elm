module VerifyExamples.Helper.Maybe.MaybeAlt1 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect

import Helper.Maybe exposing (..)







spec1 : Test.Test
spec1 =
    Test.test "#maybeAlt: \n\n    maybeAlt \"nope\" (Just \"yes\") (String.reverse)\n    --> \"sey\"" <|
        \() ->
            Expect.equal
                (
                maybeAlt "nope" (Just "yes") (String.reverse)
                )
                (
                "sey"
                )