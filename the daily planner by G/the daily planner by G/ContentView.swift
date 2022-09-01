//
//  ContentView.swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 02/02/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack{
          Image("bakground new 100")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            NavigationView{
                List{
                    ForEach(myplanner){
                       planner in
                        NavigationLink(destination: {
                        planner_info(ourplanner: planner)
                        }, label: {
                            row_view(planner:planner.plannername)
                        })
                           
                        }
                        
                        
                        
                    }
                    
                    
                }.navigationTitle("movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
