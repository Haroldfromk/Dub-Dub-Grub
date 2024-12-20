//
//  CloudKitManager.swift
//  DubDubGrub
//
//  Created by Dongik Song on 12/20/24.
//

import CloudKit

struct CloudKitManager {
    
    static func getLocation(completed: @escaping (Result<[DDGLocation], Error>) -> Void) {
        
        let sortDescriptor = NSSortDescriptor(key: DDGLocation.kName, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        
        query.sortDescriptors = [sortDescriptor]
        
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            guard error == nil else {
                completed(.failure(error!))
                return
            }
            
            guard let records = records else { return }
            
            let locations = records.map { $0.convertToDDGLocation() }
            
//            var locations: [DDGLocation] = []
        
//            for record in records {
//                let location = DDGLocation(record: record)
//                locations.append(location)
//            }
            
            completed(.success(locations))
        }
    }
    
}
