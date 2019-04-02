//
//  ViewController.swift
//  calendario
//
//  Created by Thiago Alves de Santana on 12/03/19.
//  Copyright © 2019 Estudo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var list : [String] = [];//Lista com todos os meses.
    var listComentario : [String] = [];//Lista de comentarios.
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        //Meses.
        list.append("1 - Janeiro");
        list.append("2 - Fevereiro");
        list.append("3 - Março");
        list.append("4 - Abril");
        list.append("5 - Maio");
        list.append("6 - Junho");
        list.append("7 - Julho");
        list.append("8 - Agosto");
        list.append("9 - Setembro");
        list.append("10 - Outubro");
        list.append("11 - Novembro");
        list.append("12 - Dezembro");
        
        //Comentario dos meses, tipo dias do mes e feriados.
        listComentario.append("De 1 a 31. \nFeriado dia 1 Ano novo.");
        listComentario.append("De 1 a 28.");
        listComentario.append("De 1 a 31.");
        listComentario.append("De 1 a 30. \nFeriado 19 Sexta-feira Santa \n21 Tiradentes e Páscoa.");
        listComentario.append("De 1 a 31. \nFeriado 1 Dia do Trabalho.");
        listComentario.append("De 1 a 31. \nFeriado 20 Corpus Christi.");
        listComentario.append("De 1 a 31.");
        listComentario.append("De 1 a 31.");
        listComentario.append("De 1 a 30. \nFeriado 07 Dia da Independência do Brasil \n7 de Setembro.");
        listComentario.append("De 1 a 31. \nFeriado 12 Nossa Senhora Aparecida.");
        listComentario.append("De 1 a 30. \nFeriado 02 Finados \n15 Proclamação da República.");
        listComentario.append("De 1 a 31. \nFeriado 25 Natal.");
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = list[indexPath.row]
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alertControle = UIAlertController(title: "Alerta", message: listComentario[indexPath.row], preferredStyle: .alert)
        let confirmar = UIAlertAction(title: "OK", style: .cancel, handler: nil);
        alertControle.addAction(confirmar)
        present(alertControle, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}
