module Styles exposing (..)

import Element exposing (rgb255)
import Element.Font as Font


colors =
    { cyanBlue = rgb255 41 171 226
    , pink = rgb255 217 61 89
    , greenGrey = rgb255 66 85 89
    , mediumGrey = rgb255 102 102 102
    , white = rgb255 255 255 255
    , lightOrange = rgb255 242 145 61
    , darkOrange = rgb255 244 145 61
    }


baseFontSize : Int
baseFontSize =
    19


fontSizes =
    { menuText = scaleFont 0.842
    , heroHeadline = scaleFont 1.579
    , heroSubhead = scaleFont 1.474
    , buttonText = scaleFont 0.947
    , bodyHead = scaleFont 1.6
    , bodyText = scaleFont 1.0
    , callToActionBodyHead = scaleFont 1.9
    }


scaleFont : Float -> Int
scaleFont multiplier =
    round (toFloat baseFontSize * multiplier)


fontFamilies =
    { bitter =
        Font.family
            [ Font.typeface "Bitter"
            , Font.serif
            ]
    , hind =
        Font.family
            [ Font.typeface "Hind"
            , Font.sansSerif
            ]
    }


noPadding =
    { top = 0
    , bottom = 0
    , left = 0
    , right = 0
    }
