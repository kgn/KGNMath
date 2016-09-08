//
//  KGNMath.swift
//  KGNMath
//
//  Created by David Keegan on 9/08/16.
//  Copyright (c) 2016 David Keegan. All rights reserved.
//

import Foundation

public func clamp<C: Comparable>(_ value: C, _ lower: C, _ upper: C) -> C {
    return min(max(value, lower), upper)
}

public func mix<F: FloatingPoint>(_ lower: F, _ upper: F, _ ratio: F) -> F {
    return (upper-lower) * ratio + lower
}

public func mod<F: FloatingPoint>(_ x: F, _ y: F) -> F {
    return x - y * floor(x/y)
}

public func fract<F: FloatingPoint>(_ x: F) -> F {
    return x - floor(x)
}
