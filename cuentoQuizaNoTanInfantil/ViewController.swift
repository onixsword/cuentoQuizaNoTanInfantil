//
//  ViewController.swift
//  ViewsSeparados
//
//  Created by Maestro on 07/02/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var vw_ultraview: UIView!
    
    var pagina = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
            for vista in self.vw_ultraview.subviews{
                vista.removeFromSuperview()
            }
            self.vw_ultraview.addSubview(PaginaUnoController(frame: self.vw_ultraview.bounds))
        }, completion: {_ in //DidAppear
            (self.vw_ultraview.subviews[0] as! PaginaUnoController).viewDidHadAppear()
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slide_left(_ sender: Any) {
        paginaSiguiente()
    }
    
    @IBAction func slide_right(_ sender: Any) {
        paginaAnterior()
    }
    
    func paginaSiguiente(){
        if (pagina < 12) {
            self.pagina += 1
            loadSubView()
        }
        
    }
    
    func paginaAnterior(){
        if (pagina > 1) {
            self.pagina -= 1
            loadSubView()
        }
        
    }
    
    func loadSubView(){
        switch self.pagina {
        case 1:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaUnoController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaUnoController).viewDidHadAppear()
            })
        case 2:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaDosController(frame: self.vw_ultraview.bounds))
            }, completion: nil)
        case 3:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaTresController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaTresController).viewDidHadAppear()
            })
        case 4:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaCuatroController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaCuatroController).viewDidHadAppear()
            })
        case 5:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaCincoController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaCincoController).viewDidHadAppear()
            })
        case 6:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaSeisController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaSeisController).viewDidHadAppear()
            })
        case 7:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaSieteController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaSieteController).viewDidHadAppear()
            })
        case 8:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaOchoController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaOchoController).viewDidHadAppear()
            })
        case 9:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaNueveController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaNueveController).viewDidHadAppear()
            })
        case 10:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaDiezController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaDiezController).viewDidHadAppear()
            })
        case 11:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaOnceController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaOnceController).viewDidHadAppear()
            })
        case 12:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaDoceController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaDoceController).viewDidHadAppear()
            })
        default:
            fatalError("Not Implemented")
        }
        
    }
    
}

