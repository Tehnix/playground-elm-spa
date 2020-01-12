-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.AddCommentPayload exposing (..)

import Api.GitHub.InputObject
import Api.GitHub.Interface
import Api.GitHub.Object
import Api.GitHub.Scalar
import Api.GitHub.ScalarCodecs
import Api.GitHub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) Api.GitHub.Object.AddCommentPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The edge from the subject's comment connection.
-}
commentEdge : SelectionSet decodesTo Api.GitHub.Object.IssueCommentEdge -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.AddCommentPayload
commentEdge object_ =
    Object.selectionForCompositeField "commentEdge" [] object_ (identity >> Decode.nullable)


{-| The subject
-}
subject : SelectionSet decodesTo Api.GitHub.Interface.Node -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.AddCommentPayload
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ (identity >> Decode.nullable)


{-| The edge from the subject's timeline connection.
-}
timelineEdge : SelectionSet decodesTo Api.GitHub.Object.IssueTimelineItemEdge -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.AddCommentPayload
timelineEdge object_ =
    Object.selectionForCompositeField "timelineEdge" [] object_ (identity >> Decode.nullable)
