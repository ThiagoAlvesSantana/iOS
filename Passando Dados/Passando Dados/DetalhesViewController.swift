//
//  DetalhesViewController.swift
//  Passando Dados
//
//  Created by Thiago Alves de Santana on 07/03/19.
//  Copyright © 2019 Estudo. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {

    @IBOutlet weak var txtResultado: UILabel!
    var txtRecebido : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad();
        txtResultado.text = txtRecebido;
    }
}
