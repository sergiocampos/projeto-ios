//
//  ViewController.swift
//  PetShop
//
//  Created by admin on 30/08/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class FormularioViewController: UIViewController {
    
    var delegate: ListarTableViewController!

    @IBOutlet weak var tfNome: UITextField!
    
    @IBOutlet weak var tfProprietario: UITextField!
    
    @IBOutlet weak var tfTelefone: UITextField!
    
    @IBOutlet weak var lbProprietario: UILabel!
    
    @IBOutlet weak var lbNome: UILabel!
    
    @IBOutlet weak var lbTelefone: UILabel!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Save, target: self, action: #selector(salvar))
    }
    
    func salvar() {
        self.delegate.salvar(Animal(nome: self.tfNome.text! , proprietario: self.tfProprietario.text! ,telefone: self.tfTelefone.text! ))
        
        self.navigationController?.popViewControllerAnimated(true)
    }

}

