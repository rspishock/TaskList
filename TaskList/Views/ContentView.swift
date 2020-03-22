//
//  ContentView.swift
//  TaskList
//
//  Created by Ryan Spishock on 3/1/20.
//  Copyright © 2020 Ryan Spishock. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskStore: TaskStore
    @State var modalIsPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(taskStore.tasks) {
                    task in Text(task.name)
                }
                .onMove {
                    sourceIndicies, destinationIndex in self.taskStore.tasks.move(fromOffsets: sourceIndicies, toOffset: destinationIndex)
                }
                .onDelete {
                    IndexSet in self.taskStore.tasks.remove(atOffsets: IndexSet)
                }
            }
            .navigationBarTitle("Tasks")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                Button(
                    action: { self.modalIsPresented = true }
                ) {
                    Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $modalIsPresented) {
            NewTaskView(taskStore: self.taskStore)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(taskStore: TaskStore())
    }
}
