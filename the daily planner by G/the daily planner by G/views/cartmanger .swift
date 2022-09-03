//
//  cart manger .swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 07/02/1444 AH.
//

import Foundation

class cartmanger: ObservableObject{
    @Published private(set) var products : [product] = []
    @Published private(set) var total: Int = 0
    
    func addtocart(product: product){
        products.append(product)
        total += product.price
        
    }
    func removefromcart(product: product){
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
    
    
    
    
}
