//
//  HeadingView.swift
//  PizzaMac
//
//  Created by Steven Lipton on 11/25/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

#if !targetEnvironment(macCatalyst)
import ClassKit
#else
//TODO: something else
#endif
import SwiftUI

struct HeadingView: View {
    var body: some View {
        ZStack {
            Image("Koa")
                .resizable()
                .scaledToFit()
            HStack {
                Text("Huli Pizza Company")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .shadow(radius: 3.0)
                Text(UIDevice.current.systemName)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
            
        }
        
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView()
    }
}
