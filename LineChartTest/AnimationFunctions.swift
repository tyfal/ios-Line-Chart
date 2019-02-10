//
//  AnimationFunctions.swift
//  LineChartTest
//
//  Created by Tyler Falcoff on 2/9/19.
//  Copyright © 2019 Tyler Falcoff. All rights reserved.
//

import Foundation
import UIKit


func drawSeries(CurrentVC: UIView, ySeries:[Double]) {
    
    drawRect(CurrentVC: CurrentVC)
    
    let fitY = scaleYSeries(CurrentVC: CurrentVC, ySeries: ySeries)
    
    var xSeries:[Double] = []
    
    for i in 1...ySeries.count {
        
        xSeries.append(Double(i))
        
    }
    
    let fitX = scaleXSeries(CurrentVC: CurrentVC, xSeries: xSeries)
    
    for i in 1..<fitX.count {
            
        drawLine(CurrentVC: CurrentVC, start: CGPoint(x: fitX[i-1], y: fitY[i-1]), end: CGPoint(x: fitX[i], y: fitY[i]))
        
    }
    
}


func drawLine(CurrentVC: UIView, start: CGPoint, end: CGPoint) {
    
    //design the path
    let path = UIBezierPath()
    path.move(to: start)
    path.addLine(to: end)
    
    //design path in layer
    let shapeLayer = CAShapeLayer()
    shapeLayer.path = path.cgPath
    shapeLayer.strokeColor = UIColor.red.cgColor
    shapeLayer.lineWidth = 1.0
    
    CurrentVC.layer.addSublayer(shapeLayer)

}

func scaleXSeries(CurrentVC: UIView, xSeries: [Double]) -> [Double] {
    
    var scaledXSeries: [Double] = []
    
    let screenSize = CurrentVC.frame.size
    
    let max = findMax(series: xSeries)
    
    let min = findMin(series: xSeries)
    
    let scaleFactor = Double(screenSize.width)/(max-min)
    
    for i in xSeries {
        
        scaledXSeries.append((i-min)*scaleFactor)
        
    }
    
    return scaledXSeries
    
}

func scaleYSeries(CurrentVC: UIView, ySeries: [Double]) -> [Double] {
    
    var scaledYSeries: [Double] = []
    
    let screenSize = CurrentVC.frame.size
    
    let max = findMax(series: ySeries)
    
    let min = findMin(series: ySeries)
    
    let scaleFactor = Double(screenSize.height)/(max-min)
    
    for i in ySeries {
        
        scaledYSeries.append(Double(screenSize.height) - (i-min)*scaleFactor)
        
    }
    
    return scaledYSeries
    
}

func findMax(series: [Double]) -> Double {
    
    var max = series[0]
    
    for i in series {
        
        if (i > max) {
            
            max = i
            
        }
        
    }
    
    return max
    
}

func findMin(series: [Double]) -> Double {
    
    var min = series[0]
    
    for i in series {
        
        if (i < min) {
            
            min = i
            
        }
        
    }
    
    return min
    
}


func drawRect(CurrentVC: UIView) {
    
    let screenSize = CurrentVC.frame.size
    
    let img = UIImageView(frame: CGRect(origin: CGPoint(x: 0, y: 0),size: CGSize(width: screenSize.width, height: screenSize.height)))
    
    img.backgroundColor = UIColor(red: 158/255, green: 215/255, blue: 245/255, alpha: 1)
    
    CurrentVC.addSubview(img)
    
}

