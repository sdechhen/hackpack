//
//  ResultsViewController.swift
//  hackpack
//
//  Created by Dechhen Sherpa on 1/13/22.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    @IBAction func share(_ sender: UIButton) {
        let image = teacherImage
               let imageToShare = [ image! ]
               let activityViewController = UIActivityViewController(activityItems: imageToShare, applicationActivities:  nil)
               activityViewController.popoverPresentationController?.sourceView = self.view
               // present the view controller
               self.present(activityViewController, animated: true, completion: nil)
    }
    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBOutlet weak var teacherImage: UIImageView!
    
    var responses : [Answer]
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonalityResult()
    }
    
    func calculatePersonalityResult(){
        /*
        let frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in
                counts[answer.type, default: 0] += 1
            }
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by:
        { (pair1, pair2) in
            return pair1.value > pair2.value
        })
        
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        */
        let maxValue = tally.max { a, b in a.value < b.value }
        let frequent = maxValue!.key
        resultAnswerLabel.text = "\(frequent.definition)!"
        //done button clicked
        if doneButton.isSelected{
            
        }
        //setting correct teacher image
        if frequent.rawValue == "Ms. Baal" {
            teacherImage.image = UIImage(named: "unnamed-2")
        }else if frequent.rawValue == "Ms. Kaplan"{
            teacherImage.image = UIImage(named: "unnamed-4")
        }else if frequent.rawValue == "Ms. Tranchida"{
            teacherImage.image = UIImage(named: "unnamed-5")
        }else if frequent.rawValue == "Ms. Moriarty"{
            teacherImage.image = UIImage(named: "unnamed-6")
        }else if frequent.rawValue == "Mr. Flanigan"{
            teacherImage.image = UIImage(named: "unnamed-7")
        }else if frequent.rawValue == "Mr. Canterino"{
            teacherImage.image = UIImage(named: "unnamed-8")
        }else if frequent.rawValue == "Mr. Shaw"{
            teacherImage.image = UIImage(named: "unnamed-10")
        }else if frequent.rawValue == "Ms. DiNardo"{
            teacherImage.image = UIImage(named: "unnamed-9")
        }else if frequent.rawValue == "Mr. Lobko"{
            teacherImage.image = UIImage(named: "unnamed-11")
        }else if frequent.rawValue == "Ms. Ek"{
            teacherImage.image = UIImage(named: "unnamed-12")
        }else if frequent.rawValue == "Mr. Ruocco"{
            teacherImage.image = UIImage(named: "unnamed-13")
        }else if frequent.rawValue == "Mr. Fitzpatrick"{
            teacherImage.image = UIImage(named: "unnamed")
        }
    }
    
}
    
    
