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

//function to translate from english to desired language
func translateFromEnglish(languageToTranslateTo: language, textToTranslate: String) -> String{
    
    //variables that will be needed
    var translatedText = ""
    var dictionaryToUse : Dictionary<Int, String>
    
    //loop through each letter in the text
    for char in textToTranslate{
        var character : String = "\(char)"
        var alphabet = determineDictionary(forCharacter: character)
        
        //get the index of the letter
        var index = findKeyForCharacter(forCharacter: character, inDictionary: alphabet)
    }
    
    //return the new translated text
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

//funtion to find out what dictionary to use for each letter
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
