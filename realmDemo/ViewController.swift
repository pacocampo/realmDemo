//
//  ViewController.swift
//  realmDemo
//
//  Created by Francisco Ocampo Romero on 27/02/17.
//  Copyright © 2017 devf. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let persona = Persona()
    persona.nombre = "Rich"
    persona.edad = 33
//
    let otro = Persona(value: ["nombre" : "Jacobo", "edad" : 17])

    let skill = Skill()
    skill.language = "Angular"
    skill.experience = 1
    
     RealmService.newPersona(persona: persona)
    
    let personaDeConsulta = RealmService.getPersona(nombre: "Rich")
    
    guard let newPersona = personaDeConsulta else {
      print("no existe este dude")
      return
    }
    
    RealmService.updatePersona(persona: newPersona, skill: skill)
    
//    RealmService.newPersona(persona: persona)
    
    print(Realm.Configuration.defaultConfiguration.fileURL!)
    

    // Do any additional setup after loading the view, typically from a nib.

    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

