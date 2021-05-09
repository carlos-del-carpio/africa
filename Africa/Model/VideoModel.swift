//
//  VideoModel.swift
//  Africa
//
//  Created by Carlos Del Carpio on 5/6/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    //Computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
