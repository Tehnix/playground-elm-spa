-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Api.GitHub.Object.CommitComment exposing (..)

import Api.GitHub.Enum.CommentAuthorAssociation
import Api.GitHub.Enum.CommentCannotUpdateReason
import Api.GitHub.Enum.ReactionContent
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


{-| The actor who authored the comment.
-}
author : SelectionSet decodesTo Api.GitHub.Interface.Actor -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.CommitComment
author object_ =
    Object.selectionForCompositeField "author" [] object_ (identity >> Decode.nullable)


{-| Author's association with the subject of the comment.
-}
authorAssociation : SelectionSet Api.GitHub.Enum.CommentAuthorAssociation.CommentAuthorAssociation Api.GitHub.Object.CommitComment
authorAssociation =
    Object.selectionForField "Enum.CommentAuthorAssociation.CommentAuthorAssociation" "authorAssociation" [] Api.GitHub.Enum.CommentAuthorAssociation.decoder


{-| Identifies the comment body.
-}
body : SelectionSet String Api.GitHub.Object.CommitComment
body =
    Object.selectionForField "String" "body" [] Decode.string


{-| The body rendered to HTML.
-}
bodyHTML : SelectionSet Api.GitHub.ScalarCodecs.Html Api.GitHub.Object.CommitComment
bodyHTML =
    Object.selectionForField "ScalarCodecs.Html" "bodyHTML" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecHtml |> .decoder)


{-| The body rendered to text.
-}
bodyText : SelectionSet String Api.GitHub.Object.CommitComment
bodyText =
    Object.selectionForField "String" "bodyText" [] Decode.string


{-| Identifies the commit associated with the comment, if the commit exists.
-}
commit : SelectionSet decodesTo Api.GitHub.Object.Commit -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.CommitComment
commit object_ =
    Object.selectionForCompositeField "commit" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.CommitComment
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Check if this comment was created via an email reply.
-}
createdViaEmail : SelectionSet Bool Api.GitHub.Object.CommitComment
createdViaEmail =
    Object.selectionForField "Bool" "createdViaEmail" [] Decode.bool


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Api.GitHub.Object.CommitComment
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The actor who edited the comment.
-}
editor : SelectionSet decodesTo Api.GitHub.Interface.Actor -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.CommitComment
editor object_ =
    Object.selectionForCompositeField "editor" [] object_ (identity >> Decode.nullable)


id : SelectionSet Api.GitHub.ScalarCodecs.Id Api.GitHub.Object.CommitComment
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Check if this comment was edited and includes an edit with the creation data
-}
includesCreatedEdit : SelectionSet Bool Api.GitHub.Object.CommitComment
includesCreatedEdit =
    Object.selectionForField "Bool" "includesCreatedEdit" [] Decode.bool


{-| Returns whether or not a comment has been minimized.
-}
isMinimized : SelectionSet Bool Api.GitHub.Object.CommitComment
isMinimized =
    Object.selectionForField "Bool" "isMinimized" [] Decode.bool


{-| The moment the editor made the last edit
-}
lastEditedAt : SelectionSet (Maybe Api.GitHub.ScalarCodecs.DateTime) Api.GitHub.Object.CommitComment
lastEditedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "lastEditedAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| Returns why the comment was minimized.
-}
minimizedReason : SelectionSet (Maybe String) Api.GitHub.Object.CommitComment
minimizedReason =
    Object.selectionForField "(Maybe String)" "minimizedReason" [] (Decode.string |> Decode.nullable)


{-| Identifies the file path associated with the comment.
-}
path : SelectionSet (Maybe String) Api.GitHub.Object.CommitComment
path =
    Object.selectionForField "(Maybe String)" "path" [] (Decode.string |> Decode.nullable)


{-| Identifies the line position associated with the comment.
-}
position : SelectionSet (Maybe Int) Api.GitHub.Object.CommitComment
position =
    Object.selectionForField "(Maybe Int)" "position" [] (Decode.int |> Decode.nullable)


