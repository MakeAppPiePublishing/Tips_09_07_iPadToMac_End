//
//  RowView.swift
//  PizzaMac
//
//  Created by Steven Lipton on 11/25/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

public struct RowView:View {
    @State public var showDetailView = false
    public var item:MenuItem
    public init(item:MenuItem){
        self.item = item
    }
    public var body: some View{
        HStack{
            //Image(systemName: "\(item.id).square.fill")
            Image(uiImage:UIImage(named:"\(item.id)_100w.jpg") ?? UIImage(systemName: "exclamationmark.triangle")! )
                .clipShape(Circle())
                .shadow(radius: 10.0)
            Text(item.name)
            
            Spacer()
            Text(NumberFormatter.localizedString(from: NSNumber(value: item.price), number: .currency))
                .font(.headline)
                .foregroundColor(.red)
                .fontWeight(.heavy)
            Image(systemName: showDetailView ? "chevron.right.square.fill" : "square")
            
        }
        .onTapGesture {
            self.showDetailView.toggle()
        }
        .sheet(isPresented: $showDetailView, content: {
            DetailView(showDetailView: self.$showDetailView, item: self.item)
        })
            .font(.title)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(item:MenuItem(id: 6))
    }
}
