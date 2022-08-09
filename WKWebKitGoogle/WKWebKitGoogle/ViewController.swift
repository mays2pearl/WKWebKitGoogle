//
//  ViewController.swift
//  WKWebKitGoogle
//
//  Created by Maysa on 08/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buscarPalavraTF: UITextField!
    
    @IBOutlet weak var buttonBuscarBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonBuscarBtn.layer.cornerRadius = 15
        self.buttonBuscarBtn.layer.shadowColor = UIColor.black.cgColor
        self.buttonBuscarBtn.layer.shadowOffset = CGSize(width: 5, height: 5)
        self.buttonBuscarBtn.layer.shadowRadius = 5
        self.buttonBuscarBtn.layer.shadowOpacity = 1.0
    }

    @IBAction func buscarAction(_ sender: UIButton) {
        performSegue(withIdentifier: "buscar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "buscar" {
            let objDestino = segue.destination as! PaginaWebViewController
            objDestino.receberPalavra = buscarPalavraTF.text ?? ""
        }
    }
    
}

