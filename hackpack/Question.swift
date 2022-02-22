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

//var tranchida = 0, shaw = 0, gru = 0, kaplan = 0, docRob = 0, stanek = 0, francis = 0, johnson = 0, ruocco = 0, diNardo = 0, casper = 0, flan = 0, canterino = 0, loomis = 0, ek = 0, wright = 0 , fitz = 0, baal = 0, klimenko = 0, moriarty = 0, lobko = 0

//var tally : [Int] = [tranchida, shaw, gru, kaplan, docRob, stanek, francis, johnson, ruocco, diNardo, casper, flan, canterino, loomis, ek, wright, fitz, baal, klimenko, moriarty, lobko]

var tally: [Teacher : Int] = [.tranchida : 0, .shaw : 0, .kaplan : 0, .stanek : 0, .francis : 0, .johnson : 0, .ruocco : 0, .diNardo : 0, .casper : 0, .flan : 0, .canterino : 0, .ek : 0, .fitz : 0, .baal : 0, .klimenko : 0, .moriarty : 0, .lobko : 0]

enum Teacher: String {
    case tranchida = "Ms. Tranchida", shaw = "Mr. Shaw", kaplan = "Ms. Kaplan", stanek = "Ms. Stanek", francis = "Mr. Francis", johnson = "Ms. Johnson", ruocco = "Mr. Ruocco", diNardo = "Ms. DiNardo", casper = "Ms. Casper", flan = "Mr. Flanigan", canterino = "Mr. Canterino", ek = "Ms. Ek", fitz = "Mr. Fitzpatrick", baal = "Ms. Baal", klimenko = "Mr. Klimenko", moriarty = "Ms. Moriarty", lobko = "Mr. Lobko"

    var definition: String{
        switch self {
        case .tranchida:
            return ""
        case .shaw:
            return ""
        case .kaplan:
            return ""
        case .stanek:
            return ""
        case .francis:
            return ""
        case .johnson:
            return ""
        case .ruocco:
            return ""
        case .diNardo:
            return ""
        case .casper:
            return ""
        case .flan:
            return ""
        case .baal:
            return ""
        case .klimenko:
            return ""
        case .moriarty:
            return ""
        case .lobko:
            return ""
        case .canterino:
            return ""
        case .ek:
            return ""
        case .fitz:
            return ""
        }
    }
}

