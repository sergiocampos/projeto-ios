//
//  Cadastro.swift
//  PetShop
//
//  Created by admin on 30/08/16.
//  Copyright © 2016 admin. All rights reserved.
//

import Foundation

class Cadastro: NSObject, NSCoding {
    var lista: Array<Animal>!
    
    override init(){
        self.lista = Array<Animal>()
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.lista = aDecoder.decodeObjectForKey("lista") as! Array<Animal>
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.lista, forKey: "lista")
    }
    
    func add(sb: Animal) {
        self.lista.append(sb)
    }
    
    func get(index: Int) -> Animal{
        return self.lista[index]
    }
    
    func del(index:Int) {
        self.lista.removeAtIndex(index)
    }
    
    func quantidade() -> Int{
        return self.lista.count
    }
    
    func swap(origem: Int, destino:Int) {
        let aux = self.lista[origem]
        self.lista[origem] = self.lista[destino]
        self.lista[destino] = aux
    }
}