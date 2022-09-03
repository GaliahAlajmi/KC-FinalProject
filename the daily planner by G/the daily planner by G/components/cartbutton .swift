//
//  cartbutton .swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 07/02/1444 AH.
//

import SwiftUI

struct cartbutton_: View {
    var numberofproducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top,5)
            
            if numberofproducts > 0 {
                Text("\(numberofproducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.859, brightness: 0.932, opacity: 0.886))
                    .cornerRadius(50)
                
            }
        }
    }
}

struct cartbutton__Previews: PreviewProvider {
    static var previews: some View {
        cartbutton_(numberofproducts: 1)
    }
}
