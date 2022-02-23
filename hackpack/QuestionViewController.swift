//
//  QuestionViewController.swift
//  hackpack
//
//  Created by Dechhen Sherpa on 1/13/22.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    var questions: [Question] = [
      Question(
        text: "What's your dream vacation?",
        answers: [
            Answer(text: "All inclusive trip to Colonial Williamsburg",type: .tranchida),
            Answer(text: "7 day zoo pass in San Francisco",type: .shaw),
          Answer(text: "An architects tour of Chichen Itza", type: .flan),
          Answer(text: "Cemetery tour in Stratford upon Avon and a visitors pass to The Codrington Library", type: .ruocco)
        ]
      ),
      Question(
        text: "A student is singing on top of a table at the start of class. What do you do?",
        answers: [
          Answer(text: "Sing with them", type: .tranchida),
          Answer(text: "Tell them the history behind the harkness table at Hackley", type: .shaw),
          Answer(text: "Comment on their singing ", type: .flan),
          Answer(text: "Close your eyes and hope they stop", type: .ruocco)
        ]
      ),
      Question(
        text: "What is your choice of exercise?",
        answers: [
          Answer(text: "Crossfit in the Johnson Center Mondays & Thursdays", type: .tranchida),
          Answer(text: "Walking your dog", type: .shaw),
          Answer(text: "Laps around Akin Common", type: .flan),
          Answer(text: "Powerlifting", type: .ruocco)
        ]
      ),
      Question(
        text: "Break has been assigned for advisory time. Where are you?",
        answers: [
          Answer(text: "No where to be found", type: .tranchida),
          Answer(text: "Alone in your advisory room since no one showed up", type: .shaw),
          Answer(text: "Sitting quietly with your advisory", type: .flan),
          Answer(text: "Giving random announcements to your advisees", type: .ruocco)
        ]
      ),
      Question(
        text: "What is your favorite type of bread?",
        answers: [
          Answer(text: "White", type: .tranchida),
          Answer(text: "Whole wheat", type: .shaw),
          Answer(text: "Rye", type: .flan),
          Answer(text: "Sourdough", type: .ruocco)
        ]
      ),
      Question(
        text: "What is your Bagel Emporium order?",
        answers: [
          Answer(text: "Plain bagel with butter", type: .tranchida),
          Answer(text: "Everything with scallion cream cheese", type: .shaw),
          Answer(text: "Egg bagel toasted with egg, cheddar cheese, and ketchup", type: .flan),
          Answer(text: "Bacon, egg, and cheese on an everything bagel.", type: .ruocco)
        ]
      ),
      Question(
        text: "How many cups of coffee do you drink a day?",
        answers: [
          Answer(text: "0", type: .tranchida),
          Answer(text: "1", type: .shaw),
          Answer(text: "2", type: .flan),
          Answer(text: "3", type: .ruocco)
        ]
      ),
      Question(
        text: "Favorite Hackley lunch?",
        answers: [
          Answer(text: "Grilled cheese day", type: .tranchida),
          Answer(text: "Chicken tenders", type: .shaw),
          Answer(text: "Turkey tetrazzini", type: .flan),
          Answer(text: "I make my own lunch at the salad bar", type: .ruocco)
        ]
      ),
      Question(
        text: "Favorite music artist?",
        answers: [
          Answer(text: "Taylor Swift", type: .tranchida),
          Answer(text: "Bruce Springsteen", type: .shaw),
          Answer(text: "The Lumineers", type: .flan),
          Answer(text: "Pink Floyd", type: .ruocco)
        ]
      ),
      Question(
        text: "Harry Potter house?",
        answers: [
          Answer(text: "Ravenclaw", type: .tranchida),
          Answer(text: "Slytherin", type: .shaw),
          Answer(text: "Gryiffindor", type: .flan),
          Answer(text: "Hufflepuff", type: .ruocco)
        ]
      ),
      Question(
        text: "If you're familiar with the story, would you walk away from Omelas ",
        answers: [
          Answer(text: "Yes", type: .tranchida),
          Answer(text: "No", type: .shaw),
          Answer(text: "I'd break the kid out", type: .flan),
          Answer(text: "I haven't read the story", type: .ruocco)
        ]
      ),
      
    ]
    
    var questionIndex = 0
    var answersChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func nextQuestion(){
        questionIndex += 1
            if questionIndex < questions.count {
                updateUI()
            } else {
                performSegue(withIdentifier: "ResultsSegue",sender: nil)
            }
    }
    
    @IBSegueAction func showResults(_ coder: NSCoder) -> ResultsViewController? {
        return ResultsViewController(coder: coder, responses: answersChosen)
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
            switch sender {
            case button1:
                answersChosen.append(currentAnswers[0])
                if (questionIndex == 0){
                    
                }else if (questionIndex == 1){
                    
                }else if (questionIndex == 2){
                    
                }else if (questionIndex == 3){
                    
                }else if (questionIndex == 4){
                    
                }else if (questionIndex == 5){
                
                }else if (questionIndex == 6){
                
                }else if (questionIndex == 7){
                }else if (questionIndex == 8){
                }else if (questionIndex == 9){
                }else if (questionIndex == 10){
                }else if (questionIndex == 11){
                    
                }else {
                    
                }
            case button2:
                answersChosen.append(currentAnswers[1])
                if (questionIndex == 0){
                    
                }else if (questionIndex == 1){
                    
                }else if (questionIndex == 2){
                    
                }else if (questionIndex == 3){
                    
                }else if (questionIndex == 4){
                }else if (questionIndex == 5){
                
                }else if (questionIndex == 6){
                
                }else if (questionIndex == 7){
                }else if (questionIndex == 8){
                }else if (questionIndex == 9){
                }else if (questionIndex == 10){
                }else if (questionIndex == 11){
                    
                }else {
                    
                }
            case button3:
                answersChosen.append(currentAnswers[2])
                if (questionIndex == 0){
                    
                }else if (questionIndex == 1){
                    tally.updatevalue( 1, forKey: .ruocco)
                    
                }else if (questionIndex == 2){
                    
                }else if (questionIndex == 3){
                    
                }else if (questionIndex == 4){
                }else if (questionIndex == 5){
                
                }else if (questionIndex == 6){
                
                }else if (questionIndex == 7){
                }else if (questionIndex == 8){
                }else if (questionIndex == 9){
                }else if (questionIndex == 10){
                }else if (questionIndex == 11){
                    
                }else {
                    
                }
            case button4:
                answersChosen.append(currentAnswers[3])
                if (questionIndex == 0){
                    
                }else if (questionIndex == 1){
                    
                }else if (questionIndex == 2){
                    
                }else if (questionIndex == 3){
                    
                }else if (questionIndex == 4){
                }else if (questionIndex == 5){
                
                }else if (questionIndex == 6){
                
                }else if (questionIndex == 7){
                }else if (questionIndex == 8){
                }else if (questionIndex == 9){
                }else if (questionIndex == 10){
                }else if (questionIndex == 11){
                    
                }else {
                    
                }
            default:
                break
            }
        
            nextQuestion()
        }
    
    
    func updateUI() {
        singleStackView.isHidden = false
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float (questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated:true)
        updateStack(using: currentAnswers)
    }
    
    func updateStack(using answers: [Answer]) {
        singleStackView.isHidden = false
        button1.setTitle(answers[0].text, for: .normal)
        button2.setTitle(answers[1].text, for: .normal)
        button3.setTitle(answers[2].text, for: .normal)
        button4.setTitle(answers[3].text, for: .normal)
    }
    
}


