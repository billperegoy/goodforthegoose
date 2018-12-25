module Components exposing (buyButton)

import Element as UI
import Element.Background as Background
import Element.Font as Font
import Element.Border as Border
import Element.Input as Input
import Styles


buyButton : UI.Element msg
buyButton =
    Input.button
        [ UI.centerX
        , Background.color Styles.colors.darkOrange
        , UI.padding 15
        , Font.size Styles.fontSizes.buttonText
        , Border.rounded 50
        ]
        { label = UI.el [ Font.color Styles.colors.white ] (UI.text "buy now")
        , onPress = Nothing
        }
