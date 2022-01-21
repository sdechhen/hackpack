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

enum Teacher: String {
    case tranchida = "Ms. Tranchida", shaw = "Mr. Shaw", gru = "Mr. Gruenberg", kaplan = "Ms. Kaplan", docRob = "Doc Rob", stanek = "Ms. Stanek", francis = "Mr. Francis", johnson = "Ms. Johnson", ruocco = "Mr. Ruocco", diNardo = "Ms. DiNardo", casper = "Ms. Casper", flan = "Mr. Flanigan", canterino = "Mr. Canterino", loomis = "Mr. Loomis", ek = "Ms. Ek", wright = "Mr. Wright", fitz = "Mr. Fitzpatrick", baal = "Ms. Baal", klimenko = "Mr. Klimenko", moriarty = "Ms. Moriarty", lobko = "Mr. Lobko", clark = "Mr. Clark"

    var definition: String{
        switch self {
        case .tranchida:
            return ""
        case .shaw:
            return ""
        case .gru:
            return ""
        case .kaplan:
            return ""
        case .docRob:
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
        case .clark:
            return ""
        case .canterino:
            return ""
        case .loomis:
            return ""
        case .ek:
            return ""
        case .wright:
            return ""
        case .fitz:
            return ""
        }
    }
}

