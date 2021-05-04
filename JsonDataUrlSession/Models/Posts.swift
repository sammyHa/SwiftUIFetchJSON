//
//  Posts.swift
//  JsonDataUrlSession
//
//  Created by Samim Hakimi on 5/4/21.
//

import Foundation
struct Posts: Decodable, Identifiable {
    var id : Int
    var title: String
    var body: String
}
