//
//  LoginView.swift
//  Health
//
//  Created by Andrea Romano 21/11/2023.
//

import SwiftUI

struct LoginView: View {
    
    @State var name: String
    @State var surname: String
    @Environment(\.modelContext) var modelContext
    @State var isLogged: Bool = false
    @State private var isButtonClicked: Bool = false
    @State private var showAlert: Bool = false
    
    @AppStorage("isWelcomeScreenOver") var isWelcomeScreenOver = false
    @Environment(\.dismiss) var dismiss
    @State var isPressed: Bool = false
    
    var body: some View {
        NavigationView{
                VStack {
                    Circle().shadow(radius: 1.5).foregroundStyle(.yellow)
                        .frame(width: 110, height: 100)
                        .overlay {
                            Image("Profile")
                                .resizable()
                                .frame(width: 115, height: 115)
                                .font(.system(size: 80))
                                .padding(.bottom, 2)
                                .padding(.top, 8)
                                .padding(.trailing, 3)
                        }
                    
                    Text("Set up Health Details")
                        .font(.title)
                        .bold()
                        .padding()
                    Text("Your health details are the basic information the app needs to provide you with relevant information.")
                        .font(.headline)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .frame(width: 350)
                        .padding(.top, 20)
                        .padding(.bottom, 50)
                    
                    Divider()
                    HStack{
                        Text("First Name").bold()
                        TextField("Name", text: $name)
                            .padding(.leading, 20)
                    }.padding(.leading, 20)
                        .padding(.bottom)
                        .padding(.top)
                    
                    Divider()
                    
                    HStack{
                        Text("Last Name").bold()
                        TextField("Surname", text: $surname)
                            .padding(.leading, 20)
                    }.padding(.leading, 20)
                        .padding(.bottom)
                        .padding(.top)
                    
                    Divider().padding(.bottom, 50)
                    
                    HStack(spacing: 80) {
                        
                        Button(action: {
                            isPressed = true
                            isWelcomeScreenOver = true
                        }, label: {
                            VStack {
                                ZStack {
                                    Rectangle().frame(height: 50).cornerRadius(20)
                                    
                                    Text("Save Data")
                                        .font(.custom("", size: 20))
                                        .padding()
                                        .foregroundColor(.white)
                                        .onTapGesture {
                                            modelContext.insert(User(name: name, surname: surname))
                                            isButtonClicked = true
                                            showAlert = true
                                        }
                                        .alert(isPresented: $showAlert) {
                                            Alert(title: Text("Saved!"))
                                        }
                                }.padding(.bottom, 5)
                                ZStack {
                                    Rectangle().frame(height: 50).cornerRadius(20)
                                    
                                    Text("Next")
                                        .font(.system(size: 20))
                                        .foregroundStyle(.white)
                                }
                            }
                        })
                    }
                    NavigationLink(destination: HealthAppView().navigationBarHidden(true),
                                   isActive: $isPressed) { EmptyView() }
                }
                .padding(.all)
        }
    }
}

#Preview {
    LoginView(name: "", surname: "")
}
