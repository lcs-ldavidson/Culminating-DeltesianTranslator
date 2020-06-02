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
    var dictionaryToUse : Dictionary<Int, String>
    
    for char in textToTranslate{
        var character : String = "\(char)"
        var index = findKeyForCharacter(forCharacter: character, inDictionary: determineDictionary(forCharacter: character))
    }
    
    return translatedText
    
}

//function to find the key of a chracter in a given dictionary and return it
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


func determineDictionary(forCharacter searchcharacter: String) -> Dictionary<Int, String> {
    var dictionaryToUse : Dictionary<Int, String> = puncuation
    
    if consonantLower.values.contains(searchcharacter) {
        dictionaryToUse = consonantLower
    }
    if consonantUpper.values.contains(searchcharacter) {
        dictionaryToUse = consonantUpper
    }
    if vowelLower.values.contains(searchcharacter) {
        dictionaryToUse = vowelLower
    }
    if vowelUpper.values.contains(searchcharacter) {
        dictionaryToUse = vowelUpper
    }
    
    return dictionaryToUse
}
