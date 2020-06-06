//
//  main.swift
//  DeltesianTranslator
//
//  Created by Liam Davidson on 2020-05-29.
//  Copyright © 2020 Liam Davidson. All rights reserved.
//

import Foundation


var elven = language(name: "Elven", dictionary: elvenRules, shiftValue: 3)

var testText = "why is my helmet full of rock babies eating the last fish, I birthed that fish with my own two hands it was mine, man am I pissed at those rock babies, and then the rock babies grew up into caves which is wierd because now they are empty space but maybe it is symbolic of how when we grow we really just stretch and become hollow and meaningless inside mister snortgoblin was a chef who worked at the pringleton place fryery, a fast food restaurant at the American way mall. he sold a variety of fried foods, including sticks on a stick, fried mouse, and the largely popular pringleton place special fried oil. it tastes of oil and only oil. mister snortgoblin was happy to be employed"

print(elven.translateToFantasy(testText))

print(elven.translateToEnglish(elven.translateToFantasy(testText)))

