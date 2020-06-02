//
//  myFunctions.swift
//  DeltesianTranslator
//
//  Created by Liam Davidson on 2020-06-02.
//  Copyright © 2020 Liam Davidson. All rights reserved.
//

import Foundation


extension String {
    mutating func replace(_ substring: String, with replacement: String) {
        var newString = self.replacingOccurrences(of: substring, with: replacement)
        self = newString
    }
}
