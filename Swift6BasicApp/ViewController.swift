//
//  ViewController.swift
//  Swift6BasicApp
//
//  Created by 祥平 on 2021/02/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var blurView: UIVisualEffectView!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var tapCountLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

    }

    @IBAction func tap(_ sender: Any) {
        
        count += 1
        countLabel.text = String(count)
        
        if count > 5{
            imageView.image = UIImage(named: "back2")
            countLabel.textColor = .yellow
        }
        if count > 10{
            imageView.image = UIImage(named: "back3")
            countLabel.textColor = .red
        }
        
        switch count {
        case 6:
            tapCountLabel.text = "6です"
            break
        case 10:
            tapCountLabel.text = "10です"
            break
        case 16:
            tapCountLabel.text = "16です"
            break
        case 20:
            tapCountLabel.text = "20です"
            break
        default:
            tapCountLabel.text = "どの数字でもありません"
        }
        
    }
    
}

