//
//  Home.swift
//  UI-93
//
//  Created by にゃんにゃん丸 on 2021/01/02.
//

import SwiftUI

struct Home: View {
    @StateObject var model = JsonViewModel()
    var body: some View {
        VStack{
            
            
            HStack{
                HStack{
                    
                    Image(systemName: "magnifyingglass")
                        .font(.title2)
                        .foregroundColor(.gray)
                        
                        
                    
                    TextField("Search", text: $model.txt)
                    
                }
                .padding(.vertical,10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(10)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "qrcode.viewfinder")
                            .font(.title)
                            .foregroundColor(.blue)
                        
                            
                            
                    })
                    
                
                
            }
            .padding()
            
            
            if model.cards.isEmpty{
                
                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            else{
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack{
                        
                        
                        ForEach(model.compotionalArray.indices,id:\.self){index in
                            
                            if index == 0 || index % 6 == 0{
                                
                                Layout1(card: model.compotionalArray[index])
                                
                            }
                            
                            else if index % 3 == 0{
                                Layout3(card: model.compotionalArray[index])
                                
                                
                            }
                            
                            else{
                                
                                Layout2(card: model.compotionalArray[index])
                            }
                            
                        }
                    }
                    .padding(.horizontal)
                   
                })
            }
           
            
            
            
            
            
            
        }
    }
}

