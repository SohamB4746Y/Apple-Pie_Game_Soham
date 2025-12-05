//
//  ViewController.swift
//  Apple Pie
//
//  Created by Soham Bhattacharya on 01/09/25.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["buccaneer","swift","glorious","incandescent","bug","program"]
    let incorrectMovesAllowed = 7
    @IBOutlet var treeImageView: UIImageView!
    
    @IBOutlet var correctScoreLabel: UILabel!
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    var currentGame : Game!
    func newRound(){
        if !listOfWords.isEmpty{
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining:incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        }else{
            enableLetterButtons(false)
        }
    }
    func enableLetterButtons(_ enable: Bool){
        for button in letterButtons{
            button.isEnabled = enable
        }
    }
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.configuration!.title!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    func updateGameState(){
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
            }
        else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        }
        else{
            updateUI()
        }
    }
    var totalWins = 0{
        didSet{
            newRound()
        }
    }
    var totalLosses = 0{
        didSet{
            newRound()
        }
    }
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpaces = letters.joined(separator: " ")
        correctScoreLabel.text = wordWithSpaces
        scoreLabel.text = "Wins: \(totalWins) Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        }
        

    }


