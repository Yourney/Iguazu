//
//  IGCParser.swift
//  Iguazu
//
//  Created by Engin Kurutepe on 12/06/16.
//  Copyright © 2016 Fifteen Jugglers Software. All rights reserved.
//

import Foundation

/// <#Description#>
class IGCParser: NSObject {

    /// <#Description#>
    ///
    /// - parameter igcString: <#igcString description#>
    ///
    /// - returns: <#return value description#>
    class func parse(_ igcString: String) -> IGCData? {
        return nil
    }
}

/// <#Description#>
struct IGCData {
    let header: IGCHeader
    let records: [IGCRecord]
    let extensions: [IGCExtension]?
}
