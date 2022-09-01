//
//  planner info.swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 02/02/1444 AH.
//

import SwiftUI

struct planner_info: View {
    var ourplanner : plannermodal
    let plannerItems = ["assignment tracker","exam tracker","monthly plan","monthly planner 2","project planner","reading list","school supply list","study guide","to do 1","to do 2","to do 3","to do 4","to do flower de"]

    var body: some View {
        ZStack{
            Color.black.opacity(0.3)
                .ignoresSafeArea()
            Image(ourplanner.plannername)
                            .blur(radius: 10)
            VStack{
                Image(ourplanner.plannername)
                    .resizable()
                    .scaledToFit()
                    
                    .frame(width: 250, height: 250 )
                
                Text(ourplanner.plannername)
                    .font(.title)
                    .foregroundColor(.white)
                ScrollView(.horizontal){
                    HStack{
                        ForEach(plannerItems, id:\.self){
                            planner in
                            VStack{
                                Text(planner)
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                                Image(planner)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                            }
                        }
                    }
                }.frame(width: 400, height: 400)
            }
        }
        
    
    }
}

struct planner_info_Previews: PreviewProvider {
    static var previews: some View {
        planner_info(ourplanner: plannermodal(plannername: ""))
    }
}
