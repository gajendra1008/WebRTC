//
//  Storage+CoreDataProperties.swift
//  WebRTC
//
//  Created by Gajendrasinh Chauhan on 03/05/24.
//
//

import Foundation
import CoreData


extension Storage {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Storage> {
        return NSFetchRequest<Storage>(entityName: "Storage")
    }

    @NSManaged public var uname: String?
    @NSManaged public var email: String?
}

extension Storage : Identifiable {

}
