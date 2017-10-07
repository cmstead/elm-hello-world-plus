module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (onInput)
import HelloTypes exposing (..)
import HelloView exposing (..)


main : Program Never ViewModel InputMsg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


update : InputMsg -> ViewModel -> ( ViewModel, Cmd a )
update inputMessageChange model =
    case inputMessageChange of
        NameChange updatedContent ->
            ( { model | name = updatedContent }, Cmd.none )

        MessageChange updatedContent ->
            ( { model | message = updatedContent }, Cmd.none )


init : ( ViewModel, Cmd a )
init =
    ( { name = "Dex"
      , message = "Hello!"
      }
    , Cmd.none
    )
