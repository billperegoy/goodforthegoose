module Hero exposing (view)

import Element exposing (Element, fill, width, px, height, el, fillPortion, column, row, text, paragraph, paddingEach, image, alignRight, alignTop, centerX, paddingXY, spacing)
import Element.Background as Background
import Element.Font as Font
import Element.Border as Border
import Element.Input as Input
import Styles
import Components
import Model


direction screenSize =
    if screenSize == Model.NarrowMobile then
        column
    else
        row


view : Model.ScreenSize -> Element msg
view screenSize =
    el
        [ Background.image "/goose-mobile.png"
        , width fill
        ]
    <|
        (direction screenSize) [ width fill ]
            [ heroText
            , patch screenSize
            ]


patch screenSize =
    let
        noPadding =
            Styles.noPadding

        imageAttributes =
            if screenSize == Model.NarrowMobile then
                [ centerX
                , paddingEach { noPadding | bottom = 20 }
                ]
            else
                [ width (fillPortion 2)
                , paddingEach { noPadding | top = 14, right = 30 }
                , alignRight
                ]
    in
        image
            imageAttributes
            { src = "/patch-mobile.png"
            , description = "Patch Image"
            }


heroText =
    column
        [ width (fillPortion 3)
        , alignTop
        , paddingXY 32 80
        , centerX
        ]
        [ heroHeader
        , heroSubhead
        , Components.buyButton
        ]


heroHeader =
    let
        noPadding =
            Styles.noPadding
    in
        paragraph
            [ Font.heavy
            , Font.size Styles.fontSizes.heroHeadline
            , Font.color Styles.colors.pink
            , Styles.fontFamilies.bitter
            , paddingEach { noPadding | bottom = 30 }
            , Font.center
            , Font.letterSpacing 2
            , centerX
            ]
            [ text "NOT FEELING UP TO CRUELTY THIS WINTER?" ]


heroSubhead =
    let
        noPadding =
            Styles.noPadding
    in
        paragraph
            [ Font.size Styles.fontSizes.heroSubhead
            , Font.color Styles.colors.greenGrey
            , Styles.fontFamilies.hind
            , Font.center
            , spacing 10
            , paddingEach { noPadding | bottom = 30 }
            , centerX
            ]
            [ text "Stick this patch on your jacket to let everyone know."
            ]
