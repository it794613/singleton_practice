//
//  Datas.swift
//  singleton_test
//
//  Created by 최진용 on 2023/04/10.
//

import Foundation


protocol DataProtocol {
    var number: Int { get set }
}


class Datas: DataProtocol {
    static let shared = Datas()
    var number: Int = 0
}
