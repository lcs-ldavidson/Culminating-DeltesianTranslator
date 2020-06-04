//
//  main.swift
//  DeltesianTranslator
//
//  Created by Liam Davidson on 2020-05-29.
//  Copyright © 2020 Liam Davidson. All rights reserved.
//

import Foundation


var dwarvenLanguage = language(name: "Dwarven", dictionary: dwarvenRules, shiftValue: 1)

var testText = " Artemis donned a mottled green and brown cloak and took his longbow off the wall. He slung it across his back, strapped a quiver and a knife to his belt, and pulled on his boots. As he moved to the room, he caught sight of one of ? his hunting knives on the wall. It was balanced on two nails hammered into the wood. This was one of Artemis’s smaller knives; his father had given it to him when he was younger to skin game that they caught together. The blade was finely sharpened on one side, serrated on the back, and had a handle wrapped in torn cloth. "


var translatedText = dwarvenLanguage.translateToFantasy(testText)

print(translatedText)

print(dwarvenLanguage.translateToEnglish(translatedText))
