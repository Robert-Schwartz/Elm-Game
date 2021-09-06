module Guess exposing (..)

import HTML exposing (..)
import HTML.Attributes exposing (..)
import HTML.Eents exposing(onclick, onInput)

main =
	HTML.beginnerProgram { model = model, view = view, update = update}

type alias Model =
	{ word : String
	, guess : String
	, isCorrect : Bool
	}

model : Model
model =
	Model "Saturday" "" False

type Msg =
	Answer String