//
//  log in screen .swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 04/02/1444 AH.
//

import SwiftUI

struct log_in_screen_: View {
    @State private var Username = ""
    @State private var Password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingloginscreen = false
    
    var body: some View {
        NavigationView{
          ZStack{
            Image("background color")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            
                
               VStack{
                
                    Image("logo new")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                         
                       
                    Text("login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    
                        TextField("Username",text: $Username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongUsername))
                    
                    TextField("Password",text: $Password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red,width: CGFloat(wrongPassword))
                 
                    Button("login"){
                        authenticateUser(Username: Username, Password: Password)
                         
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Text("you are logged in @\(Username)"),isActive: $showingloginscreen){
                        EmptyView()
                        
                    }   .padding()
                    
                    
                }
            }
            
        }
        .navigationBarHidden(true)
    }
func  authenticateUser(Username:String,Password: String){
           if Username.lowercased() == "" {
               wrongUsername = 0
               if Password.lowercased() == "abc123"{
                   wrongPassword = 0
                   showingloginscreen = true
               }else{
                   wrongPassword = 2
               }
           }else{
               wrongUsername = 2
           }
    }
}

struct log_in_screen__Previews: PreviewProvider {
    static var previews: some View {
        log_in_screen_()
    }
}
