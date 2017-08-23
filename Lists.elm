module Lists exposing (..)

import Html exposing (text)


-- for map functions

import List


-- create an alias for person type


type alias Person =
    { name : String
    , age : Int
    }



-- populate a list of people


people =
    [ { name = "Carla", age = 27 }
    , { name = "Zacck", age = 27 }
    ]



-- find a person in the list


findPerson : String -> List Person -> Maybe Person
findPerson name peeps =
    List.foldl
        (\peep memo ->
            case memo of
                Just _ ->
                    memo

                Nothing ->
                    if peep.name == name then
                        Just peep
                    else
                        Nothing
        )
        Nothing
        peeps



-- map through list of people and return list of names


names : List Person -> List String
names peeps =
    List.map (\peep -> peep.name) peeps


main =
    text <| toString <| findPerson "Zcck" people
