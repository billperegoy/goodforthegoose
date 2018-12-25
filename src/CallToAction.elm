module CallToAction exposing (view)

import Element exposing (Element, padding, paddingEach, paddingXY, fillPortion, width, column, spacing, fill, row, paragraph, image, text, px, centerX, el)
import Element.Background as Background
import Element.Font as Font
import Components
import Styles
import Model
import Utilities


view : Model.ScreenSize -> Element msg
view screenSize =
    (Utilities.direction screenSize)
        [ width fill
        , Background.color Styles.colors.cyanBlue
        , Font.color Styles.colors.white
        , spacing 20
        ]
        [ textColumn
        , imageColumn
        ]


textColumn : Element msg
textColumn =
    column
        [ width (fillPortion 2)
        , paddingEach { left = 64, right = 0, top = 64, bottom = 64 }
        , spacing 16
        ]
        [ paragraph
            [ Font.size Styles.fontSizes.callToActionBodyHead
            , Styles.fontFamilies.hind
            ]
            [ text "Stick it on your coat!" ]
        , paragraph
            [ Font.size Styles.fontSizes.bodyText
            , Styles.fontFamilies.hind
            , spacing 16
            ]
            [ text bodyText ]
        ]


imageColumn : Element msg
imageColumn =
    column [ paddingXY 0 15, width (fillPortion 1) ]
        [ image
            [ paddingXY 0 15
            , width (px 200)
            , centerX
            ]
            { src = "/patch-mobile.png"
            , description = "Patch Image."
            }
        , el [ centerX, paddingEach { top = 0, bottom = 10, left = 0, right = 0 } ] (paragraph [ Font.bold ] [ text "$6.95" ])
        , Components.buyButton
        ]


bodyText : String
bodyText =
    "These 3-inch, embroidered patches have sticky backs with strong adhesive so you can stick them on your coat easily (or you can sew them on, for an old-school look). We donate one dollar from every patch sold to Farm Sanctuary to make even more animals’ lives better."
