//
//  Card.swift
//  UI-93
//
//  Created by にゃんにゃん丸 on 2021/01/02.
//

import SwiftUI

struct Card: Identifiable,Decodable,Hashable {
    var id : String
    var download_url : String
    var author : String
}

