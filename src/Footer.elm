module Footer exposing (view)

import Element exposing (Element, paddingXY, fill, width, column, px, height, el, paragraph, text, none, newTabLink, centerX)
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
            , Background.color Styles.colors.greenGrey
            , Font.color Styles.colors.white
            , paddingXY 0 20
            , Font.center
            ]
            [ contactLink
            , paragraph [] [ text "Vegan owned and operated." ]
            , paragraph [] [ text "We are not affiliated with Farm Sanctuary, we just think they’re cool." ]
            ]
        ]


contactLink =
    newTabLink
        [ Font.color Styles.colors.white, centerX ]
        { url = "info@goodforthegoose.com"
        , label = text "contact"
        }


footerSpacer : Element msg
footerSpacer =
    el
        [ width fill
        , height (px 6)
        ]
        none
