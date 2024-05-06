//
//  Message.swift
//  VideoSDKRTC_Example
//
//  Created by Gajendrasinh Chauhan on 03/05/24.
//

import Foundation
import MessageKit
import VideoSDKRTC

struct Message: MessageType {
    
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
    
    // MARK: - Init
    
    init(pubsubMessage: PubSubMessage) {
        messageId = pubsubMessage.id
        kind = .text(pubsubMessage.message)
        sentDate = pubsubMessage.timestamp.toDate() ?? Date()
        sender = ChatUser(senderId: pubsubMessage.senderId, displayName: pubsubMessage.senderName)
    }
}
