//
//  ContentView.swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 02/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
  @StateObject var cartmanger = cartmanger
    
    var columns = [GridItem(.adaptive(minimum:160),spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns,spacing: 20) {
                    ForEach(productlist, id: \.id){ product in product_card(product: product)
                            .environmentObject(cartmanger)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("The daily planner "))
            
            .toolbar {
                NavigationLink{
                    cartview()
                        .environmentObject(cartmanger)
                } label: {
                    cartbutton_(numberofproducts: cartmanger.products.count)
                }
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .background(Image("bakground new 100"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

