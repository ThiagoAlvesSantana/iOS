//
//  ViewController.swift
//  Passando Dados
//
//  Created by Thiago Alves de Santana on 07/03/19.
//  Copyright © 2019 Estudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var compoNome: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "enviarDados" {
            let txtDestino = segue.destination as!
            DetalhesViewController
            txtDestino.txtRecebido =
                compoNome.text!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

