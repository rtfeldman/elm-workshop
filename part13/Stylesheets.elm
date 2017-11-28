port module Stylesheets exposing (..)

import Css.File exposing (..)
import ElmHubCss
import Html exposing (div)


port files : CssFileStructure -> Cmd msg


cssFiles : CssFileStructure
cssFiles =
    toFileStructure [ ( "style.css", compile [ ElmHubCss.css ] ) ]


main : CssCompilerProgram
main =
    Css.File.compiler files cssFiles
