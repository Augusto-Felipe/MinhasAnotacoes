//
//  ViewController.swift
//  MinhasAnotacoes
//
//  Created by Felipe Augusto Correia on 01/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textView.text = recuperarAnotacao()
        
    }

    @IBAction func botaoSalvarPressionado(_ sender: UIButton) {
        if let texto = textView.text {
            UserDefaults.standard.set(texto, forKey: "anotacao")
        }
    }
    
    func recuperarAnotacao() -> String {
        if let anotacaoSalva = UserDefaults.standard.object(forKey: "anotacao") {
            return anotacaoSalva as! String
        }
        
        return ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

