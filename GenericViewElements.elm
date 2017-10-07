module GenericViewElements exposing (inputSectionView, outputDivView)

import Html exposing (..)
import Html.Events exposing (onInput)

inputSectionView : String -> Html.Attribute a -> Html a
inputSectionView message attribute = section [] [
            label [] [ text message ],
            input [ attribute ] []
        ]

outputDivView : String -> Html a
outputDivView message = div [] [ text message ]