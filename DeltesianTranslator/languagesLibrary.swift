//
//  languagesLibrary.swift
//  DeltesianTranslator
//
//  Created by Liam Davidson on 2020-06-02.
//  Copyright © 2020 Liam Davidson. All rights reserved.
//

import Foundation


////structure for any given language I might create
//struct Language {
//    //name of the language
//    var name : String
//
//    //shift values
//    var positiveOffsetValue : Int
//    var negativeOffsetValue : Int
//
//    func translateInto(textToTranslate: String) -> String{
//
//        //variables that will be needed
//        var translatedText = ""
//        var dictionaryToUse : Dictionary<Int, String> = puncuation
//
//        //loop through each letter in the text
//        for char in textToTranslate{
//            var character : String = "\(char)"
//            dictionaryToUse = determineDictionary(forCharacter: character)
//            var newCharacter : String
//
//            //get the index of the letter
//            var index = findKeyForCharacter(forCharacter: character, inDictionary: dictionaryToUse)
//
//            if dictionaryToUse != puncuation {
//                newCharacter = dictionaryToUse[index + positiveOffsetValue]!
//            } else {
//                newCharacter = character
//            }
//
//            translatedText += newCharacter
//
//        }
//
//
//        //return the new translated text
//        return translatedText
//
//    }
//}

//base language class
class language {
    
    //name of the language
    var name : String
    
    init(nameOfLanguage: String) {
        self.name = nameOfLanguage
    }
}

class druidic : language {
    
    //static function to translate text into druidic
    static func translateInto(textToTranslate: String) -> String {
        
        //variables that will be needed
        var translatedText = ""
        var dictionaryToUse = puncuation
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
            } else if dictionaryToUse == puncuation {
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



