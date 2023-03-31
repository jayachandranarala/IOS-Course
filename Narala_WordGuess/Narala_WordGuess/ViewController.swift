//
//  ViewController.swift
//  Narala_WordGuess
//
//  Created by Narala,Jayachandra on 3/30/23.
//

import UIKit

class ViewController: UIViewController {

        @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    
        @IBOutlet weak var wordsRemainingLabel: UILabel!
        
        @IBOutlet weak var totalWordsLabel: UILabel!
        
        @IBOutlet weak var userGuessLabel: UILabel!
        
        @IBOutlet weak var guessLetterField: UITextField!
        
        @IBOutlet weak var GuessButton: UIButton!
        @IBOutlet weak var hintLabel: UILabel!
        
        @IBOutlet weak var guessCountLabel: UILabel!
        
        @IBOutlet weak var statusLabel: UILabel!
        
        @IBOutlet weak var PlayAgainButton: UIButton!
        
        @IBOutlet weak var displayImage: UIImageView!
        var words = [["AEROPLANE","A vehicle designed for air travel","aeroplane"],
                     ["KALASHNIKOV","S Soviet assault rifle","kalashnikov"],
                     ["GOAT","Best meat in Indian market","goat"],
                     ["BUGATTI","The car known for speed","bugatti"],
                     ["DOSA","South indian breakfast","dosa"]]
        var wcount=0;
        var word = "";
        var lettersGuessed="";
        var guess=0
        var maxNumOfWrongGuesses=10;
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            GuessButton.isEnabled=false;
            word=words[wcount][0];
           statusLabel.text=""
            userGuessLabel.text=""
            for letter in word{
                userGuessLabel.text! += "_ "
            }
            hintLabel.text="Hint: "+words[wcount][1]
            wordsGuessedLabel.text=wordsGuessedLabel.text!+"\(wcount)"
            wordsRemainingLabel.text=wordsRemainingLabel.text!+"\(5-wcount)"
            totalWordsLabel.text=totalWordsLabel.text!+"\(5)"
        }

      
        @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
            guess=guess+1;
            if guess >= maxNumOfWrongGuesses{
                GuessButton.isEnabled=false
                guessCountLabel.text="You have used all the available guesses, Please play again"
                hintLabel.text=""
                statusLabel.text=""
                guessLetterField.text=""
                if wcount != 0 {
                    
                    
                }
                else{
                    wcount=0
                }
            }
            else{
            guessCountLabel.text="You have Made \(guess) Guessess"
            var lett = guessLetterField.text!
            lettersGuessed=lettersGuessed+lett;
            var revealedWord = "";
            for l in word{
                if lettersGuessed.contains(l){
                   revealedWord += "\(l)"
                }
                else{
                    revealedWord += "- "
                }
            }
            userGuessLabel.text = revealedWord
            guessLetterField.text=""
            if userGuessLabel.text!.contains("_") == false{
                PlayAgainButton.isHidden = false;
                GuessButton.isEnabled = false;
                //displayImage.image=UIImage(named: words[wcount][2])
            }
            if revealedWord == word{
                guessCountLabel.text="Wow! You have made \(guess) guesses to guess the word!"
                displayImage.image=UIImage(named: words[wcount][2])
                wcount += 1
                wordsGuessedLabel.text="Total number of words guessed successfully: "+"\(wcount)"
                wordsRemainingLabel.text="Total number of words remaining in game: "+"\(5-wcount)"
                totalWordsLabel.text="Total number of words in game: "+"\(5)"
                
            }
            }
        }
        
        
        @IBAction func playAgainButtonPressed(_ sender: UIButton) {
            GuessButton.isEnabled=false
            guess=0;
            guessCountLabel.text="You have Made Zero Guessess"
            displayImage.image=nil
            lettersGuessed=""
            PlayAgainButton.isHidden=true
            userGuessLabel.text=""
            //wcount += 1
            if wcount == words.count{
                hintLabel.text=""
                statusLabel.text = "Congratulations!\r You are done, Please start over again"
                displayImage.image=UIImage(named: "alldone")
                hintLabel.text=""
                guessCountLabel.text=""
                PlayAgainButton.isHidden=false
                wcount = 0;
                
            }
            else{
                word = words[wcount][0]
                hintLabel.text="Hint: "
                hintLabel.text! += words[wcount][1]
                GuessButton.isEnabled = true
                userGuessLabel.text=""
                for letter in word{
                    userGuessLabel.text! += "- "
                       }
                if(wcount != -1){
                    statusLabel.text=""
                    wordsGuessedLabel.text="Total number of words guessed successfully: "+"\(wcount)"
                    wordsRemainingLabel.text="Total number of words remaining in game: "+"\(5-wcount)"
                    totalWordsLabel.text="Total number of words in game: "+"\(5)"
                }
                else{
                    wordsGuessedLabel.text="Total number of words guessed successfully: "+"\(0)"
                    wordsRemainingLabel.text="Total number of words remaining in game: "+"\(5-0)"
                    totalWordsLabel.text="Total number of words in game: "+"\(5)"
                }
            }
            
            
        }
        
    
    @IBAction func userLabelChanged(_ sender: UITextField) {
        
        var textEnetred=guessLetterField.text!;
        textEnetred = String(textEnetred.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessLetterField.text = textEnetred
        if textEnetred.isEmpty{
            GuessButton.isEnabled=false
        }
        else{
            GuessButton.isEnabled = true
        }
    }
    
}

            

