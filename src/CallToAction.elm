module CallToAction exposing (view)

import Element exposing (Element, paddingXY, fillPortion, width, column, spacing, fill, row, paragraph, image, text)
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
        , paddingXY 20 10
        , spacing 20
        ]
        [ column
            [ width (fillPortion 4)
            , spacing 15
            ]
            [ paragraph
                [ Font.size Styles.fontSizes.bodyHead
                , Styles.fontFamilies.hind
                ]
                [ text "Stick it on your coat!" ]
            , paragraph
                [ Font.size Styles.fontSizes.bodyText
                , Styles.fontFamilies.hind
                ]
                [ text bodyText ]
            ]
        , column [ width (fillPortion 2) ]
            [ image
                [ width (fillPortion 2)
                , paddingXY 0 15
                ]
                { src = "/patch-mobile.png"
                , description = "Patch Image"
                }
            , Components.buyButton
            ]
        ]


bodyText : String
bodyText =
    "These 3-inch, embroidered patches have sticky backs with strong adhesive so you can stick them on your coat easily (or you can sew them on, for an old-school look). We donate one dollar from every patch sold to Farm Sanctuaryto make even more animals’ lives better."
