//
//  SwiftUIView.swift
//  PizzaMac
//
//  Created by Steven Lipton on 11/25/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

public struct DetailView:View {
    @Binding public var showDetailView:Bool
    public var item:MenuItem
    public var body: some View{
        VStack(alignment:.leading){
            Button(action: {self.showDetailView = false}, label: {
                HStack{
                    Image(systemName:"chevron.down")
                    Text("Back")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                        .font(.body)
                    Text(item.name)
                        .font(.title)
                        .padding()
                    Spacer()
                }
                .foregroundColor(.primary)
                .background(Color.green)
            })
            VStack(alignment:.leading){
                //Image(systemName: "\(item.id).square.fill")
                HStack(alignment:.top){ Image(uiImage:UIImage(named:"\(item.id)_100w.jpg") ?? UIImage(systemName: "exclamationmark.triangle")! )
                    
                    .resizable()
                    .frame(width: 300, height: 200, alignment: .bottomLeading)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 10)
                   Spacer()
                Text(NumberFormatter.localizedString(from: NSNumber(value: item.price), number: .currency))
                    .font(UIScreen.main.traitCollection.horizontalSizeClass == .regular ? .title : .body)
                        .foregroundColor(.red)
                        .fontWeight(.heavy)
                }
                Text(item.description)
                    .font(.headline)
            }
            .padding()
            Spacer()
        }
        .background(Color.green.opacity(0.75))
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(showDetailView: .constant(false) , item: MenuItem(id: 2))
    }
}
