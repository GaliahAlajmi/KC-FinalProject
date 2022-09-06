//
//  ContentView.swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 02/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var prodectnumber = 0
    @State var prodectPrice = 0
  //  @State var numberofproducts = 0
    var columns = [GridItem(.adaptive(minimum:160),spacing: 20)]
    
    var body: some View {
     //   NavigationView {
            ScrollView {
                LazyVGrid(columns: columns,spacing: 20) {
                    ForEach(productlist, id: \.id){ product in product_card(proooductNumber: $prodectnumber, prodectPrice: $prodectPrice, product: product)
                         
                    }
                }
                .padding()
            }
           // .navigationTitle(Text("The daily planner "))
            .navigationBarTitle("", displayMode: .inline)
            .toolbar {
                NavigationLink{
                    cartview(produuctNumber: $prodectnumber, prodectPrice: $prodectPrice)
                        
                } label: {
                    cartbutton_(numberofproducts: prodectnumber)
                }
                
            }
       // }
        .navigationViewStyle(StackNavigationViewStyle())
        .background(Image("IMAGE 1444-02-09 23:49:58"))
        
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

