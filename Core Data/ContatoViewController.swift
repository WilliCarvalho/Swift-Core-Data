//
//  ContatoViewController.swift
//  Core Data
//
//  Created by Usuário Convidado on 17/09/20.
//  Copyright © 2020 Willian Carvalho. All rights reserved.
//

import UIKit
import CoreData

class ContatoViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtTelefone: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtNome{
            txtTelefone.becomeFirstResponder()
            return true
        } else if textField == txtTelefone{
            txtEmail.becomeFirstResponder()
            return true
        } else if textField == txtEmail {
            Salvar(textField)
            return true
        }
        
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Salvar(_ sender: Any) {
        txtNome.resignFirstResponder()
        txtTelefone.resignFirstResponder()
        txtEmail.resignFirstResponder()
        
        if txtNome.text!.isEmpty || txtTelefone.text!.isEmpty || txtEmail.text!.isEmpty{
            let alerta = UIAlertController(title: "Erro", message: "Preencha todos os campos", preferredStyle: UIAlertController.Style.alert)
            
            alerta.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alerta, animated: true, completion: nil)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txtNome.resignFirstResponder()
        txtTelefone.resignFirstResponder()
        txtEmail.resignFirstResponder()
    }
    
    
    func save(nome: String, tele: String, emai: String){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
