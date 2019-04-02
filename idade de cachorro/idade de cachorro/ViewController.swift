//
//  ViewController.swift
//  idade de cachorro
//
//  Created by Thiago Alves de Santana on 18/02/19.
//  Copyright © 2019 Estudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var legendaResultado: UILabel!
    @IBOutlet weak var campoIdadeCachorro: UITextField!
    
    @IBAction func descobrirIdade(_ sender: Any) {
        let result = Int(campoIdadeCachorro.text!)! * 7;
        legendaResultado.text = "A idade do cachorro é: " + String(result);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

