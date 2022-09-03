//
//  File.swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 06/02/1444 AH.
//

import Foundation

struct product : Identifiable{
    let id = UUID()
    var name : String
    var image : String
    var price : Int
    
}


var productlist = [ product(name: "to do 1", image: "to do 1", price: 2 ),
                    product(name: "to do 2", image: "to do 2", price: 2),
                    product(name: "to do 3" , image: "to do 3", price: 2),
                    product(name: "to do 4", image: "to do 4", price: 2),
                    product(name: "to do flower ", image: "to do flower ", price: 2),
                    product(name: "exam tracker", image: "exam tracker", price: 2),
                    product(name: "monthly plan 1", image: "monthly plan 1", price: 2),
                    product(name: "monthly planner 2", image: "monthly planner 2", price: 2),
                    product(name: "assignment tracker", image: "assignment tracker", price: 2),
                    product(name: "project planner ", image: "project planner ", price: 2),
                    product(name: "reading list", image: "reading list", price: 2),
                    product(name: "school supply list", image: "school supply list", price: 2),
                    product(name: "study guide", image: "study guide", price: 2)
                   
]
