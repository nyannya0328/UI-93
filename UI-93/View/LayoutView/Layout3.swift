//
//  Layout3.swift
//  UI-93
//
//  Created by にゃんにゃん丸 on 2021/01/02.
//

import SwiftUI
import SDWebImageSwiftUI

struct Layout3: View {
    
    var card : [Card]
    var body: some View {
            
        HStack(spacing:4){
                
       
            VStack(spacing:4){
                
                if card.count >= 2{
                    
                    AnimatedImage(url: URL(string: card[1].download_url))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: ((width / 3)), height: 123)
                        .cornerRadius(10)
                        .modifier(ContextModifier(card: card[1]))
                }
                
                if card.count >= 3{
                    
                    AnimatedImage(url: URL(string: card[2].download_url))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: ((width / 3)), height: 123)
                        .cornerRadius(10)
                        .modifier(ContextModifier(card: card[2]))
                    
                }
                
           
            
          
                
            }
      
                    
                    AnimatedImage(url: URL(string: card[0].download_url))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: (width - (width / 3) + 4), height: 250)
                        .cornerRadius(10)
                        .modifier(ContextModifier(card: card[0]))
            
        }
        .frame(maxWidth: .infinity,alignment: .trailing)
        
            
        
        
    }
}
