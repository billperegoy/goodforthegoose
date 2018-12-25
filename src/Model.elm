module Model exposing (..)


type ScreenSize
    = NarrowMobile
    | Mobile
    | Tablet
    | Large


type alias Model =
    { screenSize : ScreenSize
    }


type Msg
    = UpdateWindowSize Int Int
