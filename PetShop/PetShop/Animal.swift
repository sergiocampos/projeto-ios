//
//  Animal.swift
//  PetShop
//
//  Created by admin on 30/08/16.
//  Copyright © 2016 admin. All rights reserved.
//

import Foundation

class Animal: NSObject {
    var nome:String!
    var proprietario:String!
    var telefone:String!
    
    override var description: String{
        return self.nome + " - " + self.proprietario + " - " + self.telefone
    }
    
    init (nome:String , proprietario:String , telefone:String){
        self.nome = nome
        self.proprietario = proprietario
        self.telefone = telefone
    }
}