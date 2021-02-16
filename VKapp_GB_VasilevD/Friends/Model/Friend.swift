//
//  Friend.swift
//  VKapp_GB_VasilevD
//
//  Created by Денис Васильев on 30/10/2019.
//  Copyright © 2019 Denis Vasilev. All rights reserved.
//

import Foundation
import RealmSwift

struct FriendResponse: Decodable {
    let response: FriendObject
}

struct FriendObject: Decodable {
    let count: Int
    let items: [Friend]
}

class Friend: Object, Decodable {
    @objc dynamic var id = 0
    @objc dynamic var firstName = ""
    @objc dynamic var lastName = ""
    @objc dynamic var friendAvatarUrl = ""

    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case friendAvatarUrl = "photo_50"
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}



