//
//  ShoppingListView.swift
//  103-student-management-app
//
//  Created by Samantha Roman on 10/1/25.
//

import SwiftUI

struct ShoppingListView: View {
    
    @State private var shoppingList: [String] = ["Eggs", "Apples"]  // ----- store list
    
    @State private var newItem: String = "" // ------ Store input from text filed
    
    
    var body: some View {
      // opt + cmd + Arrow L/R (Collapse/Open)
        NavigationView{
            
            ZStack {
                Color.gray.opacity(0.1)
                    .ignoresSafeArea()
                VStack {
                    
                    Text("Shopping List") // title
                        .font(.largeTitle) //~~ title
                        .foregroundStyle(Color.blue) // ~~ title
                        .padding() // ~~ title
                    
                    //Display list of items in the state variable
                    
                    List {
                        // for each item in my shoping list display with unique value
                        // then in bracket "item" in shopping list display text.
                        // similar to for loop
                        
                        ForEach(shoppingList, id:\.self) {item in
                            Text(item)
                        }
                        .listStyle(PlainListStyle())
                        .scrollContentBackground(.hidden)
                        
                        
                        
                    } // End - List
                    
                    
                    HStack{
                        // input area to add new item. Then you also need a
                        // state variable to store the input in the text field and
                        // save it to the new item State variable.
                        
                        TextField("Add new shopping item...", text: $newItem)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.gray, lineWidth: 1)
                                .opacity(0.2))
                            .padding()
                        
                        Button(action: { // button to add item
                            // action/code - add item if text box is NOT ! Empty
                            addItem(newItem)
                            newItem = ""
                            
                        }){ // styling of button
                            Image(systemName: "arrowshape.up.fill") // button image
                                .padding()
                                .background(Color.blue)
                                .foregroundStyle(Color.white)
                                .cornerRadius(30)
                        }
                        .padding()
                        
                    } // END - HStack (input field)

                } // End - VStack (inside ZStack)
                .frame(maxWidth:.infinity, maxHeight: .infinity)
                .background(Color.white)
                .cornerRadius(20)
                .padding()
                
            } // END - ZStack
            .navigationBarTitle("Listify", displayMode: .inline)
            .toolbar {
                Menu {
                    // action/buttons
                    Button("Sort A -> Z") {
                        // action - take original list and transform it into a sorted list by Ascending order
                       shoppingList = shoppingList.sorted(by: < )
                        
                    }
                    Button("Reversed Order") {
                        // action - take original shopping list and transform it into a sorted list by Descending order
                        shoppingList = shoppingList.sorted(by: >)
                    }
                } label : {
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .imageScale(.large)
                }
                .padding()
                
            } // END - toolbar
            
        } // END - NavigationView
        
    } // END - Body
    
    private func addItem(_ item: String) {
        // if the imput field ( ! = is NOT ) empty
        if !item.isEmpty {
            shoppingList.append(item)
        }
    }
    
} // END - ShoppingListView

#Preview {
    ShoppingListView()
}
