//
//  PaginaTresController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class PaginaOchoController : Pagina{
    
    @IBOutlet var vwContenedor: UIView!
    
    @IBOutlet weak var lbl_texto: UILabel!
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
        
        var loboRespirando1 : UIImage
        var loboRespirando2 : UIImage
        var loborespirando3 : UIImage
        
        var images : [UIImage]
        var animatedImages : UIImage
        
        loboRespirando1 = UIImage(named: "lobo_resp_0")!
        loboRespirando2 = UIImage(named: "lobo_resp_1")!
        loborespirando3 = UIImage(named: "lobo_resp_2")!
        
        images = [loboRespirando1, loboRespirando2, loborespirando3]
        
        
        
        //WillApear
        Bundle.main.loadNibNamed("PaginaOcho", owner: self, options: nil)
        addSubview(vwContenedor)
        vwContenedor.frame = self.bounds
        vwContenedor.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        animatedImages = UIImage.animatedImage(with: images, duration: 0.5)!
        
        img_lobo.image = animatedImages
        
    }
    
    func viewDidHadAppear() {
        //DidAppear
    }
    
    @IBAction func tap_lobo(_ sender: Any) {
        ronquido()
    }
    
    @IBAction func tap_mamaOveja(_ sender: Any) {
        bajido()
    }
    
    @IBAction func tap_ovejita(_ sender: Any) {
        bajido()
    }
    
}
