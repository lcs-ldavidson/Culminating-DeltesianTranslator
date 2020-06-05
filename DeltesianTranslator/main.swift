//
//  main.swift
//  DeltesianTranslator
//
//  Created by Liam Davidson on 2020-05-29.
//  Copyright © 2020 Liam Davidson. All rights reserved.
//

import Foundation


var dwarvenLanguage = language(name: "Dwarven", dictionary: dwarvenRules, shiftValue: 2)

var testText = "When the small town of Ryvon is attacked by a force of savage undead, those not slaughtered are left suffering from a mysterious disease. The lucky few to escape the infection must now race to discover the nature of the disease and the origin of the creatures that brought it. The Archdruids - the magical religious leaders of the town - finally find the answer, but a boy and his father must decide if they are willing to risk the lives of everyone to save the person they love most."


var translatedText = dwarvenLanguage.translateToFantasy(testText)

print(translatedText)

print(dwarvenLanguage.translateToEnglish(translatedText))

