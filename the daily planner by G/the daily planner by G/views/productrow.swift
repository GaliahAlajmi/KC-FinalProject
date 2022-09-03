//
//  productrow.swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 07/02/1444 AH.
//

import SwiftUI

struct productrow: View {
    @EnvironmentObject var cartmanger : cartmanger
    var product : product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            
            VStack(alignment: .leading,spacing: 10){
                Text(product.name)
                    .bold()
                
                
                Text("KD\(product.price)")
                
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.859, brightness: 0.932, opacity: 0.886))
                .onTapGesture {
                    cartmanger.removefromcart(product: product)
                }
            
        }
        .padding()
        .frame( maxWidth: .infinity, alignment: .leading)
    }
}

struct productrow_Previews: PreviewProvider {
    static var previews: some View {
        productrow(product: productlist[3])
            .environmentObject(cartmanger())
    }
}
