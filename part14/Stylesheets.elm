port module Stylesheets exposing (..)

import Css.File exposing (..)
import ElmHubCss


port files : CssFileStructure -> Cmd msg


cssFiles : CssFileStructure
cssFiles =
    toFileStructure [ ( "style.css", compile [ ElmHubCss.css ] ) ]


main : Program Never () msg
main =
    Platform.program
        { init = ( (), files cssFiles )
        , update = \_ _ -> ( (), Cmd.none )
        , subscriptions = \_ -> Sub.none
        }
