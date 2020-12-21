// swiftlint:disable all
import Amplify
import Foundation

extension Note {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case body
    case creationDate
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let n = Note.keys
    
    model.pluralName = "NS"
    
    model.fields(
      .id(),
      .field(n.body, is: .required, ofType: .string),
      .field(n.creationDate, is: .optional, ofType: .dateTime)
    )
    }
}
