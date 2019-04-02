//
//  ViewController.swift
//  geradorDeFrases
//
//  Created by Thiago Alves de Santana on 19/02/19.
//  Copyright © 2019 Estudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelFrase: UILabel!
    @IBAction func buttonNovaFrase(_ sender: Any) {
        var frases : [String] = []
        frases.append("Cuidado com as voltas que o mundo dá. Hoje você lança as palavras, amanhã sente o efeito delas.")
        frases.append("O tempo deixa perguntas, mostra respostas, esclarece dúvidas, mas, acima de tudo, o tempo traz verdades.")
        frases.append("Superar é preciso. Seguir em frente é essencial. Olhar pra trás é perda de tempo. Passado se fosse bom era presente.")
        
        let index = arc4random_uniform(3)
        labelFrase.text = frases[Int(index)]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

