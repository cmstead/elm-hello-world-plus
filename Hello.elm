module Main exposing (..)

import Html exposing (..)
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

stringOrDefault : String -> String -> String
stringOrDefault defaultValue stringValue = 
    if stringValue == "" then
        defaultValue
    else
        stringValue

defaultName : String
defaultName = "World"

defaultMessage : String 
defaultMessage = "Hello!"

update : InputMsg -> ViewModel -> ( ViewModel, Cmd a )
update inputMessageChange model =
    case inputMessageChange of
        NameChange updatedContent ->
            let
                nameValue = (stringOrDefault defaultName updatedContent)
            in 
                ( { model | name = nameValue }, Cmd.none )

        MessageChange updatedContent ->
            let 
                messageValue = (stringOrDefault defaultMessage updatedContent)
            in 
                ( { model | message = messageValue }, Cmd.none )


init : ( ViewModel, Cmd a )
init =
    ( { name = defaultName
      , message = defaultMessage
      }
    , Cmd.none
    )
