//
//  CelulaTableViewCell.swift
//  PetShop
//
//  Created by admin on 30/08/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class CelulaTableViewCell: UITableViewCell {

    @IBOutlet weak var lbNome: UILabel!
    
    
    
    var an: Animal!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        if (selected == true){
            let alerta = UIAlertController(title: "Atenção", message: an.nome, preferredStyle: UIAlertControllerStyle.Alert)
            
            alerta.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default
                , handler: nil))
            
            self.window?.rootViewController?.presentViewController(alerta, animated: true, completion: nil)
        }
    }

}
