//
//  Group.swift
//  VKapp_GB_VasilevD
//
//  Created by Денис Васильев on 30/10/2019.
//  Copyright © 2019 Denis Vasilev. All rights reserved.
//

import UIKit
import RealmSwift

struct GroupResponse: Decodable {
    let response: GroupObject
}

struct GroupObject: Decodable {
    let items: [Group]
}

class Group: Object, Decodable {
    @objc dynamic var id = 0
    @objc dynamic var name = ""
    @objc dynamic var groupAvatarUrl: String = ""
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case groupAvatarUrl = "photo_50"
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

