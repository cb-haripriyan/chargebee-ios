//
// Created by Mac Book on 6/7/20.
//

import Foundation

@available(macCatalyst 13.0, *)
class PlanResource: APIResource {
    
    typealias ModelType = PlanWrapper
    typealias ErrorType = CBErrorDetail
    
    var authHeader: String? {
        get {
          "Basic \(CBEnvironment.encodedApiKey)"
        }
    }
    var baseUrl: String
    var methodPath: String = "/v2/plans"
    
    init(_ planId: String) {
        self.baseUrl = CBEnvironment.baseUrl
        self.methodPath += "/\(planId)"
    }
}
