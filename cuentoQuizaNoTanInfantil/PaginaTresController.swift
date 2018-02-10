//
//  PaginaTresController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PaginaTresController : Pagina{
    
    @IBOutlet weak var img_lobo: UIImageView!
    
    var loboPosition : CGPoint?
    
    override func viewWillAppear(_ animated: Bool) {
        
        loboPosition = CGPoint(x: img_lobo.center.x, y: img_lobo.center.y)
        
        img_lobo.center.x =  self.view.bounds.width + img_lobo.bounds.width
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1, delay: 0, options: [], animations: {
            self.img_lobo.center = self.loboPosition!
        }, completion: {_ in
            self.toctoc()
            //animar frames del lobo
        })
    }
    
    @IBAction func tap_lobo(_ sender: Any) {
        aullido()
    }
    @IBAction func tap_puerta(_ sender: Any) {
        toctoc()
    }
    
}
