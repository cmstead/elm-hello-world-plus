module HelloView exposing (view, subscriptions)

import HelloTypes exposing(..)

import Html exposing (..)
import Html.Events exposing (onInput)
import String exposing (..)
import GenericViewElements exposing (..)

view : ViewModel -> Html InputMsg
view currentViewModel = div [] [ 
        outputDivView 
            (concat ["Name: ", currentViewModel.name]),

        outputDivView 
            (concat ["Message: ", currentViewModel.message]),

        inputSectionView 
            "Please type your name" 
            (onInput NameChange),

        inputSectionView
            "Please type a message"
            (onInput MessageChange)
    ]

subscriptions : ViewModel -> Sub a
subscriptions model = Sub.none