{-| Identifies when the comment was published at.
-}
publishedAt : SelectionSet (Maybe Api.GitHub.ScalarCodecs.DateTime) Api.GitHub.Object.CommitComment
publishedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "publishedAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| A list of reactions grouped by content left on the subject.
-}
reactionGroups : SelectionSet decodesTo Api.GitHub.Object.ReactionGroup -> SelectionSet (Maybe (List decodesTo)) Api.GitHub.Object.CommitComment
reactionGroups object_ =
    Object.selectionForCompositeField "reactionGroups" [] object_ (identity >> Decode.list >> Decode.nullable)


type alias ReactionsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    , content : OptionalArgument Api.GitHub.Enum.ReactionContent.ReactionContent
    , orderBy : OptionalArgument Api.GitHub.InputObject.ReactionOrder
    }


{-| A list of Reactions left on the Issue.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.
  - content - Allows filtering Reactions by emoji.
  - orderBy - Allows specifying the order in which reactions are returned.

-}
reactions : (ReactionsOptionalArguments -> ReactionsOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.ReactionConnection -> SelectionSet decodesTo Api.GitHub.Object.CommitComment
reactions fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent, content = Absent, orderBy = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "content" filledInOptionals.content (Encode.enum Api.GitHub.Enum.ReactionContent.toString), Argument.optional "orderBy" filledInOptionals.orderBy Api.GitHub.InputObject.encodeReactionOrder ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "reactions" optionalArgs object_ identity


{-| The repository associated with this node.
-}
repository : SelectionSet decodesTo Api.GitHub.Object.Repository -> SelectionSet decodesTo Api.GitHub.Object.CommitComment
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| The HTTP path permalink for this commit comment.
-}
resourcePath : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.CommitComment
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Api.GitHub.ScalarCodecs.DateTime Api.GitHub.Object.CommitComment
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The HTTP URL permalink for this commit comment.
-}
url : SelectionSet Api.GitHub.ScalarCodecs.Uri Api.GitHub.Object.CommitComment
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (Api.GitHub.ScalarCodecs.codecs |> Api.GitHub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


type alias UserContentEditsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of edits to this content.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
userContentEdits : (UserContentEditsOptionalArguments -> UserContentEditsOptionalArguments) -> SelectionSet decodesTo Api.GitHub.Object.UserContentEditConnection -> SelectionSet (Maybe decodesTo) Api.GitHub.Object.CommitComment
userContentEdits fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "userContentEdits" optionalArgs object_ (identity >> Decode.nullable)


{-| Check if the current viewer can delete this object.
-}
viewerCanDelete : SelectionSet Bool Api.GitHub.Object.CommitComment
viewerCanDelete =
    Object.selectionForField "Bool" "viewerCanDelete" [] Decode.bool


{-| Check if the current viewer can minimize this object.
-}
viewerCanMinimize : SelectionSet Bool Api.GitHub.Object.CommitComment
viewerCanMinimize =
    Object.selectionForField "Bool" "viewerCanMinimize" [] Decode.bool


{-| Can user react to this subject
-}
viewerCanReact : SelectionSet Bool Api.GitHub.Object.CommitComment
viewerCanReact =
    Object.selectionForField "Bool" "viewerCanReact" [] Decode.bool


{-| Check if the current viewer can update this object.
-}
viewerCanUpdate : SelectionSet Bool Api.GitHub.Object.CommitComment
viewerCanUpdate =
    Object.selectionForField "Bool" "viewerCanUpdate" [] Decode.bool


{-| Reasons why the current viewer can not update this comment.
-}
viewerCannotUpdateReasons : SelectionSet (List Api.GitHub.Enum.CommentCannotUpdateReason.CommentCannotUpdateReason) Api.GitHub.Object.CommitComment
viewerCannotUpdateReasons =
    Object.selectionForField "(List Enum.CommentCannotUpdateReason.CommentCannotUpdateReason)" "viewerCannotUpdateReasons" [] (Api.GitHub.Enum.CommentCannotUpdateReason.decoder |> Decode.list)


{-| Did the viewer author this comment.
-}
viewerDidAuthor : SelectionSet Bool Api.GitHub.Object.CommitComment
viewerDidAuthor =
    Object.selectionForField "Bool" "viewerDidAuthor" [] Decode.bool
