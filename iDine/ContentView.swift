//
//  ContentView.swift
//  iDine
//
//  Created by Buck on 2019/9/24.
//  Copyright © 2019 Buck. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header:
                        Text(section.name)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(.accentColor)
                    ) {
                        ForEach(section.items) { item in
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("Menu")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
