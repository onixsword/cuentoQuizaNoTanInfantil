//
//  PaginaTresController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PaginaDoceController : Pagina{
    
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
        Bundle.main.loadNibNamed("PaginaDoce", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
    func viewDidHadAppear() {
        //DidAppear
    }
    
}
