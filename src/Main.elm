module Main exposing (..)

import Browser
import Browser.Events as Events
import Html exposing (Html)
import Element exposing (Element, fill, width, centerX, layout, paddingXY, column, maximum, minimum, px)
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
    layout
        []
        (page model)


page : Model -> Element msg
page model =
    column
        [ width (fill |> maximum 1000), centerX ]
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
