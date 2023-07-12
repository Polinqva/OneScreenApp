//
//  ContentView.swift
//  TestApptify
//
//  Created by Polina Smirnova on 04.07.2023.
//
import SwiftUI

struct ContentView: View {
    @State var buttonChoose: Color = Color.blue
    @State var buttonActivate: String = ""
    @State private var selectedRectangle: Int?
    
    func isSelected(_ index: Int) -> Bool {
        return selectedRectangle == index
    }
    
    var body: some View {
        ZStack {
            buttonChoose
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    HStack {
                        Text("+1 488 48549")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.vertical, 60)
                            .padding(.horizontal, 60)
                        Button(action: {}) {
                            Text("Close")
                                .foregroundColor(.white)
                        }
                    }
                    TabView {
                        VStack {
                            Text("Real Number")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .padding()
                            Text("Contact everyone with your real number")
                                .foregroundColor(.white)
                                .font(.title3)
                                .padding()
                            Image(systemName: "phone.circle")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .padding(100)
                        }
                        RoundedRectangle(cornerRadius: 10.0)
                        RoundedRectangle(cornerRadius: 10.0)
                        RoundedRectangle(cornerRadius: 10.0)
                        
                    }
                    .frame(height: 400)
                    .tabViewStyle(PageTabViewStyle())
                    
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            Button(action: {
                                selectedRectangle = 0
                            }) {
                                Rectangle()
                                    .frame(width: 130, height: 150)
                                    .foregroundColor(isSelected(0) ? .red : .clear)
                                    .overlay(
                                        Rectangle()
                                            .frame(width: 120, height: 140)
                                            .foregroundColor(.white)
                                            .overlay(
                                                Text("3 month   29.99/wk")
                                                    .font(.headline)
                                            )
                                    )
                            }
                            
                            Button(action: {
                                selectedRectangle = 1
                            }) {
                                Rectangle()
                                    .frame(width: 130, height: 150)
                                    .foregroundColor(isSelected(1) ? .red : .clear)
                                    .overlay(
                                        Rectangle()
                                            .frame(width: 120, height: 140)
                                            .foregroundColor(.white)
                                            .overlay(
                                                Text("3-Day trial   7.99/wk")
                                                    .font(.headline)
                                            )
                                    )
                            }
                            
                            Button(action: {
                                selectedRectangle = 2
                            }) {
                                Rectangle()
                                    .frame(width: 130, height: 150)
                                    .foregroundColor(isSelected(2) ? .red : .clear)
                                    .overlay(
                                        Rectangle()
                                            .frame(width: 120, height: 140)
                                            .foregroundColor(.white)
                                            .overlay(
                                                Text("12 month   59.99/wk")
                                                    .font(.headline)
                                            )
                                    )
                            }
                        }
                    }
                    
                    Button(action: {
                        // Add your action code here
                    }) {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 120, height: 30)
                            .foregroundColor(.pink)
                            .overlay(
                                HStack {
                                    Text("ACTIVATE")
                                        .foregroundColor(.white)
                                    
                                    Image(systemName: "arrow.forward")
                                        .foregroundColor(.white)
                                }
                            )
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

