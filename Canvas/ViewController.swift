//
//  ViewController.swift
//  Canvas
//
//  Created by Rudra Jikadra on 16/12/17.
//  Copyright © 2017 Rudra Jikadra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func clear(_ sender: Any) {
        canvasView.clearCanvas()
    }
    
    
    
    //Color Change
    
    @IBAction func redColor(_ sender: Any) {
        canvasView.colorChange(c: 1)
    }
    @IBAction func greenColor(_ sender: Any) {
        canvasView.colorChange(c: 2)
    }
    @IBAction func blueColor(_ sender: Any) {
        canvasView.colorChange(c: 3)
    }
    @IBAction func magentaColor(_ sender: Any) {
        canvasView.colorChange(c: 4)
    }
    @IBAction func yellowColor(_ sender: Any) {
        canvasView.colorChange(c: 5)
    }
    @IBAction func whiteColor(_ sender: Any) {
        canvasView.colorChange(c: 6)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

