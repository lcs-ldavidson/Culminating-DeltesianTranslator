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
    
    //initializer
    init(name: String, dictionary: Dictionary<String, String>) {
        self.name = name
        self.rules = dictionary
    }
    
    // function to translate a given string into the language
           func translateToFantasy(_ text: String) -> String {
               var textToTranslate = text
               
               for i in 0...(rules.count - 1){
                   textToTranslate.replace(rules.getKeyAtIndex(i), with: rules.getValueAtIndex(i))
               }
               
               return textToTranslate
               
           }
}



