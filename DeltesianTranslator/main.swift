//
//  main.swift
//  DeltesianTranslator
//
//  Created by Liam Davidson on 2020-05-29.
//  Copyright © 2020 Liam Davidson. All rights reserved.
//

import Foundation


var dwarvenLanguage = language(name: "Dwarven", dictionary: dwarvenRules, shiftValue: 2)

var testText = "My name is Liam. I love fantasy."


var translatedText = dwarvenLanguage.translateToFantasy(testText)

print(translatedText)

print(dwarvenLanguage.translateToEnglish(translatedText))

