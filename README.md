GitHub Copilot Chat Assistant

# Apple Pie — iOS Word-Guessing Game

A simple, beginner-friendly iOS word-guessing game (Apple Pie / Hangman-style) implemented in Swift. Includes an Xcode project and unit/UI test targets so you can run and extend the game locally.

Repository: https://github.com/SohamB4746Y/Apple-Pie_Game_Soham

## Features
- Word-guessing gameplay (rounds of guessing a hidden word)
- Tracks wins / losses across rounds
- Simple, clean UIKit-based interface (Xcode project included)
- Unit and UI test targets to validate game behavior

## Project structure
- Apple Pie/ — app source files (UI, view controllers, assets)
- Apple Pie_Soham_FINAL_UPDATED.xcodeproj — Xcode project
- Game.swift — core game logic (word handling, incorrect moves, scoring)
- Apple PieTests/ — unit tests
- Apple PieUITests/ — UI tests

(Exact file locations and names are preserved in the repo.)

## Requirements
- macOS with Xcode installed
- Xcode (open the provided .xcodeproj file)
- iOS Simulator or iOS device for testing

## Build & Run
1. Clone the repository:
   git clone https://github.com/SohamB4746Y/Apple-Pie_Game_Soham.git
2. Open the project in Xcode:
   - Double-click `Apple Pie_Soham_FINAL_UPDATED.xcodeproj`
3. Select a simulator or a connected device and press Run (Cmd+R).

## Run Tests
- In Xcode: Product → Test (or Cmd+U)
- From terminal (example):
  xcodebuild -project "Apple Pie_Soham_FINAL_UPDATED.xcodeproj" -scheme "Apple Pie" -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 14' test

(Replace scheme and destination with the actual names if they differ.)

## How the game works (summary)
- A target word is chosen each round.
- Player guesses letters via the UI.
- Correct guesses reveal letters; incorrect guesses decrement allowed moves.
- Rounds continue until the player wins or exhausts allowed incorrect moves; wins/losses are tracked.

## Contributing
- Fork the repo
- Create a branch for your feature/fix: git checkout -b feat/your-feature
- Commit changes and push
- Open a pull request describing your change

If you want me to add a CONTRIBUTING.md or code style guide, tell me what conventions you prefer and I can draft one.

## Suggestions / TODOs (ideas)
- Add more words or load word lists from JSON/plist
- Improve visuals/animations for incorrect guesses
- Add persistence for high scores using UserDefaults or CoreData
- Add localization support
- Add a settings screen (difficulty, max incorrect guesses)

## License
No license file is included in the repository. If you want this project to be open-source, consider adding a LICENSE (MIT is a common, permissive choice). I can generate a LICENSE file for you if you'd like.

## Contact
Owner: SohamB4746Y — https://github.com/SohamB4746Y

---
