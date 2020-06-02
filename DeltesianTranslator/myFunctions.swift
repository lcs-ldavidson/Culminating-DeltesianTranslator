//
//  myFunctions.swift
//  DeltesianTranslator
//
//  Created by Liam Davidson on 2020-06-02.
//  Copyright © 2020 Liam Davidson. All rights reserved.
//

import Foundation


//function to replace parts of A STRING WITHOUT MAKING A COPY
extension String {
    mutating func replace(_ substring: String, with replacement: String) {
        var newString = self.replacingOccurrences(of: substring, with: replacement)
        self = newString
    }
}

//get the value from a Dictionary at a specific index
extension Dictionary {
    func getValueAtIndex(_ index: Int) -> Value {
        var indexWithValue = self.index(startIndex, offsetBy: index)
        return self.values[indexWithValue]
    }
}

//get the key at an index
extension Dictionary {
    func getKeyAtIndex(_ index: Int) -> Key {
        var indexWithValue = self.index(startIndex, offsetBy: index)
        return self.keys[indexWithValue]
    }
}
