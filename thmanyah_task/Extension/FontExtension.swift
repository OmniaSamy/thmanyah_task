//
//  FontExtension.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import SwiftUI

extension Font {
    
    static func bold(size: CGFloat) -> Font {
        .custom("IBMPlexSansArabic-Bold", size: size)
    }
    
    static func extraLight(size: CGFloat) -> Font {
        .custom("IBMPlexSansArabic-ExtraLight", size: size)
    }
    
    static func light(size: CGFloat) -> Font {
        .custom("IBMPlexSansArabic-Light", size: size)
    }
    
    static func medium(size: CGFloat) -> Font {
        .custom("IBMPlexSansArabic-Medium", size: size)
    }
    
    static func regular(size: CGFloat) -> Font {
        .custom("MyCustomFont-Regular", size: size)
    }
    
    static func semiBold(size: CGFloat) -> Font {
        .custom("IBMPlexSansArabic-SemiBold", size: size)
    }
    
    static func text(size: CGFloat) -> Font {
        .custom("IBMPlexSansArabic-Text", size: size)
    }
    
    static func thin(size: CGFloat) -> Font {
        .custom("IBMPlexSansArabic-Thin", size: size)
    }
}
