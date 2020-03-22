//
//  Tasks.swift
//  TaskList
//
//  Created by Ryan Spishock on 3/1/20.
//  Copyright © 2020 Ryan Spishock. All rights reserved.
//

import Foundation

struct Task: Identifiable {
    let id = UUID()
    
    var name: String
    var completed = false
}
