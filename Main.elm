module Main exposing (..)
import Html exposing (text)

-- Using a type signature
ask : String -> String -> String
ask thing place =
    "is there a " ++ 
    thing ++ 
    " in the " ++
    place ++ " ?"


politely : String -> String
politely phrase =
    "Excuse me " ++ phrase

--explore function composition 
askPolitelyAboutFish : String -> String
askPolitelyAboutFish = politely << (ask "fish")

main = 
    text 
    <| askPolitelyAboutFish "hat"


