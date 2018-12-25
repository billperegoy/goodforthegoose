module Footer exposing (view)

import Element as UI
import Element.Font as Font
import Element.Background as Background
import Styles


view : UI.Element msg
view =
    UI.column
        [ UI.width UI.fill
        ]
        [ footerSpacer
        , UI.column
            [ UI.width UI.fill
            , Background.color Styles.colors.mediumGrey
            , Font.color Styles.colors.white
            , UI.paddingEach { left = 0, right = 0, top = 20, bottom = 40 }
            , Styles.fontFamilies.hind
            , Font.center
            ]
            [ logo
            , contactLink
            , UI.paragraph [ UI.paddingEach { top = 20, bottom = 0, left = 0, right = 0 }, Font.size 14 ] [ UI.text "Vegan owned and operated." ]
            , UI.paragraph [ Font.size 14 ] [ UI.text "We are not affiliated with Farm Sanctuary, we just think they’re cool." ]
            ]
        ]


logo : UI.Element msg
logo =
    UI.image
        [ UI.height (UI.px 50)
        , UI.centerX
        ]
        { src = "/goose-footer-logo-transparent.png"
        , description = "Good for the Goose Logo"
        }


contactLink : UI.Element msg
contactLink =
    UI.newTabLink
        [ Font.color Styles.colors.white
        , Font.size 16
        , UI.centerX
        , UI.paddingEach { top = 0, bottom = 20, left = 0, right = 0 }
        ]
        { url = "mailto:info@goodforthegoose.com"
        , label = UI.text "contact"
        }


footerSpacer : UI.Element msg
footerSpacer =
    UI.el
        [ UI.width UI.fill
        , UI.height (UI.px 6)
        , UI.centerX
        ]
        UI.none
