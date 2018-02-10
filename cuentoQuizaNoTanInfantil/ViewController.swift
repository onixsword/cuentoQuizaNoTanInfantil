//
//  ViewController.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vw_ultraView: UIView!
    
    var actualPage : PaginaUnoController?
    
    override func viewWillAppear(_ animated: Bool) {
        actualPage = PaginaUnoController()
        self.addChildViewController(actualPage!)
        vw_ultraView.addSubview((actualPage?.view)!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
