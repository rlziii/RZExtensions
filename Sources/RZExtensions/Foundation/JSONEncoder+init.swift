import Foundation

public extension JSONEncoder {
    convenience init(keyEncodingStrategy: KeyEncodingStrategy = .useDefaultKeys,
                     dateEncodingStrategy: DateEncodingStrategy = .deferredToDate,
                     dataEncodingStrategy: DataEncodingStrategy = .base64,
                     nonConformingFloatEncodingStrategy: NonConformingFloatEncodingStrategy = .throw,
                     userInfo: [CodingUserInfoKey: Any] = [:],
                     outputFormatting: OutputFormatting = []) {
        self.init()
        self.keyEncodingStrategy = keyEncodingStrategy
        self.dateEncodingStrategy = dateEncodingStrategy
        self.dataEncodingStrategy = dataEncodingStrategy
        self.nonConformingFloatEncodingStrategy = nonConformingFloatEncodingStrategy
        self.userInfo = userInfo
        self.outputFormatting = outputFormatting
    }
}
