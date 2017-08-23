module Render exposing (..)

-- get access to all html elements

import Html exposing (..)


-- get access to html attributes

import Html.Attributes exposing (..)
import List


type alias Ship =
    { name : String
    , model : String
    , cost : Int
    }


ships =
    [ { name = "X-Wing", cost = 149999 }
    , { name = "Millenium Falcon", cost = 10000 }
    , { name = "Death Star", cost = 1000000000 }
    ]



-- render individual items


renderShip ship =
    li []
        [ text ship.name
        , text ", "
        , b []
            [ text <| toString <| ship.cost ]
        ]



-- function to render all the ships


renderShips ships =
    div
        [ style
            [ ( "font-family"
              , "-apple-system"
              )
            , ( "padding", "1em" )
            ]
        ]
        [ h1 [] [ text "Ships" ]
        , ul [] (List.map renderShip ships)
        ]


main =
    renderShips ships
