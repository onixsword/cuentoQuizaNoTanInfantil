//
//  PaginaUnoController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PaginaUnoController: Pagina {
    
    @IBOutlet var vwContenedor: UIView!
    @IBOutlet weak var lbl_Texto: UILabel!
    
    @IBOutlet weak var img_mamaOveja: UIImageView!
    @IBOutlet weak var img_oveja1: UIImageView!
    @IBOutlet weak var img_oveja2: UIImageView!
    @IBOutlet weak var img_oveja3: UIImageView!
    @IBOutlet weak var img_oveja4: UIImageView!
    @IBOutlet weak var img_oveja5: UIImageView!
    @IBOutlet weak var img_oveja6: UIImageView!
    @IBOutlet weak var img_oveja7: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        inicializar()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        inicializar()
    }
    
    private func inicializar(){
        Bundle.main.loadNibNamed("PaginaUno", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        img_mamaOveja.isHidden = true
        img_oveja1.isHidden = true
        img_oveja2.isHidden = true
        img_oveja3.isHidden = true
        img_oveja4.isHidden = true
        img_oveja5.isHidden = true
        img_oveja6.isHidden = true
        img_oveja7.isHidden = true
    }
    
    func viewDidHadAppear() {
        UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: {
            self.img_mamaOveja.isHidden = false
        }, completion: {_ in
            UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: {
                self.img_oveja1.isHidden = false
                self.img_oveja3.isHidden = false
                self.img_oveja4.isHidden = false
            }, completion: {_ in
                UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: {
                    self.img_oveja5.isHidden = false
                    self.img_oveja6.isHidden = false
                    self.img_oveja7.isHidden = false
                }, completion: {_ in
                    UIView.animate(withDuration: 0.5, delay: 1, options: [], animations: {
                        self.img_oveja2.isHidden = false
                    }, completion: nil)
                })
            })
        })
    }
    
    @IBAction func tap_mamaOveja(_ sender: Any) {
        bajido()
    }
    @IBAction func tap_oveja1(_ sender: Any) {
        bajido()
    }
    @IBAction func tap_oveja2(_ sender: Any) {
        bajido()
    }
    @IBAction func tap_oveja3(_ sender: Any) {
        bajido()
    }
    @IBAction func tap_oveja4(_ sender: Any) {
        bajido()
    }
    @IBAction func tap_oveja5(_ sender: Any) {
        bajido()
    }
    @IBAction func tap_oveja6(_ sender: Any) {
        bajido()
    }
    @IBAction func tap_oveja7(_ sender: Any) {
        bajido()
    }
}
