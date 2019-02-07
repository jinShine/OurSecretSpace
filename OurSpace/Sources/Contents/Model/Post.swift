//
//  Post.swift
//  OurSpace
//
//  Created by 승진김 on 06/02/2019.
//  Copyright © 2019 승진김. All rights reserved.
//

import Foundation

struct Post {
    
    let user: User
    let imageUrl: [String]
    let caption: String
    let creationDate: Date
    
    init(user: User, dictionary: [String: Any]) {
        self.user = user
        self.imageUrl = dictionary["imageUrls"] as? [String] ?? []
        self.caption = dictionary["caption"] as? String ?? ""
        let secondsFrom1970 = dictionary["creationDate"] as? Double ?? 0
        self.creationDate = Date(timeIntervalSince1970: secondsFrom1970)
    }
}
