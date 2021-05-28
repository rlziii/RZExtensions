import Foundation

public extension JSONDecoder {
    /// A convenience initializer for `JSONDecoder` that allows more detailed customization for strategies.
    ///
    /// - Parameters:
    ///   - keyDecodingStrategy: A value that determines how a type's coding keys are decoded from JSON keys; defaults to `useDefaultKeys`.
    ///   - dateDecodingStrategy: The strategy used when decoding dates from part of a JSON object; defaults to `deferredToDate`.
    ///   - dataDecodingStrategy: The strategy that a decoder uses to decode raw data; defaults to `base64`.
    ///   - nonConformingFloatDecodingStrategy: The strategy used by a decoder when it encounters exceptional floating-point values; defaults to `throw`.
    ///   - userInfo: A dictionary you use to customize the decoding process by providing contextual information.
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
