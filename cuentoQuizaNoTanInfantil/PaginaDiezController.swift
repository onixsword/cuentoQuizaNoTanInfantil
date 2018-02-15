//
//  PaginaTresController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PaginaDiezController : Pagina{
    
    @IBOutlet var vwContenedor: UIView!
    @IBOutlet weak var lbl_texto: UILabel!
    @IBOutlet weak var img_piedra1: UIImageView!
    @IBOutlet weak var img_piedra2: UIImageView!
    @IBOutlet weak var img_piedra3: UIImageView!
    @IBOutlet weak var img_piedra4: UIImageView!
    
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
        Bundle.main.loadNibNamed("PaginaDiez", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
    func viewDidHadAppear() {
        //DidAppear
    }
    
    @IBAction func tap_piedra1(_ sender: Any) {
        img_piedra1.isHidden = true
    }
    
    @IBAction func tap_piedra(_ sender: Any) {
        img_piedra2.isHidden = true
    }
    
    @IBAction func tap_piedra3(_ sender: Any) {
        img_piedra3.isHidden = true
    }
    
    @IBAction func tap_piedra4(_ sender: Any) {
        img_piedra4.isHidden = true
    }
}
