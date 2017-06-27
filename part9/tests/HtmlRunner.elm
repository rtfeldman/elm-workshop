module HtmlRunner exposing (..)

import Test.Runner.Html as Runner
import Tests


-- To run this:
--
-- cd into part9/test
-- elm-reactor
-- navigate to HtmlRunner.elm


main : Runner.TestProgram
main =
    Runner.run Tests.all
