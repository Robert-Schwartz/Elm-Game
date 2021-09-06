# Elm-Game

Practice Repo for Learning ELM


## What is Elm?
- Functional language that compiles to JavaScript
	- Meant for developing web apps
	- Statically typed (with type inference)
- Allows us to write well-architectured, declarative code

## Why Elm?
- Make front end development simpler
- Address JavaScript fatigue
- Easy to understand and use
- Supportive community, and creator (Evan Czaplicki) active in community

## Cool features of Elm
- Nice built in tools
- No runtime exceptions (i.e. null or undefined errors)
- Friendly, easy-to-read error messages in the compiler
- Immutable data
- Functions must be pure
- Unidirectional data flow
- Centralized state
- Can describe state instead of transforming the DOM
- Built in package manager that enforces semantic versioning
	- i.e. can tell if there's a breaking change and thus not allow
	a minor version bump, but enforce a major version bump

## Elm Architecture

- Every app tends to follow the Elm architecture pattern.
- "Great for modularity, code reuse, and testing"
- Makes code easy to pick up because it tends to be well-architected

## Three essential parts

- Model -> model function deals with application's state.

- Update -> update function is a way to update our state. Can think of it
						as a way to process our state using functions for whatever
						your app needs to do

- View -> view function handles appearance of our app. Build structure of the view
					and can also handle events



