module Application.Core.Init exposing (init)

import Application.Config as Config
import Application.Core.Route as Route
import Application.Core.Types exposing (Application(..), Msg(..), PageModel(..), PageMsg(..))
import Application.I18n as I18n
import Application.I18n.Types as I18n
import Browser.Navigation as Nav
import Global as Global
import Json.Decode as Decode
import Json.Encode as Encode
import Url exposing (Url)
import Url.Parser as UrlParser


{-| When the application is started up, the initial URL is passed to `init`. We
then decide where to route the user, along with setting up other things for our
initial model.
-}
init : Encode.Value -> Url -> Nav.Key -> ( Application, Cmd Msg )
init flags url navKey =
    case Decode.decodeValue Config.decoder flags of
        Ok config ->
            let
                route =
                    UrlParser.parse Route.parser url

                initialModel =
                    { navKey = navKey
                    , route = route
                    , config = config
                    , t = I18n.t config.i18n.selectedLanguage config.i18n.translations
                    , global = Global.init
                    , pageModel = Route.toPageModel Nothing Nothing route
                    }
            in
            ( Ready initialModel, Cmd.none )

        Err err ->
            ( FailedToInitialize (Decode.errorToString err), Cmd.none )