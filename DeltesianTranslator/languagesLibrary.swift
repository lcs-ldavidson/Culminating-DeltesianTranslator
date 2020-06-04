//
//  languagesLibrary.swift
//  DeltesianTranslator
//
//  Created by Liam Davidson on 2020-06-02.
//  Copyright © 2020 Liam Davidson. All rights reserved.
//

import Foundation

//base class for a language
class language {
    
    //universal variables
    var name : String
    var rules : Dictionary<String, String>
    var offSetValue : Int
    
    //initializer
    init(name: String, dictionary: Dictionary<String, String>, shiftValue: Int) {
        self.name = name
        self.rules = dictionary
        offSetValue = shiftValue
    }
    
    //function to translate into the fantasy language
    func translateToFantasy(_ textToTranslate: String) -> String {

        //variables that will be needed
        var translatedText = ""
        var dictionaryToUse = punctuation
        var translateLetter : Bool = true

        //loop through each letter in the text
        for character in textToTranslate{

            //set variables
            var newChar : String = ""
            var char : String = "\(character)"
            dictionaryToUse = determineDictionary(forCharacter: char)

            //determine if the character should be translated and if so, do it
            if char == " " {
                translateLetter = true
                newChar = " "
            } else if dictionaryToUse == punctuation {
                newChar = char
            } else {
                if translateLetter == true || dictionaryToUse == vowelLower || dictionaryToUse == vowelUpper {
                    var index = findKeyForCharacter(forCharacter: char, inDictionary: dictionaryToUse)
                    newChar = dictionaryToUse[index + 1]!
                    translateLetter = false
                } else {
                    newChar = char
                }
            }

            translatedText += newChar

        }


        //return the new translated text
        return translatedText

    }
    
    
}



