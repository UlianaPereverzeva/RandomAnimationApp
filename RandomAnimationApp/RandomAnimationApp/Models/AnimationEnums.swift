//
//  AnimationEnums.swift
//  RandomAnimationApp
//
//  Created by ульяна on 19.12.22.
//

import Foundation
enum AnimationType:String {
    
case shake
case pop
case morph
case squeeze
case wobble
case swing
case flipX
case flipY
case fall
case squeezeLeft
case squeezeRight
case squeezeDown
case squeezeUp
case slideLeft
case slideRight
case slideDown
case slideUp
case fadeIn
case fadeOut
case fadeInLeft
case fadeInRight
case fadeInDown
case fadeInUp
case zoomIn
case zoomOut
case flash
}

//enum Properties:String{
//    case force
//    case duration
//    case delay
//    case damping
//    case velocity
//    case repeatCount
//    case scale
//    case x
//    case y
//    case rotate
//}

enum Curve: String {
    case spring
    case linear
    case easeIn
    case easeOut
    case easeInOut
}


