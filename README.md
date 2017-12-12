# SwiftSmartBinder

* Are you tired of force casting in every json or other binding?
* Do you want to type cast in a fancy way?

So then, this library ,*SmartBinder*, is the right choice for ya.

```
  // example
  struct User {
    var name : String!
    var age : Int!
    var id : Int = -1
    
    var description: String!
  }
```
Suppose you have this dictionary structure
```
  {
    "name" : "A Name",
    "age" : 19,
    "id" : 32,
    "desc" : "blah blah blah blah blah."
  }
```

If you are going to parse that dictionary, you might have to parse it in traditional way.
Like this
```
  var user = User();
  user.name = json["name"] as! String
  user.age = json["age"] as! Int
  user.id = json["id"] as! Int
  user.description = json["desc"] as! String
```
You will have to deal with this `as! String` or `as! Int` whatever the type you cast.
And if you change the type in structure, you will have to change at the place where you force casted.
So, it's a messed up code.

This lib can save you from that.

Instead of traditional way, just do like this.
It smart cast things for ya.

```
  var user = User();
  user.name <- json["name"]
  user.age <- json["age"]
  user.id <- json["id"]
  user.description <- json["desc"]
```

Even if you change the type of `User.age` from `Int!` to `String` or `String!` or `String?`,
SmartBinder still can handle all of this for ya.

SmartBinder work not only for json binding but also for other force casting.
