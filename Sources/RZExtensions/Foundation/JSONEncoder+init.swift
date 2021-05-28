import Foundation

public extension JSONEncoder {
    /// A convenience initializer for `JSONEncoder` that allows more detailed customization for strategies.
    ///
    /// - Parameters:
    ///   - keyEncodingStrategy: A value that determines how a type's coding keys are encoded as JSON keys; defaults to `useDefaultKeys`.
    ///   - dateEncodingStrategy: The strategy used when encoding dates as part of a JSON object; defaults to `deferredToDate`.
    ///   - dataEncodingStrategy: The strategy that an encoder uses to encode raw data; defaults to `base64`.
    ///   - nonConformingFloatEncodingStrategy: The strategy used by an encoder when it encounters exceptional floating-point values; defaults to `throw`.
    ///   - userInfo: A dictionary you use to customize the encoding process by providing contextual information.
    ///   - outputFormatting: A value that determines the readability, size, and element order of the encoded JSON object.
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
