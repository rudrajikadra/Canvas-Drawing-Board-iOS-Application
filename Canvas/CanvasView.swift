//
//  CanvasView.swift
//  Canvas
//
//  Created by Rudra Jikadra on 16/12/17.
//  Copyright © 2017 Rudra Jikadra. All rights reserved.
//

import UIKit

class CanvasView: UIView {
    
    var lineColor:UIColor!
    var lineWidth:CGFloat!
    var path:UIBezierPath!
    var touchPoint:CGPoint!
    var startPoint:CGPoint!
    
    var k = 0
    
    var currentColor = UIColor.white
    
    override func layoutSubviews() {
        self.clipsToBounds = true
        self.isMultipleTouchEnabled = false
        
        lineColor = currentColor
        lineWidth = 10
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        k = 1
        let touch = touches.first
        startPoint = touch?.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        touchPoint = touch?.location(in: self)
        
        path = UIBezierPath()
        path.move(to: startPoint)
        path.addLine(to: touchPoint)
        startPoint = touchPoint
        
        drawShapeLayer()
    }
    
    func drawShapeLayer() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = lineColor.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        self.layer.addSublayer(shapeLayer)
        self.setNeedsDisplay()
    }
    
    func colorChange( c:Int){
        let c = c
        if c == 1 {
            currentColor = UIColor.red
            lineColor = currentColor
        }else if c == 2 {
            currentColor = UIColor.green
            lineColor = currentColor
        }else if c == 3 {
            currentColor = UIColor.blue
            lineColor = currentColor
        }else if c == 4 {
            currentColor = UIColor.magenta
            lineColor = currentColor
        }else if c == 5 {
            currentColor = UIColor.yellow
            lineColor = currentColor
        }
        else{
            currentColor = UIColor.white
            lineColor = currentColor
        }
        
    }
    
    
    func clearCanvas() {
        if k == 0 {
        }
        else {
            path.removeAllPoints()
            self.layer.sublayers = nil
            self.setNeedsDisplay()
        }
    }

}
