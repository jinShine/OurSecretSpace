//
//  User.swift
//  TwitterClone
//
//  Created by buzz on 2020/12/18.
//

import Foundation
import Firebase

struct User {
  let fullname: String
  let email: String
  let username: String
  let profileImageURL: String
  let uid: String
  
  var isCurrentUser: Bool { return Auth.auth().currentUser?.uid == uid }
  
  init(uid: String, dictionary: [String: Any]) {
    self.uid = uid
    
    self.fullname = dictionary["fullname"] as? String ?? ""
    self.email = dictionary["email"] as? String ?? ""
    self.username = dictionary["username"] as? String ?? ""
    self.profileImageURL = dictionary["profileImageURL"] as? String ?? ""
  }
}
