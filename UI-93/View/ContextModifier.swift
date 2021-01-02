//
//  ContextModifier.swift
//  UI-93
//
//  Created by にゃんにゃん丸 on 2021/01/02.
//

import SwiftUI

struct ContextModifier: ViewModifier {
 
    
    
    var card : Card
    
    func body(content: Content) -> some View {
        content
            .contextMenu(ContextMenu(menuItems: {
                Text("By\(card.author)")
                    .contentShape(RoundedRectangle(cornerRadius: 5))
            }))
    }
    
    
    
}


