//
//  main.swift
//  DeltesianTranslator
//
//  Created by Liam Davidson on 2020-05-29.
//  Copyright © 2020 Liam Davidson. All rights reserved.
//

import Foundation


var dwarvenLanguage = language(name: "Dwarven", dictionary: dwarvenRules)

print(dwarvenLanguage.translateToFantasy("My name is Liam and I am a Dwarf that is singing and running and having a festive time."))

