module About exposing (view)

import Element exposing (Element, spacing, column, paddingEach, fill, width, paragraph, text, centerX, html)
import Element.Font as Font
import Element.Background as Background
import Html
import Html.Attributes as Attr
import Styles


view : Element msg
view =
    column
        [ width fill
        , Background.color Styles.colors.pink
        , paddingEach { top = 64, bottom = 64, left = 64, right = 64 }
        , Font.color Styles.colors.white
        , centerX
        ]
        [ headerParagraph
        , bodyParagraphs
        ]


headerParagraph : Element msg
headerParagraph =
    paragraph
        [ Font.size Styles.fontSizes.bodyHead
        , Styles.fontFamilies.bitter
        , spacing 18
        , Font.letterSpacing 2
        , Font.bold
        , Font.center
        , paddingEach { top = 0, bottom = 32, left = 0, right = 0 }
        ]
        [ text headerText ]


bodyParagraphs : Element msg
bodyParagraphs =
    let
        noPadding =
            Styles.noPadding

        textStyling =
            [ spacing 16, paddingEach { noPadding | top = 40 } ]

        bulletStyling =
            [ spacing 16, paddingEach { noPadding | left = 32 } ]
    in
        column
            [ Font.size Styles.fontSizes.bodyText
            , Styles.fontFamilies.hind
            ]
            [ paragraph textStyling [ text paragraph1 ]
            , paragraph textStyling [ text paragraph2 ]
            , paragraph bulletStyling [ html (bulletedList [ bullet1, bullet2 ]) ]
            , paragraph textStyling [ text paragraph3 ]
            ]


bulletedList : List String -> Html.Html msg
bulletedList lines =
    Html.ul
        [ Attr.style "list-style" "none"
        , Attr.style "margin-left" "0"
        , Attr.style "padding-left" "1em"
        , Attr.style "text-indent" "-1em"
        ]
        (List.map
            (\line -> Html.li [] [ Html.text line ])
            lines
        )


headerText : String
headerText =
    "Winter can be a very bad time to be a goose or a coyote. Or a mink, rabbit, ermine, or fox."


paragraph1 : String
paragraph1 =
    "It’s not about the weather. The problem is people —who think it’s alright to inhumanely raise or trap and kill animals for the sake of fashion."


paragraph2 : String
paragraph2 =
    "If you don’t believe in cruelly exploiting animals to make your outerwear:"


bullet1 : String
bullet1 =
    "» choose a coat not stuffed with feathers, trimmed with fur, or made of wool"


bullet2 : String
bullet2 =
    "» pick up our cruelty-free patch to it to show you’re proud of not being a murderer this year, or any year "


paragraph3 : String
paragraph3 =
    "You can learn more about the cruelty that goes into animal-based garments here and here. Be warned, this might (should!) upset you."
