module Header exposing (..)

import Element exposing (Element, alignRight, spacing, row, paddingEach, fill, width, el, text, newTabLink, px, height, image)
import Element.Font as Font
import Element.Background as Background
import Styles


view : Element msg
view =
    let
        noPadding =
            Styles.noPadding
    in
        row
            [ width fill
            , Background.color Styles.colors.cyanBlue
            , Font.size Styles.fontSizes.menuText
            , Styles.fontFamilies.hind
            , paddingEach
                { noPadding | top = 5, left = 16, right = 32 }
            ]
            [ logo
            , menu
            ]


logo : Element msg
logo =
    image
        [ height (px 70) ]
        { src = "/good-for-the-goose-logo.png"
        , description = "Good for the Goose Logo"
        }


menu : Element msg
menu =
    row
        [ spacing 15
        , alignRight
        ]
        [ menuElement "contact" "mailto:info@goodforthegoose.com"
        ]


menuElement : String -> String -> Element msg
menuElement name url =
    newTabLink
        [ Font.color Styles.colors.white ]
        { url = url
        , label = text name
        }
