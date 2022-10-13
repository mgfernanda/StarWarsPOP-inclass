/*:
 # Star Wars Protocols
 
 Below are six structs -- three for Jedi ("Master ...") and three for Sith ("Darth ...").  As you can see comparing the structs, there are some powers which are *specific to the Jedi*, some that are *specific to the Sith*, and some that are *common to any Force user*, whether Jedi or Sith.  Using protocols and extensions as appropriate, refactor this set of structs so that each struct is smaller and less verbose, but retains all of the functionality listed in the handout.
 */

/* struct MasterYoda {
 func lightSaberSkill() -> Int { return 8 }
 func telekinesis() -> Int { return 9 }
 func prescience() -> Int { return 5 }
 func introspection() -> String { return "Search your feelings." }
 func mindControl() -> String { return "Do or do not." }
 }
 
 struct MasterObiWan {
 func lightSaberSkill() -> Int { return 8 }
 func telekinesis() -> Int { return 5 }
 func prescience() -> Int { return 5 }
 func introspection() -> String { return "Search your feelings." }
 func mindControl() -> String { return "These are not the droids you're looking for." }
 }
 
 struct MasterQuiGon {
 func lightSaberSkill() -> Int { return 8 }
 func telekinesis() -> Int { return 5 }
 func prescience() -> Int { return 5 }
 func mindControl() -> String { return "Republic credits will do." }
 func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
 }
 
 struct DarthVader {
 func lightSaberSkill() -> Int { return 9 }
 func telekinesis() -> Int { return 8 }
 func prescience() -> Int { return 5 }
 func forceChoke() -> Bool { return true }
 func forceLightning() -> Bool { return false }
 }
 
 struct DarthSidious {
 func lightSaberSkill() -> Int { return 8 }
 func telekinesis() -> Int { return 7 }
 func prescience() -> Int { return 6 }
 func forceChoke() -> Bool { return true }
 func forceLightning() -> Bool { return true }
 }
 
 struct DarthTyrannous {
 func lightSaberSkill() -> Int { return 8 }
 func telekinesis() -> Int { return 5 }
 func prescience() -> Int { return 5 }
 func forceChoke() -> Bool { return false }
 func forceLightning() -> Bool { return true }
 } */

/*:
 Place your refactored structs below:
 */
protocol IndivPower {
  func lightSaberSkill() -> Int
  func telekinesis() -> Int
  func prescience() -> Int
}

extension IndivPower {
  func lightSaberSkill() -> Int { return 8 }
  func telekinesis() -> Int { return 5 }
  func prescience() -> Int { return 5 }
}

protocol JediPower {
  func introspection() -> String
  func mindControl() -> String
}

extension JediPower {
  func introspection() -> String { return "Search your feelings." }
}

struct MasterYoda: IndivPower, JediPower {
  func telekinesis() -> Int { return 9 }
  func mindControl() -> String { return "Do or do not." }
}

struct MasterObiWan: IndivPower, JediPower {
  func mindControl() -> String { return "These are not the droids you're looking for." }
}

struct MasterQuiGon: IndivPower, JediPower {
  func mindControl() -> String { return "Republic credits will do." }
  func introspection() -> String { return "Feel, don’t think. Trust your instincts." }
}

protocol SithPower {
  func forceChoke() -> Bool
  func forceLightning() -> Bool
}

extension SithPower {
  func forceChoke() -> Bool { return true }
  func forceLightning() -> Bool { return true }
}

struct DarthVader: IndivPower, SithPower {
  func lightSaberSkill() -> Int { return 9 }
  func telekinesis() -> Int { return 8 }
  func forceLightning() -> Bool { return false }
}

struct DarthSidious: IndivPower, SithPower {
  func telekinesis() -> Int { return 7 }
  func prescience() -> Int { return 6 }
}

struct DarthTyrannous: IndivPower, SithPower {
  func forceChoke() -> Bool { return false }
}
