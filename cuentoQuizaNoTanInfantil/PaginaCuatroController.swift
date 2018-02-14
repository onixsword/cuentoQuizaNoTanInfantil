//
//  PaginaTresController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PaginaCuatroController : Pagina{
    
    @IBOutlet var vwContenedor: UIView!
    
    @IBOutlet weak var img_oveja: UIImageView!
    @IBOutlet weak var lbl_texto: UILabel!
    
    var ovejaPos : CGPoint?
    
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
        Bundle.main.loadNibNamed("PaginaCuatro", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        ovejaPos = CGPoint(x: img_oveja.center.x, y: img_oveja.center.y)
        img_oveja.center.x = -img_oveja.bounds.width
    }
    
    func viewDidHadAppear() {
        //DidAppear
        UIView.animate(withDuration: 1, animations: {
            self.img_oveja.center = self.ovejaPos!
        }, completion: nil)
    }
    
    @IBAction func tap_oveja(_ sender: Any) {
        bajido()
    }
    
    @IBAction func tap_puerta(_ sender: Any) {
        toctoc()
    }
    
    @IBAction func tap_lobo(_ sender: Any) {
        aullido()
    }
    
}
