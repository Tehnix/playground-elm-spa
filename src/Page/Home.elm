module Page.Home exposing (Model, Msg, init, update, view)

import Core.I18n exposing (Translate)
import Global as Global
import Helper.Bool exposing (bool, when)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick, onInput)


type alias Model =
    { text : String
    , showReversed : Bool
    }


type Msg
    = ReverseText
    | ChangeInput String


init : Model
init =
    { text = "", showReversed = False }


view : Translate -> Global.Model -> Model -> { title : String, html : Html Msg }
view t _ model =
    let
        content =
            div []
                [ input [ placeholder (t { k = "shared.textToReverse", default = "Text to reverse" }), value model.text, onInput ChangeInput ] []
                , div [] [ text (when model.showReversed String.reverse model.text) ]
                , button [ onClick ReverseText ] [ text (t { k = "shared.reverseText", default = "Reverse Text" }) ]
                ]
    in
    { title = t { k = "title.item", default = "Item" }, html = content }


update : Global.Model -> Msg -> Model -> ( Model, Cmd Msg, Cmd Global.Msg )
update _ msg model =
    case msg of
        ReverseText ->
            ( { model | showReversed = bool True False model.showReversed }, Cmd.none, Cmd.none )

        ChangeInput newText ->
            ( { model | text = newText }, Cmd.none, Cmd.none )
