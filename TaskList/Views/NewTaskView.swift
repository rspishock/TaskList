//
//  NewTaskView.swift
//  TaskList
//
//  Created by Ryan Spishock on 3/22/20.
//  Copyright © 2020 Ryan Spishock. All rights reserved.
//

import SwiftUI

struct NewTaskView: View {
    var taskStore: TaskStore
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var text = ""
    
    var body: some View {
        Form {
            TextField("Task Name", text: $text)
            
            Button("Add") {
                self.taskStore.tasks.append(Task(name: self.text))
                self.presentationMode.wrappedValue.dismiss()
            }
            .disabled(text.isEmpty)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(taskStore: TaskStore())
    }
}
