//
//  Question.swift
//  hackpack
//
//  Created by Dechhen Sherpa on 1/19/22.
//

import Foundation

struct Question {
    var text: String
    var answers: [Answer]
}

struct Answer {
    var text: String
    var type: Teacher
}

var tranchida = 0, shaw = 0, kaplan = 0, stanek = 0, francis = 0, johnson = 0, ruocco = 0, diNardo = 0, casper = 0, flan = 0, canterino = 0, ek = 0, fitz = 0, baal = 0, klimenko = 0, moriarty = 0, lobko = 0

//var tally : [Int] = [tranchida, shaw, gru, kaplan, docRob, stanek, francis, johnson, ruocco, diNardo, casper, flan, canterino, loomis, ek, wright, fitz, baal, klimenko, moriarty, lobko]

var tally: [Teacher : Int] = [.tranchida : tranchida, .shaw : shaw, .kaplan : kaplan, .stanek : stanek, .francis : francis, .johnson : johnson, .ruocco : ruocco, .diNardo : diNardo, .casper : casper, .flan : flan, .canterino : canterino, .ek : ek, .fitz : fitz, .baal : baal, .klimenko : klimenko, .moriarty : moriarty, .lobko : lobko]

enum Teacher: String {
    case tranchida = "Ms. Tranchida", shaw = "Mr. Shaw", kaplan = "Ms. Kaplan", stanek = "Ms. Stanek", francis = "Mr. Francis", johnson = "Ms. Johnson", ruocco = "Mr. Ruocco", diNardo = "Ms. DiNardo", casper = "Ms. Casper", flan = "Mr. Flanigan", canterino = "Mr. Canterino", ek = "Ms. Ek", fitz = "Mr. Fitzpatrick", baal = "Ms. Baal", klimenko = "Mr. Klimenko", moriarty = "Ms. Moriarty", lobko = "Mr. Lobko"

    var definition: String{
        switch self {
        case .tranchida:
            return "Congratulations, you are most similar to Ms. Tranchida!  When you're not walking your dog, critiquing your students singing, or playing duck duck goose with your advisory we may find you in the Hufflepuff common room listening to Taylor Swift or vacationing at Chichen Itza.  You like to eat bacon egg and cheese sandwiches from bagel emporium, white bread bread as well and your twice daily cups of coffee."
        case .shaw:
            return "Congratulations, you are most similar to Mr. Shaw!  When you're not walking your husky, powerlifting or critiquing your students singing, we may find you in the Gryffindor common room listening to Taylor Swift or vacationing at colonial Williamsburg.  You like to eat bacon egg and cheese sandwiches from bagel emporium, hackley chicken tenders, or rye bread as well as your daily singular cup of coffee."
        case .kaplan:
            return "Congratulations, you are most similar to Ms. Kaplan!  When you're not walking, critiquing your students singing, we may find you in the Gryffindor common room listening to Taylor Swift or vacationing at colonial Williamsburg.  You like to eat bacon egg and cheese sandwiches from bagel emporium, hackley chicken tenders, or rye bread as well as your daily singular cup of coffee."
        case .stanek:
            return ""
        case .francis:
            return ""
        case .johnson:
            return ""
        case .ruocco:
            return "Congratulations, you are most similar to Mr. Ruocco!  You're a fun loving, dog walking, and sourdough eating Hufflepuff.  We may catch you sipping your 4th cup of coffee eating a bacon egg and cheese on an everything bagel from Bagel Emporium, blasting Pink Floyd on an architects tour of Chichen Itza.  You may be found sitting alone in your advisory room on day 7 eating Turkey Tetrazzini."
        case .diNardo:
            return "Congratulations, you are most similar to Ms. DiNardo!  When you're not walking, critiquing your students singing, we may find you in the Gryffindor common room listening to Taylor Swift or vacationing at colonial Williamsburg.  You like to eat bacon egg and cheese sandwiches from bagel emporium, hackley chicken tenders, or rye bread as well as your daily singular cup of coffee."
        case .casper:
            return ""
        case .flan:
            return "Congratulations, you are most similar to Mr. Flanigan!  When you're not walking, critiquing your students singing, we may find you in the Gryffindor common room listening to Taylor Swift or vacationing at colonial Williamsburg.  You like to eat bacon egg and cheese sandwiches from bagel emporium, hackley chicken tenders, or rye bread as well as your daily singular cup of coffee."
        case .baal:
            return "Congratulations, you are most similar to Ms. Baal!  When you're not walking, critiquing your students singing, we may find you in the Gryffindor common room listening to Taylor Swift or vacationing at colonial Williamsburg.  You like to eat bacon egg and cheese sandwiches from bagel emporium, hackley chicken tenders, or rye bread as well as your daily singular cup of coffee."
        case .klimenko:
            return ""
        case .moriarty:
            return "Congratulations, you are most similar to Ms. Moriarty!  When you're not walking, critiquing your students singing, we may find you in the Gryffindor common room listening to Taylor Swift or vacationing at colonial Williamsburg.  You like to eat bacon egg and cheese sandwiches from bagel emporium, hackley chicken tenders, or rye bread as well as your daily singular cup of coffee."
        case .lobko:
            return "Congratulations, you are most similar to Mr. Lobko!  You may be found in the ravenclaw common room, freshly adorned with lamps and other lobko decorations blasting pink floyd and munching on a bacon egg and cheese on an everything bagel.  You partake in the simple things; sitting silently with your advisory on day 7s and roaming around the Stratford upon Avon cemetery, and checking out books at the Codrington Library, but if a students were to sing on top of your table at the start of class––you'd certainly chime in and sing along!"
        case .canterino:
            return "Congratulations, you are most similar to Mr. Canterino!  When you're not walking, critiquing your students singing, we may find you in the Gryffindor common room listening to Taylor Swift or vacationing at colonial Williamsburg.  You like to eat bacon egg and cheese sandwiches from bagel emporium, hackley chicken tenders, or rye bread as well as your daily singular cup of coffee."
        case .ek:
            return "Congratulations, you are most similar to Ms. Ek!  You may be found blasting Taylor Swift while walking your dog or playing duck duck goose with your advisory.  You are highly caffeine dependent, and frequent coffee labs in particular.  Alternatively, we could find you in the Ravenclaw common room eating plain bagel and planning a trip to Chichen Itza"
        case .fitz:
            return "Congratulations, you are most similar to Mr. Fitzpatrick!  You may be found blasting Bruce Springsteen as you exit Bagel Emporium, fisting a large iced coffee in one hand and a bacon egg and cheese in the other.  Alternatively, we could find you in the Gryffindor common room eating a grilled cheese on whole wheat bread before crossfit in the Johnson Center on Monday and Wednesdays, critiquing students singing on tables, or perusing Colonial Williamsburg."
        }
    }
}

