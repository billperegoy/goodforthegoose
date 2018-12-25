module Header exposing (..)

import Element as UI
import Element.Font as Font
import Element.Background as Background
import Styles


view : UI.Element msg
view =
    let
        noPadding =
            Styles.noPadding
    in
        UI.row
            [ UI.width UI.fill
            , Background.color Styles.colors.cyanBlue
            , Font.size Styles.fontSizes.menuText
            , Styles.fontFamilies.hind
            , UI.paddingEach
                { noPadding | top = 5, left = 16, right = 32 }
            ]
            [ logo
            , menu
            ]


logo : UI.Element msg
logo =
    UI.image
        [ UI.height (UI.px 70) ]
        { src = "/good-for-the-goose-logo.png"
        , description = "Good for the Goose Logo"
        }


menu : UI.Element msg
menu =
    UI.row
        [ UI.spacing 15
        , UI.alignRight
        ]
        [ menuElement "contact" "mailto:info@goodforthegoose.com"
        ]


menuElement : String -> String -> UI.Element msg
menuElement name url =
    UI.newTabLink
        [ Font.color Styles.colors.white ]
        { url = url
        , label = UI.text name
        }
