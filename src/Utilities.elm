module Utilities exposing (direction)

import Model
import Element as UI


direction : Model.ScreenSize -> (List (UI.Attribute msg) -> List (UI.Element msg) -> UI.Element msg)
direction screenSize =
    if screenSize == Model.NarrowMobile then
        UI.column
    else
        UI.row
