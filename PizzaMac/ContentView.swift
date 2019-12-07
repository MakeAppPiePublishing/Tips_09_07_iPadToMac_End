//
//  ContentView.swift
//  PizzaMac
//
//  Created by Steven Lipton on 11/25/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var items:[MenuItem] = MenuItems().menuItems
    var body: some View {
        VStack{
            HeadingView()
            List(items){ item in
                RowView(item: item)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


