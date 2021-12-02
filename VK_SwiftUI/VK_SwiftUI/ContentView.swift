//
//  ContentView.swift
//  VK_SwiftUI
//
//  Created by Елена Иванкина on 01.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var login = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            ScrollView{
                VStack{
                    Text("FriendsApp")
                        .padding(.top, 32)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                HStack{
                        Text("Логин")
                            .foregroundColor(.white)
                        Spacer()
                        TextField("", text: $login)
                            .frame(maxWidth: 150)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                    }
                HStack{
                        Text("Пароль")
                            .foregroundColor(.white)
                        Spacer()
                        SecureField("", text: $password )
                            .frame(maxWidth: 150)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            
                    }
                    
                    Button(action: {print ("Hello")}) {
                        Text("Log in")
                            .foregroundColor(.white)
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 50)
                    .disabled(login.isEmpty || password.isEmpty)
                    
                    Spacer()
                }
                .frame(maxWidth: 250)
            }
            
        }


        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
