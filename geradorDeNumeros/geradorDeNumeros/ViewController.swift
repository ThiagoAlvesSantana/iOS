//
//  ViewController.swift
//  geradorDeNumeros
//
//  Created by Thiago Alves de Santana on 19/02/19.
//  Copyright © 2019 Estudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResultado: UILabel!
    
    @IBAction func gerarNumero(_ sender: Any) {
        labelResultado.text = String(Int.random(in: 0 ..< 10));
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

