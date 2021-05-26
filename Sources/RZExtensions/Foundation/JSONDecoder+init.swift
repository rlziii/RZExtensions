import Foundation

public extension JSONDecoder {
    convenience init(keyDecodingStrategy: KeyDecodingStrategy = .useDefaultKeys,
                     dateDecodingStrategy: DateDecodingStrategy = .deferredToDate,
                     dataDecodingStrategy: DataDecodingStrategy = .base64,
                     nonConformingFloatDecodingStrategy: NonConformingFloatDecodingStrategy = .throw,
                     userInfo: [CodingUserInfoKey: Any] = [:]) {
        self.init()
        self.keyDecodingStrategy = keyDecodingStrategy
        self.dateDecodingStrategy = dateDecodingStrategy
        self.dataDecodingStrategy = dataDecodingStrategy
        self.nonConformingFloatDecodingStrategy = nonConformingFloatDecodingStrategy
        self.userInfo = userInfo
    }
}
