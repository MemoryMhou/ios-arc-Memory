let jsonData = """
{
  "isbn": "123-456-222",
  "author": {
    "lastname": "Doe",
    "firstname": "Jane"
  },
  "editor": {
    "lastname": "Smith",
    "firstname": "Jane"
  },
  "title": "The Ultimate Database Study Guide",
  "category": [
    "Non-Fiction",
    "Technology"
  ]
}
""".data(using: .utf8)!

struct Book: Codable {
  let isbn: String
  let author: Author
  let editor: Editor
  let title: String
  let category: [String]
}

struct Author: Codable {
  let lastname: String
  let firstname: String
}

struct Editor: Codable {
  let lastname: String
  let firstname: String
}

let decoder = JSONDecoder()
let book = try decoder.decode(Book.self, from: jsonData)
  
