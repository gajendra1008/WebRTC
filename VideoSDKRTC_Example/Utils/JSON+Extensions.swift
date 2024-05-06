//
//  JSON+Extensions.swift
//  VideoSDKRTC_Example
//
//  Created by Gajendrasinh Chauhan on 03/05/24.
//

import Foundation

public extension Data {
    
    /// Data to JSON String
    /// - Returns: json string
    func toJSONString() -> String {
        String(data: self, encoding: .utf8) ?? ""
    }
    
    /// Data to JSON Dictionary
    /// - Returns: json dictionary
    func toJSON() -> [String: Any] {
        let object = try? JSONSerialization.jsonObject(with: self, options: [])
        return object as? [String: Any] ?? [:]
    }
    
    /// Data to JSON array
    /// - Returns: json array
    func toJSONArray() -> [Any] {
        let array = try? JSONSerialization.jsonObject(with: self, options: [])
        return array as? [Any] ?? []
    }
}
