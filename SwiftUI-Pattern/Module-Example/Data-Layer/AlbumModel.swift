//
//  AlbumModel.swift
//  SwiftUI-Pattern
//
//  Created by Daniel Ayala on 22/5/22.
//

import Foundation

// MARK: DOMAIN
struct AlbumItem:  Identifiable, Equatable {
    let id = UUID()
    let artistName: String?
    let collectionName: String?
    let artworkUrl100: String?
    let primaryGenreName: String?
    let releaseDate: String?
    var isOnFavourites = false
    var isSelected = false
    let collectionViewUrl: String?
    
    var formattedDate: Date {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        
        return dateFormatter.date(from: releaseDate ?? "") ?? Date()
    }
    
    static let placeholderMock: [AlbumItem] =
    [AlbumItem(artistName: "placeholder01", collectionName: nil, artworkUrl100: nil, primaryGenreName: nil, releaseDate: nil, collectionViewUrl: nil), AlbumItem(artistName: "Lorem Ipsum", collectionName: "The Best of Marvin Gaye", artworkUrl100: nil, primaryGenreName: nil, releaseDate: nil, collectionViewUrl: nil), AlbumItem(artistName: "Lorem Ipsum", collectionName: "The Best of Marvin Gaye", artworkUrl100: nil, primaryGenreName: nil, releaseDate: nil, collectionViewUrl: nil), AlbumItem(artistName: "Lorem Ipsum", collectionName: "The Best of Marvin Gaye", artworkUrl100: nil, primaryGenreName: nil, releaseDate: nil, collectionViewUrl: nil)]
}
