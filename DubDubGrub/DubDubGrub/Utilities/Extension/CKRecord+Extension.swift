//
//  CKRecord+Extension.swift
//  DubDubGrub
//
//  Created by Dongik Song on 12/20/24.
//

import CloudKit

extension CKRecord {
    
    func convertToDDGLocation() -> DDGLocation {
        DDGLocation(record: self)
    }
    
    func convertToDDGProfile() -> DDGProfile {
        DDGProfile(record: self)
    }
}
