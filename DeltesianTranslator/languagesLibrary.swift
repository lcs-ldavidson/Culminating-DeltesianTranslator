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
    
    // function to translate a given string into the language
    func translateToFantasy(_ text: String) -> String {
        
        var shiftedText : String = ""
        
        for e in text {
            var char : String = "\(e)"
            var dictionaryToUse = determineDictionary(forCharacter: char)
            var index = findKeyForCharacter(forCharacter: char, inDictionary: dictionaryToUse)
            var newIndexInt = index + offSetValue
            
            if dictionaryToUse != punctuation {
                shiftedText += dictionaryToUse[newIndexInt]!
            } else {
                shiftedText += char
            }
            
        }
        
        //        var textToTranslate = text
        //        var lowerCaseText = textToTranslate.lowercased()
        //
        //        for i in 0...(rules.count - 1){
        //
        //            lowerCaseText.replace(rules.getKeyAtIndex(i), with: rules.getValueAtIndex(i))
        //        }
        //
        //        return lowerCaseText
        
        return shiftedText
        
    }
    
}



