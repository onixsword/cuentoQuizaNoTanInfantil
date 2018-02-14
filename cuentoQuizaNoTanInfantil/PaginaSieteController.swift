//
//  PaginaTresController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PaginaSieteController : Pagina{
    
    @IBOutlet var vwContenedor: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        inicializar()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        inicializar()
    }
    
    private func inicializar(){
        //WillApear
        Bundle.main.loadNibNamed("PaginaSiete", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        //animar entrada de madre oveja
        
    }
    
    func viewDidHadAppear() {
        //DidAppear
    }
    
    @IBAction func tap_reloj(_ sender: Any) {
        toctoc()
        //animar pendulo
    }
    
    @IBAction func tap_ovejita(_ sender: Any) {
        bajido()
        //le salen lagrimas
    }
    
    @IBAction func tap_mamaOveja(_ sender: Any) {
        bajido()
    }
}
