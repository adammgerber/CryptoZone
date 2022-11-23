//
//  Double.swift
//  Crypto
//
//  Created by Adam Gerber on 23/11/2022.
//

import Foundation

extension Double {
    
    
    private var currencyFormatterr2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current // default value
        formatter.currencyCode = "usd" // change currency
        formatter.currencySymbol = "$" // change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatterr2.string(from: number) ?? "$0.00"
    }
    
    
    
    /// Converts  a Double into a currency with 2-6 decimal places
    ///  ```
    ///     Convert 1234.56 to $1,234.56
    ///     Convert 12.3456 to $12.3456
    ///     Convert 0.123456 to $0.123456
    ///   ```
    private var currencyFormatterr6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.locale = .current // default value
        formatter.currencyCode = "usd" // change currency
        formatter.currencySymbol = "$" // change currency symbol
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatterr6.string(from: number) ?? "$0.00"
    }
    
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
