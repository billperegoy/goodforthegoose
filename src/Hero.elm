module Hero exposing (view)

import Element as UI
import Element.Background as Background
import Element.Font as Font
import Element.Border as Border
import Element.Input as Input
import Styles
import Components
import Model
import Utilities


view : Model.ScreenSize -> UI.Element msg
view screenSize =
    UI.el
        [ Background.image "/goose-mobile.png"
        , UI.width UI.fill
        ]
    <|
        (Utilities.direction screenSize) [ UI.width UI.fill ]
            [ heroText
            , patch screenSize
            ]


patch : Model.ScreenSize -> UI.Element msg
patch screenSize =
    let
        noPadding =
            Styles.noPadding

        imageAttributes =
            if screenSize == Model.NarrowMobile then
                [ UI.centerX
                , UI.paddingEach { noPadding | bottom = 20 }
                ]
            else
                [ UI.width (UI.fillPortion 2)
                , UI.paddingEach { noPadding | top = 14, right = 30 }
                , UI.alignRight
                ]
    in
        UI.image
            imageAttributes
            { src = "/patch-mobile.png"
            , description = "Patch Image."
            }


heroText : UI.Element msg
heroText =
    UI.column
        [ UI.width (UI.fillPortion 3)
        , UI.alignTop
        , UI.paddingXY 32 80
        , UI.centerX
        ]
        [ heroHeader
        , heroSubhead
        , Components.buyButton
        ]


heroHeader : UI.Element msg
heroHeader =
    let
        noPadding =
            Styles.noPadding
    in
        UI.paragraph
            [ Font.heavy
            , Font.size Styles.fontSizes.heroHeadline
            , Font.color Styles.colors.pink
            , Styles.fontFamilies.bitter
            , UI.paddingEach { noPadding | bottom = 30 }
            , Font.center
            , Font.letterSpacing 2
            , UI.centerX
            ]
            [ UI.text "NOT FEELING UP TO CRUELTY THIS WINTER?" ]


heroSubhead : UI.Element msg
heroSubhead =
    let
        noPadding =
            Styles.noPadding
    in
        UI.paragraph
            [ Font.size Styles.fontSizes.heroSubhead
            , Font.color Styles.colors.greenGrey
            , Styles.fontFamilies.hind
            , Font.center
            , UI.spacing 10
            , UI.paddingEach { noPadding | bottom = 30 }
            , UI.centerX
            ]
            [ UI.text "Stick this patch on your jacket to let everyone know."
            ]
