module CallToAction exposing (view)

import Element exposing (Element, padding, paddingXY, fillPortion, width, column, spacing, fill, row, paragraph, image, text, px)
import Element.Background as Background
import Element.Font as Font
import Components
import Styles


view : Element msg
view =
    row
        [ width fill
        , Background.color Styles.colors.cyanBlue
        , Font.color Styles.colors.white
        , padding 64
        , spacing 20
        ]
        [ textColumn
        , imageColumn
        ]


textColumn =
    column
        [ width (fillPortion 1)
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


imageColumn =
    column [ width (fillPortion 1) ]
        [ image
            [ paddingXY 0 15
            , width (px 200)
            ]
            { src = "/patch-mobile.png"
            , description = "Patch Image."
            }
        , Components.buyButton
        ]


bodyText : String
bodyText =
    "These 3-inch, embroidered patches have sticky backs with strong adhesive so you can stick them on your coat easily (or you can sew them on, for an old-school look). We donate one dollar from every patch sold to Farm Sanctuary to make even more animals’ lives better."
