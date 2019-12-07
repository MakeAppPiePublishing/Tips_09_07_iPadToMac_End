//
//  MenuItem.swift
//  PizzaMac
//
//  Created by Steven Lipton on 11/25/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import Foundation
public struct MenuItem:Codable,Identifiable {
    public var id: Int
    public var name:String
    public var description:String
    public var price:Double
    ///  Create an object with all properties
    /// - Parameters:
    ///   - id: a unique ID as an `Int`.Conforms to `Indentifiable`
    ///   - name: Food item name as a `String`
    ///   - description: Food item description as a `String`
    ///   - price: Price as a `Double`
    public init(id:Int,name:String,description:String,price:Double){
        self.id = id
        self.name = name
        self.description = description
        self.price = price
        
    }
    
    /// Create a test oject with numbers for all values based on the `id`
    /// - Parameter id: a unique ID as an `Int`. Conforms to `Indentifiable`
    public init(id:Int){
        self.id = id
        self.name = NumberFormatter.localizedString(from: NSNumber(integerLiteral: id), number: .spellOut)
        self.description = "Menu Item " + name
        self.price = 9.99
    }
}
