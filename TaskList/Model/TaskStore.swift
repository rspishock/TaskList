//
//  TaskStore.swift
//  TaskList
//
//  Created by Ryan Spishock on 3/1/20.
//  Copyright © 2020 Ryan Spishock. All rights reserved.
//

import Combine

class TaskStore: ObservableObject {
    @Published var tasks = [
        "Code a SwiftUI app",
        "Create portfolio site",
        "Create Les's site",
        "Schedule OSCP course",
        "Write some Python",
        "Update Kali drive",
        "Finish password app",
        "Finsih web dev course",
        "Finish JavaScript course",
        "Learn ReactJS"
    ].map { Task(name: $0) }
}

