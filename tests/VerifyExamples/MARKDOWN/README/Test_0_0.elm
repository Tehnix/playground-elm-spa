module VerifyExamples.MARKDOWN.README.Test_0_0 exposing (..)

-- This file got generated by [elm-verify-examples](https://github.com/stoeffel/elm-verify-examples).
-- Please don't modify this file by hand!

import Test
import Expect









spec0 : Test.Test
spec0 =
    Test.test "Documentation VerifyExamples: \n\n    1+1\n    --> 2" <|
        \() ->
            Expect.equal
                (
                1+1
                )
                (
                2
                )