//
//  product card.swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 06/02/1444 AH.
//

import SwiftUI

struct product_card: View {
    @Binding var prodectnumber : Int
    
    var product : product
    var body: some View {
        ZStack (alignment:.topTrailing){
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 100)
                    .scaledToFit()
                
                VStack(alignment:.leading){
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)KD")
                        .font(.caption)
                }
                .padding()
                .frame(width: 100, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 100, height: 250)
        .shadow(radius: 3)
            
            Button{
               print("Add to cart")
            }label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
        
    }
}

//struct product_card_Previews: PreviewProvider {
//    static var previews: some View {
////        product_card(product: productlist[0])
//            .environmentObject(cartmanger())
//    }
//}
