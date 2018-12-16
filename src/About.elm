module About exposing (view)

import Element exposing (Element, spacing, column, paddingEach, fill, width, paragraph, text, centerX)
import Element.Font as Font
import Element.Background as Background
import Styles


view : Element msg
view =
    let
        noPadding =
            Styles.noPadding

        textStyling =
            [ spacing 20, paddingEach { noPadding | bottom = 32 } ]

        bulletStyling =
            [ spacing 20, paddingEach { noPadding | bottom = 32, left = 50 } ]
    in
        column
            [ width fill
            , Background.color Styles.colors.pink
            , spacing 15
            , paddingEach { top = 60, bottom = 15, left = 70, right = 70 }
            , Font.color Styles.colors.white
            , centerX
            ]
            [ paragraph
                [ Font.size Styles.fontSizes.bodyHead
                , Styles.fontFamilies.bitter
                , spacing 18
                , Font.letterSpacing 2
                , Font.bold
                , Font.center
                , paddingEach { top = 0, bottom = 32, left = 0, right = 0 }
                ]
                [ text headerText ]
            , column
                [ Font.size Styles.fontSizes.bodyText
                , spacing 15
                ]
                [ paragraph [ spacing 20, paddingEach { top = 0, bottom = 32, left = 0, right = 0 } ] [ text paragraph1 ]
                , paragraph textStyling [ text paragraph2 ]
                , paragraph bulletStyling [ text bullet1 ]
                , paragraph bulletStyling [ text bullet2 ]
                , paragraph textStyling [ text paragraph3 ]
                ]
            ]


headerText =
    "Winter can be a very bad time to be a goose or a coyote. Or a mink, rabbit, ermine, or fox."


paragraph1 =
    "It’s not about the weather. The problem is people —who think it’s alright to inhumanely raise or trap and kill animals for the sake of fashion."


paragraph2 =
    "If you don’t believe in cruelly exploiting animals to make your outerwear:"


bullet1 =
    "» choose a coat not stuffed with feathers, trimmed with fur,     or made of wool"


bullet2 =
    "» pick up our cruelty-free patch to it to show you’re proud of not being a  murderer this year, or any year "


paragraph3 =
    "You can learn more about the cruelty that goes into animal-based garments here and here. Be warned, this might (should!) upset you."
