//
//  PaginaTresController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PaginaCincoController : Pagina{
    
    
    @IBOutlet var vwContenedor: UIView!
    @IBOutlet weak var lbl_texto: UILabel!
    @IBOutlet weak var img_reloj: UIImageView!
    @IBOutlet weak var img_cama: UIImageView!
    @IBOutlet weak var img_cocina: UIImageView!
    @IBOutlet weak var img_mesa: UIImageView!
    @IBOutlet weak var img_taza: UIImageView!
    @IBOutlet weak var img_lobo: UIImageView!
    
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
        Bundle.main.loadNibNamed("PaginaCinco", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
    }
    
    func viewDidHadAppear() {
        //DidAppear
    }
    
    @IBAction func tap_lobo(_ sender: Any) {
        aullido()
    }
    
    @IBAction func tap_cocina(_ sender: Any) {
        bajido()
        //cambia imagen
    }
    
    @IBAction func tap_mesa(_ sender: Any) {
        bajido()
        //cambia imagen
    }
    
    @IBAction func tap_cama(_ sender: Any) {
        bajido()
        //cambia imagen
    }
    
    @IBAction func tap_taza(_ sender: Any) {
        bajido()
        //cambia imagen
    }
    
}
