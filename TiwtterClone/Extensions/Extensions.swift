//
//  Extensions.swift
//  TiwtterClone
//
//  Created by Pinakpani Mukherjee on 2025/04/17.
//

import UIKit

extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
