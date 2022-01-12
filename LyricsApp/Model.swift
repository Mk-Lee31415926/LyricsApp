//
//  Model.swift
//  LyricsApp
//
//  Created by User19 on 2022/1/12.
//

import Foundation
// MARK: - Welcome
struct Welcome: Codable {
    let message: Message
}

// MARK: - Message
struct Message: Codable {
    let body: Body
}

// MARK: - Body
struct Body: Codable {
    let trackList: [TrackList]

    enum CodingKeys: String, CodingKey {
        case trackList = "track_list"
    }
}

// MARK: - TrackList
struct TrackList: Codable {
    let track: Track
}
//MARK: - Track
struct Track: Codable{
    let track_id: Int
    let track_name: String
    let album_id: Int
    let album_name: String
    let artist_id: Int
    let artist_name: String
    let updated_time: Date
}
