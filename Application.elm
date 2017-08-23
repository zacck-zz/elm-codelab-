module Application exposing (..)

import Html exposing (..)
import Html exposing (beginnerProgram)
import Html.Events exposing (..)


{-
   -Model - This is a piece of data that
   -represents the state of the app the entire state of the app at any given time
-}


model =
    { showFace = False }



-- This is a list of constants/ strings to expect


type Msg
    = ShowFace



-- Update takes in a message and a model depending on the message update will do something to the model


update msg model_ =
    case msg of
        -- here we are updating a record passing in the model then the node we want to update and the value
        ShowFace ->
            { model_ | showFace = True }



-- view takes a model to change what we are seeing on screen depending on the model


view model_ =
    div []
        [ h1 [] [ text "Face generator" ]
        , button [ onClick ShowFace ] [ text "Face me" ]
        , if model_.showFace then
            text "^(>"
          else
            text ""
        ]


main =
    beginnerProgram
        { model = model
        , update = update
        , view = view
        }
