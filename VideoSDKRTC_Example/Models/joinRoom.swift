//
//  joinRoom.swift
//  VideoSDKRTC_Example
//
//  Created by Gajendrasinh Chauhan on 03/05/24.
//

import Foundation

// MARK: - EarningDetailsStruct
struct RoomsStruct: Codable {
    let createdAt, updatedAt, roomID: String?
    let links: Links?
    let id: String?

    enum CodingKeys: String, CodingKey {
        case createdAt, updatedAt
        case roomID = "roomId"
        case links, id
    }
}

// MARK: - Links
struct Links: Codable {
    let getRoom, getSession: String?

    enum CodingKeys: String, CodingKey {
        case getRoom = "get_room"
        case getSession = "get_session"
    }
}
