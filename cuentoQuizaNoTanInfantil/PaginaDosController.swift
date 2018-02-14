//
//  PaginaDosController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PaginaDosController : Pagina{
    
    @IBOutlet var vwContenedor: UIView!
    @IBOutlet weak var lbl_texto: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        inicializar()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        inicializar()
    }
    
    private func inicializar(){
        Bundle.main.loadNibNamed("PaginaDos", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]        
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
