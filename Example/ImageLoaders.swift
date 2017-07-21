//
//  ImageLoaders.swift
//  Example
//
//  Created by Greg Spiers on 21/07/2017.
//  Copyright © 2017 Greg Spiers. All rights reserved.
//

import UIKit

public class GenericImageLoader<T> {
    let aProperty: T
    
    public init(aProperty: T) {
        self.aProperty = aProperty
    }
    
    public func imageFromBundle() -> UIImage? {
        // All of these return the wrong bundle:
        // let bundle = Bundle(for: GenericImageLoader.self)
        // let bundle = Bundle(for: GenericImageLoader<T>.self)
        let bundle = Bundle(for: type(of: self))
        
        print("\nUsing bundle:\n")
        dump(bundle)
        return UIImage(named: "SampleImage", in: bundle, compatibleWith: nil)
    }
}

public class NotGenericImageLoader {
    public init() {}
    
    public func imageFromBundle() -> UIImage? {
        let bundle = Bundle(for: type(of: self))
        print("\nUsing bundle:\n")
        dump(bundle)
        return UIImage(named: "SampleImage", in: bundle, compatibleWith: nil)!
    }
}
