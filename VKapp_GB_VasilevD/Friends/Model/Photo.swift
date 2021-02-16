//
//  Photo.swift
//  VKapp_GB_VasilevD
//
//  Created by Денис Васильев on 18/05/2020.
//  Copyright © 2020 Denis Vasilev. All rights reserved.
//

import Foundation
import RealmSwift

struct PhotoResponse: Decodable {
    let response: PhotoObject
}

struct PhotoObject: Decodable {
    let items: [Photo]
}

class Photo: Object, Decodable {
    @objc dynamic var id: Int = 0
    @objc dynamic var ownerId: Int = 0
    @objc dynamic var type = ""
    @objc dynamic var photoUrl = ""
    
    enum CodingKeys: String, CodingKey {
        case id
        case ownerId = "owner_id"
        case sizes
        case likes
    }
    
    enum SizeKeys: String, CodingKey {
        case type
        case photoUrl = "url"
    }
    
    convenience required init(from decoder: Decoder) throws {
        self.init()
        let photoContainer = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = try photoContainer.decode(Int.self, forKey: .id)
        self.ownerId = try photoContainer.decode(Int.self, forKey: .ownerId)
        
        var sizesContainer = try photoContainer.nestedUnkeyedContainer(forKey: .sizes)
        
        while !sizesContainer.isAtEnd {
            let sizesValues = try sizesContainer.nestedContainer(keyedBy: SizeKeys.self)
            let photoType = try sizesValues.decode(String.self, forKey: .type)
            switch photoType {
            case "x":
                self.photoUrl = try sizesValues.decode(String.self, forKey: .photoUrl)
            case "m":
                self.photoUrl = try sizesValues.decode(String.self, forKey: .photoUrl)
            default:
                break
            }
        }

    }
}
