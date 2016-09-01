//
//  Cadastro.swift
//  PetShop
//
//  Created by admin on 30/08/16.
//  Copyright © 2016 admin. All rights reserved.
//

import Foundation

class Cadastro {
    var lista: Array<Animal>!
    
    init(){
        self.lista = Array<Animal>()
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