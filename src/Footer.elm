module Footer exposing (view)

import Element exposing (Element, image, paddingXY, paddingEach, fill, width, column, px, height, el, paragraph, text, none, newTabLink, centerX)
import Element.Font as Font
import Element.Background as Background
import Styles


view : Element msg
view =
    column
        [ width fill
        ]
        [ footerSpacer
        , column
            [ width fill
            , Background.color Styles.colors.mediumGrey
            , Font.color Styles.colors.white
            , paddingEach { left = 0, right = 0, top = 20, bottom = 40 }
            , Styles.fontFamilies.hind
            , Font.center
            ]
            [ logo
            , contactLink
            , paragraph [ paddingEach { top = 20, bottom = 0, left = 0, right = 0 }, Font.size 14 ] [ text "Vegan owned and operated." ]
            , paragraph [ Font.size 14 ] [ text "We are not affiliated with Farm Sanctuary, we just think they’re cool." ]
            ]
        ]


logo : Element msg
logo =
    image
        [ height (px 50)
        , centerX
        ]
        { src = "/goose-footer-logo-transparent.png"
        , description = "Good for the Goose Logo"
        }


contactLink : Element msg
contactLink =
    newTabLink
        [ Font.color Styles.colors.white
        , Font.size 16
        , centerX
        , paddingEach { top = 0, bottom = 20, left = 0, right = 0 }
        ]
        { url = "mailto:info@goodforthegoose.com"
        , label = text "contact"
        }


footerSpacer : Element msg
footerSpacer =
    el
        [ width fill
        , height (px 6)
        , centerX
        ]
        none
