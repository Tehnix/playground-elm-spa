module Layout exposing (menu)

import Html exposing (..)
import Html.Attributes exposing (..)
import Route


menu : Html msg
menu =
    let
        inline =
            style "display" "inline-block"

        padded =
            style "padding" "10px"

        links =
            [ { route = Route.Home, display = "Home" }
            , { route = Route.Item (Just { from = Just "tests", to = Nothing }), display = "Item tests" }
            , { route = Route.Item Nothing, display = "Item" }
            ]

        menuLink link =
            a [ inline, padded, href (Route.toUrl link.route) ] [ text link.display ]
    in
    div [ padded, style "border-bottom" "1px solid #c0c0c0" ]
        (List.map menuLink links)
