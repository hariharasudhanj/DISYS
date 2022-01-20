//
//  Configuration.swift
//  DISYS_HARI
//
//  Created by Hariharasudhan J on 20/01/22.
//

import Foundation
class Configuration {
    
    static let shared = Configuration()
    
    func hostURL() -> String {
        return "https://api.qa.mrhe.gov.ae/mrhecloud/v1.4/api"
    }
    
    struct URLPaths {
        static let towhomitmayconcern = "/iskan/v1/certificates/towhomitmayconcern"
        static let appointments = "/api/appointments/"
        
    }
     
    struct EncounterPath {
        
        static func encounterAudio() -> (String, String) {
            let path = "/api/encounters/upload"
            let withName = "encounterFile"
            return (path, withName)
        }
        
    }
    
//    struct Headers {
//        
//        
//        static let contentHeader = HTTPHeader(name: "Content-Type", value: "application/json")
//        static let multipartContentHeader = HTTPHeader(name: "Content-Type", value: "multipart/form-data")
//        
//        static func authorizationHeader(token: String) -> HTTPHeader {
//            return HTTPHeader(name: "Authorization", value: "Bearer " + token)
//        }
//    }
    struct params{
       static let parameterDictionary = ["name" : "Himanshu", "emailAddress" : "jdsf@gmail.com","unifiedNumber":"2268"]

    }
    
}
