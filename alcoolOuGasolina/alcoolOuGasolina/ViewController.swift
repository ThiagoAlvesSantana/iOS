//
//  ViewController.swift
//  alcoolOuGasolina
//
//  Created by Thiago Alves de Santana on 20/02/19.
//  Copyright © 2019 Estudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var labelGasolina: UITextField!
    @IBOutlet weak var labelAlcool: UITextField!
    
    @IBAction func calcularValor(_ sender: Any) {
        if let valorAlcool = labelAlcool.text {
            if let valorGasolina = labelGasolina.text {
                let validaCompos = self.validaCampos(valorAlcool : valorAlcool,valorGasolina : valorGasolina);
                if(validaCompos){
                    self.calcularPreco(valorAlcool: valorAlcool, valorGasolina: valorGasolina);
                } else {
                    labelResult.text = "Digite os preços para calcular!"
                }
            }
        }
    }
    
    func calcularPreco(valorAlcool : String, valorGasolina : String) {
        if let precoAlcool = Double(valorAlcool){
            if let precoGasolina = Double(valorGasolina){
                let valorFinal = precoAlcool / precoGasolina;
                print(valorFinal );
                if(valorFinal >= 0.7){
                    labelResult.text = "Melhor utilizar Gasolina!"
                } else {
                    labelResult.text = "Melhor utilizar Álcool!"
                }
            }
        }
    }
    
    func validaCampos(valorAlcool : String, valorGasolina : String) -> Bool {
        var camposValidados = true;
        if(valorAlcool.isEmpty){
            camposValidados = false;
        } else if(valorGasolina.isEmpty){
            camposValidados = false;
        }
        return camposValidados;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

