//
//  ModalViewListStruct.swift
//  Health
//
//  Created by Andrea Romano on 15/11/23.
//

import SwiftUI

struct ModalViewListStruct: Identifiable {
    let id = UUID()
    let name: String
    
}

struct ModalList {
    
    static let modalList = [
        ModalViewListStruct(name: "Health Details"),
        ModalViewListStruct(name: "Medical ID")
    ]
}
