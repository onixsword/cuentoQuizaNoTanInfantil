//
//  PaginaTresController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PaginaSeisController : Pagina{
    
    @IBOutlet var vwContenedor: UIView!
    @IBOutlet weak var img_oveja3: UIImageView!
    @IBOutlet weak var img_lobo: UIImageView!
    @IBOutlet weak var img_oveja1: UIImageView!
    @IBOutlet weak var img_oveja2: UIImageView!
    @IBOutlet weak var img_oveja4: UIImageView!
    @IBOutlet weak var img_oveja5: UIImageView!
    @IBOutlet weak var img_oveja6: UIImageView!
    
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
        Bundle.main.loadNibNamed("PaginaSeis", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
    func viewDidHadAppear() {
        //DidAppear
    }
    
}
