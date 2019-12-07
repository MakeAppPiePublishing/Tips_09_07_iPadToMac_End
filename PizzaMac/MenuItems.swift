//
//  MenuItems.swift
//  PizzaMac
//
//  Created by Steven Lipton on 11/25/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import Foundation
public class MenuItems {
    struct MenuList:Codable{
        var items:[MenuItem] = []
    }
    
    var menu = MenuList()
    var menuItems:[MenuItem] = []
    
    init(){
        /// think about `[MenuItem].self` instead of `MenuList.self`
        /// requires getting rid of the `items` tag.
        /*
         let url = Bundle.main.url(forResource: input, withExtension: "json")!
         do {
         let jsonData = try Data(contentsOf: url)
         
         
         */
        let url = Bundle.main.url(forResource: "Menu", withExtension: "json")!
        do{
            let jsonData = try Data(contentsOf: url)
            try menuItems = JSONDecoder().decode([MenuItem].self, from: jsonData)
        } catch let error as NSError{
            print("Error reading JSON file: \(error.localizedDescription)")
        }
    }
    
    
    /// A class method to generate test menu items
    public class func testMenuItems()->[MenuItem]{
        var items:[MenuItem] = []
        for i in 0 ... 9 {
            items += [MenuItem(id: i)]
        }
        return items
    }
    
}


let jsonModel = """
{
    "items": [{
            "id":0,
            "name":"Margherita",
            "description":"The classic pizza of Buffalo Mozzarella, tomatoes, and basil on a classic crust.",
            "price": 5.00
        },
        {
            "id":1,
            "name":"Pepperoni",
            "description":"The New York Favorite. Spicy pepperoni on cheese and a classic crust",
            "price": 10.00
        },
        {   "id":2,
            "name":"Quattro Formaggi",
            "description":"For cheese lovers! Mozzarella, Gorgonzola,Parmesean and Fontina Blended into the ultimate white pizza.",
            "price": 12.00
        },
        {   "id":3,
            "name":"Quattro Formaggi Mac",
            "description":"For cheese lovers! Mozzarella, Gorgonzola,Parmesean and Fontina melted onto fresh Rotini for the ultimate Mac and cheese experience",
            "price": 12.00
        }
    ]
}
""".data(using: .utf8)!
