//
//  PaginaWebViewController.swift
//  WKWebKitGoogle
//
//  Created by Maysa on 08/08/22.
//

import UIKit
import WebKit

class PaginaWebViewController: UIViewController {
    
    var receberPalavra: String?
    
    @IBOutlet weak var webPagina: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let urlBuscar = URL(string: "https://www.google.com.mx/search?q=\(receberPalavra ?? "")&h1=es-419") else {return}
        self.webPagina.load(URLRequest(url:urlBuscar))
    }
    


}
