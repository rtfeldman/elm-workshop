port module Main exposing (..)

import Json.Decode exposing (Value)
import Test.Runner.Node as Runner
import Tests


-- To run this:
--
-- elm-test


main : Runner.TestProgram
main =
    Runner.run emit Tests.all


port emit : ( String, Value ) -> Cmd msg
