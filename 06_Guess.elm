module Guess exposing (..)

import HTML exposing (..)
import HTML.Attributes exposing (..)
import HTML.Eents exposing(onclick, onInput)

-- ===================================================
-- Main
main =
	HTML.beginnerProgram { model = model, view = view, update = update}

-- ===================================================
-- Model
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

update : Msg -> Model -> Model
--check for a typed message
update msg model =
	case msg of
		Answer txt ->
			{ model | guess = text, isCorrect = checkIfCorrect model txt }

-- define check if correct function
-- takes 2 arguements, Type of Model and string.  returns a Boolean
checkIfCorrect : Model -> String -> Bool
checkIfCorrect = model txt =
	if txt == model.word then
	True
	else
		Flse

-- ===================================================
-- View
generateResult : Model -> Html Msg
generateResult { isCorrect} =
	if isCorrect then
	text "You got it!"
	else
		text "Nope"


view : Model -> Html Msg
view =
	div []
	[h2 [] [text ("I'm thinking of a word that starts with" ++ toString (String.slice 0 1 model.word))]
	, input [ placeholder "Type your guess", onInput Answer]
	, div [ generateResult model]
	]