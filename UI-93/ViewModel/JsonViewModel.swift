//
//  JsonViewModel.swift
//  UI-93
//
//  Created by にゃんにゃん丸 on 2021/01/02.
//

import SwiftUI

class JsonViewModel: ObservableObject {
    @Published var cards : [Card] = []
    @Published var txt = ""
    @Published var compotionalArray : [[Card]] = []
    
    init() {
        fethjson()
    }
   
    
    func fethjson(){
        
        let url = "https://picsum.photos/v2/list?page=2&limit=100"
        
        let session = URLSession(configuration: .default)
        session.dataTask(with: URL(string: url)!) { (data, _, _) in
            guard let json = data else{return}
            
            let jsonvalue = try? JSONDecoder().decode([Card].self,from : json)
            guard let cards = jsonvalue else {return}
            
            DispatchQueue.main.async {
                self.cards = cards
                self.setcompotition()
            }
            
            
        
            
        }
        .resume()
        
        
    }
    
    func setcompotition(){
        
        var curretnArraycards : [Card] = []
        
        cards.forEach { (card) in
            curretnArraycards.append(card)
            if curretnArraycards.count == 3{
                compotionalArray.append(curretnArraycards)
                curretnArraycards.removeAll()
                
                
            }
            
            if curretnArraycards.count != 3 && card.id == cards.last!.id{
                
                compotionalArray.append(curretnArraycards)
                curretnArraycards.removeAll()
            }
            
        }
    }
    
    
    
}


