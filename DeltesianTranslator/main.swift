//
//  main.swift
//  DeltesianTranslator
//
//  Created by Liam Davidson on 2020-05-29.
//  Copyright © 2020 Liam Davidson. All rights reserved.
//

import Foundation


//testing how to do user input
print("Input your text below:")
var inputTest = "value"
inputTest = readLine()!
print("You have typed \(inputTest)")



print(findKeyForCharacter(forCharacter: "c", inDictionary: determineDictionary(forCharacter: "c")))



var test = druidic(nameOfLanguage: "druidic")
print(druidic.translateInto(textToTranslate: "My name is Liam and I love Zebra's."))
