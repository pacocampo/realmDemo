//
//  RealModels.swift
//  realmDemo
//
//  Created by Francisco Ocampo Romero on 27/02/17.
//  Copyright © 2017 devf. All rights reserved.
//

import Foundation
import RealmSwift

class Persona : Object {
  dynamic var id = 0
  dynamic var nombre = ""
  dynamic var edad = 0
  let skills = List<Skill>()
  
  override static func primaryKey() -> String? {
    return "id"
  }
}

class Skill : Object {
  dynamic var language = ""
  dynamic var experience = 0
}
