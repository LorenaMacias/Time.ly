//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateItemInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, title: String, desc: String? = nil, dueDate: String? = nil, people: String? = nil, priority: String? = nil, createdBy: String? = nil) {
    graphQLMap = ["id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String {
    get {
      return graphQLMap["title"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var desc: String? {
    get {
      return graphQLMap["desc"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "desc")
    }
  }

  public var dueDate: String? {
    get {
      return graphQLMap["dueDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dueDate")
    }
  }

  public var people: String? {
    get {
      return graphQLMap["people"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "people")
    }
  }

  public var priority: String? {
    get {
      return graphQLMap["priority"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "priority")
    }
  }

  public var createdBy: String? {
    get {
      return graphQLMap["createdBy"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdBy")
    }
  }
}

public struct UpdateItemInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, title: String? = nil, desc: String? = nil, dueDate: String? = nil, people: String? = nil, priority: String? = nil, createdBy: String? = nil) {
    graphQLMap = ["id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var desc: String? {
    get {
      return graphQLMap["desc"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "desc")
    }
  }

  public var dueDate: String? {
    get {
      return graphQLMap["dueDate"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dueDate")
    }
  }

  public var people: String? {
    get {
      return graphQLMap["people"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "people")
    }
  }

  public var priority: String? {
    get {
      return graphQLMap["priority"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "priority")
    }
  }

  public var createdBy: String? {
    get {
      return graphQLMap["createdBy"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdBy")
    }
  }
}

public struct DeleteItemInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelitemFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDFilterInput? = nil, title: ModelStringFilterInput? = nil, desc: ModelStringFilterInput? = nil, dueDate: ModelStringFilterInput? = nil, people: ModelStringFilterInput? = nil, priority: ModelStringFilterInput? = nil, createdBy: ModelStringFilterInput? = nil, and: [ModelitemFilterInput?]? = nil, or: [ModelitemFilterInput?]? = nil, not: ModelitemFilterInput? = nil) {
    graphQLMap = ["id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDFilterInput? {
    get {
      return graphQLMap["id"] as! ModelIDFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var title: ModelStringFilterInput? {
    get {
      return graphQLMap["title"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var desc: ModelStringFilterInput? {
    get {
      return graphQLMap["desc"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "desc")
    }
  }

  public var dueDate: ModelStringFilterInput? {
    get {
      return graphQLMap["dueDate"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dueDate")
    }
  }

  public var people: ModelStringFilterInput? {
    get {
      return graphQLMap["people"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "people")
    }
  }

  public var priority: ModelStringFilterInput? {
    get {
      return graphQLMap["priority"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "priority")
    }
  }

  public var createdBy: ModelStringFilterInput? {
    get {
      return graphQLMap["createdBy"] as! ModelStringFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "createdBy")
    }
  }

  public var and: [ModelitemFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelitemFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelitemFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelitemFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelitemFilterInput? {
    get {
      return graphQLMap["not"] as! ModelitemFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public struct ModelStringFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }
}

public final class CreateItemMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateItem($input: CreateItemInput!) {\n  createItem(input: $input) {\n    __typename\n    id\n    title\n    desc\n    dueDate\n    people\n    priority\n    createdBy\n  }\n}"

  public var input: CreateItemInput

  public init(input: CreateItemInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createItem", arguments: ["input": GraphQLVariable("input")], type: .object(CreateItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createItem: CreateItem? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createItem": createItem.flatMap { $0.snapshot }])
    }

    public var createItem: CreateItem? {
      get {
        return (snapshot["createItem"] as? Snapshot).flatMap { CreateItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createItem")
      }
    }

    public struct CreateItem: GraphQLSelectionSet {
      public static let possibleTypes = ["item"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("desc", type: .scalar(String.self)),
        GraphQLField("dueDate", type: .scalar(String.self)),
        GraphQLField("people", type: .scalar(String.self)),
        GraphQLField("priority", type: .scalar(String.self)),
        GraphQLField("createdBy", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, desc: String? = nil, dueDate: String? = nil, people: String? = nil, priority: String? = nil, createdBy: String? = nil) {
        self.init(snapshot: ["__typename": "item", "id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var desc: String? {
        get {
          return snapshot["desc"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "desc")
        }
      }

      public var dueDate: String? {
        get {
          return snapshot["dueDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dueDate")
        }
      }

      public var people: String? {
        get {
          return snapshot["people"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "people")
        }
      }

      public var priority: String? {
        get {
          return snapshot["priority"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "priority")
        }
      }

      public var createdBy: String? {
        get {
          return snapshot["createdBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdBy")
        }
      }
    }
  }
}

public final class UpdateItemMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateItem($input: UpdateItemInput!) {\n  updateItem(input: $input) {\n    __typename\n    id\n    title\n    desc\n    dueDate\n    people\n    priority\n    createdBy\n  }\n}"

  public var input: UpdateItemInput

  public init(input: UpdateItemInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateItem", arguments: ["input": GraphQLVariable("input")], type: .object(UpdateItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateItem: UpdateItem? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateItem": updateItem.flatMap { $0.snapshot }])
    }

    public var updateItem: UpdateItem? {
      get {
        return (snapshot["updateItem"] as? Snapshot).flatMap { UpdateItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateItem")
      }
    }

    public struct UpdateItem: GraphQLSelectionSet {
      public static let possibleTypes = ["item"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("desc", type: .scalar(String.self)),
        GraphQLField("dueDate", type: .scalar(String.self)),
        GraphQLField("people", type: .scalar(String.self)),
        GraphQLField("priority", type: .scalar(String.self)),
        GraphQLField("createdBy", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, desc: String? = nil, dueDate: String? = nil, people: String? = nil, priority: String? = nil, createdBy: String? = nil) {
        self.init(snapshot: ["__typename": "item", "id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var desc: String? {
        get {
          return snapshot["desc"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "desc")
        }
      }

      public var dueDate: String? {
        get {
          return snapshot["dueDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dueDate")
        }
      }

      public var people: String? {
        get {
          return snapshot["people"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "people")
        }
      }

      public var priority: String? {
        get {
          return snapshot["priority"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "priority")
        }
      }

      public var createdBy: String? {
        get {
          return snapshot["createdBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdBy")
        }
      }
    }
  }
}

public final class DeleteItemMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteItem($input: DeleteItemInput!) {\n  deleteItem(input: $input) {\n    __typename\n    id\n    title\n    desc\n    dueDate\n    people\n    priority\n    createdBy\n  }\n}"

  public var input: DeleteItemInput

  public init(input: DeleteItemInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteItem", arguments: ["input": GraphQLVariable("input")], type: .object(DeleteItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteItem: DeleteItem? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteItem": deleteItem.flatMap { $0.snapshot }])
    }

    public var deleteItem: DeleteItem? {
      get {
        return (snapshot["deleteItem"] as? Snapshot).flatMap { DeleteItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteItem")
      }
    }

    public struct DeleteItem: GraphQLSelectionSet {
      public static let possibleTypes = ["item"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("desc", type: .scalar(String.self)),
        GraphQLField("dueDate", type: .scalar(String.self)),
        GraphQLField("people", type: .scalar(String.self)),
        GraphQLField("priority", type: .scalar(String.self)),
        GraphQLField("createdBy", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, desc: String? = nil, dueDate: String? = nil, people: String? = nil, priority: String? = nil, createdBy: String? = nil) {
        self.init(snapshot: ["__typename": "item", "id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var desc: String? {
        get {
          return snapshot["desc"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "desc")
        }
      }

      public var dueDate: String? {
        get {
          return snapshot["dueDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dueDate")
        }
      }

      public var people: String? {
        get {
          return snapshot["people"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "people")
        }
      }

      public var priority: String? {
        get {
          return snapshot["priority"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "priority")
        }
      }

      public var createdBy: String? {
        get {
          return snapshot["createdBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdBy")
        }
      }
    }
  }
}

public final class GetItemQuery: GraphQLQuery {
  public static let operationString =
    "query GetItem($id: ID!) {\n  getItem(id: $id) {\n    __typename\n    id\n    title\n    desc\n    dueDate\n    people\n    priority\n    createdBy\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getItem", arguments: ["id": GraphQLVariable("id")], type: .object(GetItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getItem: GetItem? = nil) {
      self.init(snapshot: ["__typename": "Query", "getItem": getItem.flatMap { $0.snapshot }])
    }

    public var getItem: GetItem? {
      get {
        return (snapshot["getItem"] as? Snapshot).flatMap { GetItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getItem")
      }
    }

    public struct GetItem: GraphQLSelectionSet {
      public static let possibleTypes = ["item"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("desc", type: .scalar(String.self)),
        GraphQLField("dueDate", type: .scalar(String.self)),
        GraphQLField("people", type: .scalar(String.self)),
        GraphQLField("priority", type: .scalar(String.self)),
        GraphQLField("createdBy", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, desc: String? = nil, dueDate: String? = nil, people: String? = nil, priority: String? = nil, createdBy: String? = nil) {
        self.init(snapshot: ["__typename": "item", "id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var desc: String? {
        get {
          return snapshot["desc"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "desc")
        }
      }

      public var dueDate: String? {
        get {
          return snapshot["dueDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dueDate")
        }
      }

      public var people: String? {
        get {
          return snapshot["people"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "people")
        }
      }

      public var priority: String? {
        get {
          return snapshot["priority"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "priority")
        }
      }

      public var createdBy: String? {
        get {
          return snapshot["createdBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdBy")
        }
      }
    }
  }
}

public final class ListItemsQuery: GraphQLQuery {
  public static let operationString =
    "query ListItems($filter: ModelitemFilterInput, $limit: Int, $nextToken: String) {\n  listItems(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      title\n      desc\n      dueDate\n      people\n      priority\n      createdBy\n    }\n    nextToken\n  }\n}"

  public var filter: ModelitemFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelitemFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listItems", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listItems: ListItem? = nil) {
      self.init(snapshot: ["__typename": "Query", "listItems": listItems.flatMap { $0.snapshot }])
    }

    public var listItems: ListItem? {
      get {
        return (snapshot["listItems"] as? Snapshot).flatMap { ListItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listItems")
      }
    }

    public struct ListItem: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelitemConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelitemConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["item"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("desc", type: .scalar(String.self)),
          GraphQLField("dueDate", type: .scalar(String.self)),
          GraphQLField("people", type: .scalar(String.self)),
          GraphQLField("priority", type: .scalar(String.self)),
          GraphQLField("createdBy", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, title: String, desc: String? = nil, dueDate: String? = nil, people: String? = nil, priority: String? = nil, createdBy: String? = nil) {
          self.init(snapshot: ["__typename": "item", "id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var desc: String? {
          get {
            return snapshot["desc"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "desc")
          }
        }

        public var dueDate: String? {
          get {
            return snapshot["dueDate"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "dueDate")
          }
        }

        public var people: String? {
          get {
            return snapshot["people"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "people")
          }
        }

        public var priority: String? {
          get {
            return snapshot["priority"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "priority")
          }
        }

        public var createdBy: String? {
          get {
            return snapshot["createdBy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdBy")
          }
        }
      }
    }
  }
}

public final class OnCreateItemSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateItem {\n  onCreateItem {\n    __typename\n    id\n    title\n    desc\n    dueDate\n    people\n    priority\n    createdBy\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateItem", type: .object(OnCreateItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateItem: OnCreateItem? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateItem": onCreateItem.flatMap { $0.snapshot }])
    }

    public var onCreateItem: OnCreateItem? {
      get {
        return (snapshot["onCreateItem"] as? Snapshot).flatMap { OnCreateItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateItem")
      }
    }

    public struct OnCreateItem: GraphQLSelectionSet {
      public static let possibleTypes = ["item"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("desc", type: .scalar(String.self)),
        GraphQLField("dueDate", type: .scalar(String.self)),
        GraphQLField("people", type: .scalar(String.self)),
        GraphQLField("priority", type: .scalar(String.self)),
        GraphQLField("createdBy", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, desc: String? = nil, dueDate: String? = nil, people: String? = nil, priority: String? = nil, createdBy: String? = nil) {
        self.init(snapshot: ["__typename": "item", "id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var desc: String? {
        get {
          return snapshot["desc"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "desc")
        }
      }

      public var dueDate: String? {
        get {
          return snapshot["dueDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dueDate")
        }
      }

      public var people: String? {
        get {
          return snapshot["people"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "people")
        }
      }

      public var priority: String? {
        get {
          return snapshot["priority"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "priority")
        }
      }

      public var createdBy: String? {
        get {
          return snapshot["createdBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdBy")
        }
      }
    }
  }
}

public final class OnUpdateItemSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateItem {\n  onUpdateItem {\n    __typename\n    id\n    title\n    desc\n    dueDate\n    people\n    priority\n    createdBy\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateItem", type: .object(OnUpdateItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateItem: OnUpdateItem? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateItem": onUpdateItem.flatMap { $0.snapshot }])
    }

    public var onUpdateItem: OnUpdateItem? {
      get {
        return (snapshot["onUpdateItem"] as? Snapshot).flatMap { OnUpdateItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateItem")
      }
    }

    public struct OnUpdateItem: GraphQLSelectionSet {
      public static let possibleTypes = ["item"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("desc", type: .scalar(String.self)),
        GraphQLField("dueDate", type: .scalar(String.self)),
        GraphQLField("people", type: .scalar(String.self)),
        GraphQLField("priority", type: .scalar(String.self)),
        GraphQLField("createdBy", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, desc: String? = nil, dueDate: String? = nil, people: String? = nil, priority: String? = nil, createdBy: String? = nil) {
        self.init(snapshot: ["__typename": "item", "id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var desc: String? {
        get {
          return snapshot["desc"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "desc")
        }
      }

      public var dueDate: String? {
        get {
          return snapshot["dueDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dueDate")
        }
      }

      public var people: String? {
        get {
          return snapshot["people"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "people")
        }
      }

      public var priority: String? {
        get {
          return snapshot["priority"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "priority")
        }
      }

      public var createdBy: String? {
        get {
          return snapshot["createdBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdBy")
        }
      }
    }
  }
}

public final class OnDeleteItemSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteItem {\n  onDeleteItem {\n    __typename\n    id\n    title\n    desc\n    dueDate\n    people\n    priority\n    createdBy\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteItem", type: .object(OnDeleteItem.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteItem: OnDeleteItem? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteItem": onDeleteItem.flatMap { $0.snapshot }])
    }

    public var onDeleteItem: OnDeleteItem? {
      get {
        return (snapshot["onDeleteItem"] as? Snapshot).flatMap { OnDeleteItem(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteItem")
      }
    }

    public struct OnDeleteItem: GraphQLSelectionSet {
      public static let possibleTypes = ["item"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("desc", type: .scalar(String.self)),
        GraphQLField("dueDate", type: .scalar(String.self)),
        GraphQLField("people", type: .scalar(String.self)),
        GraphQLField("priority", type: .scalar(String.self)),
        GraphQLField("createdBy", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, title: String, desc: String? = nil, dueDate: String? = nil, people: String? = nil, priority: String? = nil, createdBy: String? = nil) {
        self.init(snapshot: ["__typename": "item", "id": id, "title": title, "desc": desc, "dueDate": dueDate, "people": people, "priority": priority, "createdBy": createdBy])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var desc: String? {
        get {
          return snapshot["desc"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "desc")
        }
      }

      public var dueDate: String? {
        get {
          return snapshot["dueDate"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dueDate")
        }
      }

      public var people: String? {
        get {
          return snapshot["people"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "people")
        }
      }

      public var priority: String? {
        get {
          return snapshot["priority"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "priority")
        }
      }

      public var createdBy: String? {
        get {
          return snapshot["createdBy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdBy")
        }
      }
    }
  }
}