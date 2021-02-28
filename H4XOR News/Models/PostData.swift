//
//  PostData.swift
//  H4XOR News
//
//  Created by Priyank Shah on 7/11/20.
//  Copyright © 2020 Shah Priyank. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}


struct Post: Decodable, Identifiable {
    var id: String {                    //computer variable
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
