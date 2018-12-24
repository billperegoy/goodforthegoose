module Components exposing (buyButton, patch, logo)

import Element exposing (Element, centerX, el, padding, paddingEach, fillPortion, image, width)
import Element.Background as Background
import Element.Font as Font
import Element.Border as Border
import Element.Input as Input
import Styles


buyButton : Element msg
buyButton =
    Input.button
        [ centerX
        , Background.color Styles.colors.darkOrange
        , padding 15
        , Font.size Styles.fontSizes.buttonText
        , Border.rounded 50
        ]
        { label = el [ Font.color Styles.colors.white ] (Element.text "buy now")
        , onPress = Nothing
        }


patch : Element msg
patch =
    let
        noPadding =
            Styles.noPadding
    in
        image
            [ width (fillPortion 2)
            , paddingEach { noPadding | top = 80 }
            ]
            { src = "/patch-mobile.png"
            , description = "Patch Image"
            }


logo : Element msg
logo =
    image
        []
        { src = "/good-for-the-goos-logo.png"
        , description = "Good for the Goose Logo"
        }
