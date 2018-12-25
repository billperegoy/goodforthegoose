module About exposing (view)

import Element as UI
import Element.Font as Font
import Element.Background as Background
import Html
import Html.Attributes as Attr
import Styles


view : UI.Element msg
view =
    UI.column
        [ UI.width UI.fill
        , Background.color Styles.colors.pink
        , Font.color Styles.colors.white
        , UI.padding 64
        , UI.centerX
        ]
        [ headerParagraph
        , bodyParagraphs
        ]


headerParagraph : UI.Element msg
headerParagraph =
    let
        noPadding =
            Styles.noPadding
    in
        UI.paragraph
            [ Font.size Styles.fontSizes.bodyHead
            , Styles.fontFamilies.bitter
            , UI.spacing 18
            , Font.letterSpacing 2
            , Font.bold
            , Font.center
            , UI.paddingEach { noPadding | bottom = 32 }
            ]
            [ UI.text headerText ]


bodyParagraphs : UI.Element msg
bodyParagraphs =
    let
        noPadding =
            Styles.noPadding

        textStyling =
            [ UI.spacing 16, UI.paddingEach { noPadding | top = 40 } ]

        bulletStyling =
            [ UI.spacing 16, UI.paddingEach { noPadding | left = 32 } ]
    in
        UI.column
            [ Font.size Styles.fontSizes.bodyText
            , Styles.fontFamilies.hind
            ]
            [ UI.paragraph textStyling [ UI.text paragraph1 ]
            , UI.paragraph textStyling [ UI.text paragraph2 ]
            , UI.paragraph bulletStyling [ UI.html (bulletedList [ bullet1, bullet2 ]) ]
            , UI.paragraph textStyling [ UI.text paragraph3 ]
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
