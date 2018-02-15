//
//  Pagina.swift
//  cuentoQuizaNoTanInfantil
//
//  Created by Maestro on 10/02/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class Pagina : UIView{
    
    var player : AVAudioPlayer?
    
    func bajido(){
        
        let url = Bundle.main.url(forResource: "bajido", withExtension: "mp3")
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            
            player?.play()
            player?.volume = 0.2
        } catch let error{
            print(error.localizedDescription)
        }
        
    }
    
    func toctoc(){
        let url = Bundle.main.url(forResource: "toctoc", withExtension: "mp3")
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            
            player?.play()
            player?.volume = 0.2
        } catch let error{
            print(error.localizedDescription)
        }
        
    }
    
    func aullido(){
        let url = Bundle.main.url(forResource: "aullido", withExtension: "wav")
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            
            player?.play()
            player?.volume = 0.2
        } catch let error{
            print(error.localizedDescription)
        }
        
    }
    
    func plop(){
        let url = Bundle.main.url(forResource: "plop", withExtension: "mp3")
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            
            player?.play()
            player?.volume = 0.2
        } catch let error{
            print(error.localizedDescription)
        }
        
    }
    
    func ronquido(){
        let url = Bundle.main.url(forResource: "ronquido", withExtension: "mp3")
        
        do{
            player = try AVAudioPlayer(contentsOf: url!)
            
            player?.play()
            player?.volume = 0.2
        } catch let error{
            print(error.localizedDescription)
        }
    }
    
}
