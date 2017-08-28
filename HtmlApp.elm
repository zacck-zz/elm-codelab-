module HtmlApp exposing (..)

import Html exposing (Html, div, text, program)


{- Model
   Here we declare that our component's state is just a string and alias that tto the name `Model`
-}


type alias Model =
    String



-- This function provides the initial state or input for the module which is a tuple with a Model and command to run


init : ( Model, Cmd Msg )
init =
    ( "Hello", Cmd.none )



-- MESSAGES - Things that happen in our application that our component responds to


type Msg
    = NoOp



-- VIEW - This function renders some html using our application model/state


view : Model -> Html Msg
view model =
    div []
        [ text model ]



-- UPDATE - This function is called by Html.program each time a message is recieved, this updates the component state and returns commands as needed


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- SUBSCRRIPTIONS We use subscriptions to accept external input in our applications.


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- Here Html.program wires everything up returning a html element we can render


main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
