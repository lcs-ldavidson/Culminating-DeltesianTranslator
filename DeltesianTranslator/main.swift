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

for character in inputTest {
    let dictionaryToUse = vowelLower
}

print("You have typed \(inputTest)")


func translateFromEnglish(languageToTranslate: language, textToTranslate: String) -> String{
    
    var translatedText = ""
    
    for character in textToTranslate {
        
    }
    
    return translatedText
    
}

func findKeyForCharacter(forCharacter targetCharacter: String, inDictionary dictionary: Dictionary <Int, String>) -> Int {
    
    var keyToReturn : Int = 69
    
    for i in 1...dictionary.count {
        if dictionary[i] == targetCharacter {
            keyToReturn = i
        }
    }
    return keyToReturn
}

print(findKeyForCharacter(forCharacter: "g", inDictionary: consonantLower))
