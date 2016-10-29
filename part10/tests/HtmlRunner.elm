module HtmlRunner exposing (..)

import Tests
import Test.Runner.Html as Runner


-- To run this:
--
-- cd into part10/test
-- elm-reactor
-- navigate to HtmlRunner.elm


main : Program Never
main =
    Runner.run Tests.all
