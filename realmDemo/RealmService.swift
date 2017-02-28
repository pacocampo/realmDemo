//
//  RealmService.swift
//  realmDemo
//
//  Created by Francisco Ocampo Romero on 27/02/17.
//  Copyright © 2017 devf. All rights reserved.
//

import Foundation
import RealmSwift

class RealmService {
  
  class func newPersona(persona : Persona) {
    let realm = try! Realm()
    
    try! realm.write {
      realm.add(persona)
      NSLog("cree una nueva persona")
    }
  }
  
  class func updatePersona(persona : Persona, skill : Skill) {
    let realm = try! Realm()
    
    try! realm.write {
      persona.skills.append(skill)
      realm.add(persona, update : true)
      NSLog("actualice persona")
    }
  }
  
  class func getPersona(nombre : String) -> Persona? {
    let realm = try! Realm()
    let persona = realm.objects(Persona.self).filter("nombre = %@", nombre).first
    return persona
  }

  class func deletePersona(persona : Persona) {
    let realm = try! Realm()
    realm.delete(persona)
  }

  
}
