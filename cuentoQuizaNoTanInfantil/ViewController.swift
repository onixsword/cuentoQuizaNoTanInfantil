//
//  ViewController.swift
//  ViewsSeparados
//
//  Created by Maestro on 07/02/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var vw_ultraview: UIView!
    
    var pagina = 1
    
    var player : AVAudioPlayer?
    var narrator : AVAudioPlayer?
    
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
            let Naraorurl = Bundle.main.url(forResource: "narrador1", withExtension: "wav")
            
            do{
                self.narrator = try AVAudioPlayer(contentsOf: Naraorurl!)
                
                self.narrator?.play()
            } catch let error{
                print(error.localizedDescription)
            }
        })
        
        let url = Bundle.main.url(forResource: "fondo", withExtension: "mp3")
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            
            player?.play()
            player?.numberOfLoops = -1
            player?.volume = 0.2
        } catch let error{
            print(error.localizedDescription)
        }
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
                let Naratorurl = Bundle.main.url(forResource: "narrador1", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 2:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaDosController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in
                let Naratorurl = Bundle.main.url(forResource: "narrador2", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 3:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaTresController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaTresController).viewDidHadAppear()
                let Naratorurl = Bundle.main.url(forResource: "narrador3", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 4:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaCuatroController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaCuatroController).viewDidHadAppear()
                let Naratorurl = Bundle.main.url(forResource: "narrador4", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 5:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaCincoController(frame: self.vw_ultraview.bounds))
                
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaCincoController).viewDidHadAppear()
                let Naratorurl = Bundle.main.url(forResource: "narrador5", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 6:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaSeisController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaSeisController).viewDidHadAppear()
                let Naratorurl = Bundle.main.url(forResource: "narrador6", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 7:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaSieteController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaSieteController).viewDidHadAppear()
                let Naratorurl = Bundle.main.url(forResource: "narrador7", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 8:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaOchoController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaOchoController).viewDidHadAppear()
                let Naratorurl = Bundle.main.url(forResource: "narrador8", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 9:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaNueveController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaNueveController).viewDidHadAppear()
                let Naratorurl = Bundle.main.url(forResource: "narrador9", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 10:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaDiezController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaDiezController).viewDidHadAppear()
                let Naratorurl = Bundle.main.url(forResource: "narrador10", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 11:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaOnceController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaOnceController).viewDidHadAppear()
                let Naratorurl = Bundle.main.url(forResource: "narrador11", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        case 12:
            UIView.transition(with: vw_ultraview, duration: 2.0, options: [.transitionCurlDown], animations: {
                for vista in self.vw_ultraview.subviews{
                    vista.removeFromSuperview()
                }
                self.vw_ultraview.addSubview(PaginaDoceController(frame: self.vw_ultraview.bounds))
            }, completion: {_ in //DidAppear
                (self.vw_ultraview.subviews[0] as! PaginaDoceController).viewDidHadAppear()
                let Naratorurl = Bundle.main.url(forResource: "narrador12", withExtension: "wav")
                
                do{
                    self.narrator = try AVAudioPlayer(contentsOf: Naratorurl!)
                    
                    self.narrator?.play()
                } catch let error{
                    print(error.localizedDescription)
                }
            })
        default:
            fatalError("Not Implemented")
        }
        
    }
    
}

