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
    var offsetValue : Int
    
    //initializer
    init(name: String, dictionary: Dictionary<String, String>, shiftValue: Int) {
        self.name = name
        self.rules = dictionary
        offsetValue = shiftValue
    }
    
    //function to translate into the fantasy language
    func shiftText(_ textToTranslate: String) -> String {

        //variables that will be needed
        var shiftedText = ""
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
                    newChar = dictionaryToUse[index + offsetValue]!
                    translateLetter = false
                } else {
                    newChar = char
                }
            }

            shiftedText += newChar

        }


        //return the new translated text
        return shiftedText

    }
    
    func applyRules(toText text: String) -> String {
        var appliedText = text
        for u in 0...rules.count - 1{
            appliedText.replace(self.shiftText(rules.getKeyAtIndex(u)), with: rules.getValueAtIndex(u))
        }
        return appliedText
    }
    
    
    
    
    func translateToFantasy(_ text: String) -> String {
       return applyRules(toText: shiftText(text))
    }
    
    
    
    
    
    
    
    
    
    
    func shiftTextBack(_ textToTranslate: String) -> String {

        //variables that will be needed
        var shiftedText = ""
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
                    newChar = dictionaryToUse[index + (dictionaryToUse.count/2) - offsetValue]!
                    translateLetter = false
                } else {
                    newChar = char
                }
            }

            shiftedText += newChar

        }


        //return the new translated text
        return shiftedText

    }
    
    func applyRulesBack(toText text: String) -> String {
        var appliedText = text
        for u in 0...rules.count - 1{
            var realU = u
            appliedText.replace(rules.getValueAtIndex(realU), with: shiftText(rules.getKeyAtIndex(realU)))
        }
        return appliedText
    }
    
    func translateToEnglish(_ text: String) -> String {
       return shiftTextBack(applyRulesBack(toText: text))
    }
    
}



