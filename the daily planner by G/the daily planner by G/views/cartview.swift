//
//  cartview.swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 07/02/1444 AH.
//

import SwiftUI

struct cartview: View {
    @EnvironmentObject var cartmanger: cartmanger
    @Binding var produuctNumber : Int
    @Binding var prodectPrice : Int
    var body: some View {
        ScrollView{
//            if cartmanger.products.count > 0 {
//                ForEach(cartmanger.products, id: \.id){
//                    product in
//                    productrow(product: product)
//                }
//
            Text("Your cart : \(produuctNumber)")
                HStack{
                    
                    Text("Your cart total is : \(prodectPrice)")
                    Spacer()
                    
//                    Text("KD\(cartmanger.total).00")
//                        .bold()
                    
                }
                .padding()
              
//            }else{
//                Text("Your cart is empty")
//            }
           
        }
        .navigationTitle(Text("My cart"))
        .padding(.top)
    }
}

struct cartview_Previews: PreviewProvider {
    static var previews: some View {
        cartview(produuctNumber: .constant(7), prodectPrice: .constant(9))
            .environmentObject(cartmanger())    }
}
