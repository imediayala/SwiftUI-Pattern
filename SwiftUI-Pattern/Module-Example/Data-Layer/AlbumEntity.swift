//
//  AlbumEntity.swift
//  SwiftUI-Pattern
//
//  Created by Daniel Ayala on 22/5/22.
//

import Foundation

// MARK: ENTITY
struct AlbumItemEntity: Codable {
    let artistName: String?
    let collectionName: String?
    let artworkUrl100: String?
    let primaryGenreName: String?
    let releaseDate: String?
    let collectionViewUrl: String?
    
    enum CodingKeys: String, CodingKey {
        case artistName, collectionName, artworkUrl100, primaryGenreName, releaseDate, collectionViewUrl
    }
}

struct AlbumsListEntity: Codable {
    var results: [AlbumItemEntity]
    
    enum CodingKeys: String, CodingKey {
        case results
    }
}
