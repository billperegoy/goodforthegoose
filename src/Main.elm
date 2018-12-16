module Main exposing (..)

import Browser
import Html exposing (Html, text, div, h1, img)
import Html.Attributes exposing (src)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


colors =
    { cyanBlue = rgb255 41 171 226
    , pink = rgb255 217 61 89
    , greenGrey = rgb255 66 85 89
    , mediumGrey = rgb255 102 102 102
    , white = rgb255 255 255 255
    }


baseFontSize =
    19


fontSizes =
    { menuText = round (baseFontSize * 0.842)
    , heroHeadline = round (baseFontSize * 1.579)
    , heroSubhead = round (baseFontSize * 1.474)
    }


view : Model -> Html Msg
view model =
    Element.layout
        [ Element.centerX
        , width (px 800)
        , Font.size 19
        ]
        container


container : Element Msg
container =
    el
        [ Element.centerX
        , width fill
        , paddingXY 20 20
        ]
        page


page : Element Msg
page =
    column [ width fill ]
        [ headerGraphic
        , hero
        , mainText
        , footerSpacer
        , footer
        ]


headerGraphic : Element Msg
headerGraphic =
    el
        [ width fill
        , Background.color colors.cyanBlue
        , Font.size fontSizes.menuText
        , Font.family
            [ Font.typeface "Hind"
            , Font.sansSerif
            ]
        ]
    <|
        row
            [ width fill
            , paddingEach
                { top = 0
                , bottom = 0
                , left = 16
                , right = 24
                }
            ]
            [ Element.image
                []
                { src = "/good-for-the-goos-logo.png"
                , description = "Good for the Goose Logo"
                }
            , row [ spacing 15, alignRight ]
                [ Element.link
                    [ Font.color colors.white ]
                    { url = "#"
                    , label = Element.text "about"
                    }
                , Element.link
                    [ Font.color colors.white ]
                    { url = "#"
                    , label = Element.text "buy"
                    }
                , Element.link
                    [ Font.color colors.white ]
                    { url = "#"
                    , label = Element.text "contact"
                    }
                ]
            ]


hero : Element Msg
hero =
    el
        [ Background.image "/goose-mobile.png"
        , width fill
        , height (px 435)
        ]
    <|
        Element.row [ width fill ]
            [ heroText
            , patch
            ]


heroText =
    column [ Element.width (fillPortion 3) ]
        [ Element.paragraph
            [ Font.bold
            , Font.size fontSizes.heroHeadline
            , Font.color colors.pink
            , Font.family
                [ Font.typeface "Bitter"
                , Font.serif
                ]
            ]
            [ Element.text
                "NOT FEELING UP TO CRUELTY THIS WINTER?"
            ]
        , Element.paragraph
            [ Font.size fontSizes.heroSubhead
            , Font.color colors.greenGrey
            , Font.family
                [ Font.typeface "Hind"
                , Font.sansSerif
                ]
            ]
            [ Element.text "Stick this patch on your jacket to let everyone know."
            ]
        ]


patch =
    Element.image
        [ Element.width (fillPortion 2)
        , paddingEach
            { top = 80
            , bottom = 0
            , left = 0
            , right = 0
            }
        ]
        { src = "/patch-mobile.png"
        , description = "Patch Image"
        }


mainText : Element Msg
mainText =
    el
        [ width fill
        , Background.color colors.pink
        ]
    <|
        Element.text "lots of text here"


footerSpacer : Element Msg
footerSpacer =
    el
        [ width fill
        , height (px 10)
        ]
    <|
        Element.none



---- PROGRAM ----


footer : Element Msg
footer =
    el
        [ width fill
        , Background.color colors.greenGrey
        ]
    <|
        Element.text "lots of text here"



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
