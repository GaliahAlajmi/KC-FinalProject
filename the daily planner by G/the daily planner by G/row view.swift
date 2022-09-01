//
//  row view.swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 02/02/1444 AH.
//

import SwiftUI

struct row_view: View {
    @State var planner : String
    var body: some View {
        HStack{
            Image(planner)
                .resizable()
                .scaledToFit()
                
                .frame(width: 140, height: 140)
            
            Text(planner)
        }
    }
}

struct row_view_Previews: PreviewProvider {
    static var previews: some View {
        row_view(planner: "")
    }
}
