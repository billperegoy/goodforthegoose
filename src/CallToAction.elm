module CallToAction exposing (view)

import Element as UI
import Element.Background as Background
import Element.Font as Font
import Components
import Styles
import Model
import Utilities


view : Model.ScreenSize -> UI.Element msg
view screenSize =
    (Utilities.direction screenSize)
        [ UI.width UI.fill
        , Background.color Styles.colors.cyanBlue
        , Font.color Styles.colors.white
        , UI.spacing 20
        ]
        [ textColumn
        , imageColumn
        ]


textColumn : UI.Element msg
textColumn =
    UI.column
        [ UI.width (UI.fillPortion 2)
        , UI.paddingEach { left = 64, right = 0, top = 64, bottom = 64 }
        , UI.spacing 16
        ]
        [ UI.paragraph
            [ Font.size Styles.fontSizes.callToActionBodyHead
            , Styles.fontFamilies.hind
            ]
            [ UI.text "Stick it on your coat!" ]
        , UI.paragraph
            [ Font.size Styles.fontSizes.bodyText
            , Styles.fontFamilies.hind
            , UI.spacing 16
            ]
            [ UI.text bodyText ]
        ]


imageColumn : UI.Element msg
imageColumn =
    let
        imageAttributes =
            [ UI.paddingXY 0 15
            , UI.width (UI.px 200)
            , UI.centerX
            ]
    in
        UI.column
            [ UI.paddingXY 0 15
            , UI.width (UI.fillPortion 1)
            ]
            [ Components.patch imageAttributes
            , price
            , Components.buyButton
            ]


price : UI.Element msg
price =
    UI.el
        [ UI.centerX
        , UI.paddingEach { top = 0, bottom = 10, left = 0, right = 0 }
        ]
        (UI.paragraph [ Font.bold ] [ UI.text "$6.95" ])


bodyText : String
bodyText =
    "These 3-inch, embroidered patches have sticky backs with strong adhesive so you can stick them on your coat easily (or you can sew them on, for an old-school look). We donate one dollar from every patch sold to Farm Sanctuary to make even more animals’ lives better."
