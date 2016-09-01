//
//  Animal.swift
//  PetShop
//
//  Created by admin on 30/08/16.
//  Copyright © 2016 admin. All rights reserved.
//

import Foundation

class Animal: NSObject, NSCoding{
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
    
    required init?(coder aDecoder: NSCoder) {
        self.nome = aDecoder.decodeObjectForKey("nome") as! String
        self.proprietario = aDecoder.decodeObjectForKey("proprietario") as! String
        self.telefone = aDecoder.decodeObjectForKey("telefone") as! String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.nome, forKey: "nome")
        aCoder.encodeObject(self.proprietario, forKey: "proprietario")
        aCoder.encodeObject(self.telefone, forKey: "telefone")
    }
}