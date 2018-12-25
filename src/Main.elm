module Main exposing (..)

import Browser
import Browser.Events as Events
import Html exposing (Html)
import Element as UI
import Model exposing (..)
import Styles
import Header
import Hero
import Components
import About
import CallToAction
import Footer


---- MODEL ----


computeScreenSize width =
    if width <= 600 then
        NarrowMobile
    else if width <= 768 then
        Mobile
    else if width <= 992 then
        Tablet
    else
        Large


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( { screenSize = computeScreenSize flags.width
      }
    , Cmd.none
    )



---- UPDATE ----


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateWindowSize width height ->
            ( { model | screenSize = computeScreenSize width }
            , Cmd.none
            )



---- VIEW ----


view : Model -> Html Msg
view model =
    UI.layout
        []
        (page model)


page : Model -> UI.Element msg
page model =
    UI.column
        [ UI.width (UI.fill |> UI.maximum 1000)
        , UI.centerX
        ]
        [ Header.view
        , Hero.view model.screenSize
        , About.view
        , CallToAction.view model.screenSize
        , Footer.view
        ]



---- PROGRAM ----


type alias Flags =
    { width : Int
    , height : Int
    }


main : Program Flags Model Msg
main =
    Browser.element
        { view = view
        , init = init
        , update = update
        , subscriptions = subscriptions
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ Events.onResize UpdateWindowSize
        ]
