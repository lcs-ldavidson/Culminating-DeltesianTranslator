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
    var name : String
    var rules : Dictionary<String, String>
    
    init(name: String, dictionary: Dictionary<String, String>) {
        self.name = name
        self.rules = dictionary
    }
}

