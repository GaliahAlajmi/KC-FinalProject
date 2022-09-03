//
//  cartview.swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 07/02/1444 AH.
//

import SwiftUI

struct cartview: View {
    @EnvironmentObject var cartmanger: cartmanger
    var body: some View {
        ScrollView{
            if cartmanger.products.count > 0 {
                ForEach(cartmanger.products, id: \.id){
                    product in
                    productrow(product: product)
                }
                
                HStack{
                    Text("Your cart total is")
                    Spacer()
                    
                    Text("KD\(cartmanger.total).00")
                        .bold()
                    
                }
                .padding()
                paymentbutton_(action: {})
                    .padding()
            }else{
                Text("Your cart is empty")
            }
           
        }
        .navigationTitle(Text("My cart"))
        .padding(.top)
    }
}

struct cartview_Previews: PreviewProvider {
    static var previews: some View {
        cartview()
            .environmentObject(cartmanger())
    }
}
