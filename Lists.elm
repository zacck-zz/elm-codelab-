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
    [ { name  = "Carla", age = 27 }
    , { name = "Zacck", age = 27 }
    ]



-- map through list of people and return list of names 
names: List Person -> List String
names peeps =  List.map (\peep -> peep.name) peeps 


main = 
    text <| toString <| names people
