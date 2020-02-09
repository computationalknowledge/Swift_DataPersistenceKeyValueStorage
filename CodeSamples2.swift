 How to Print Out All Values in the UserDefaults with Swift 3
 for (key, value) in UserDefaults.standard.dictionaryRepresentation() {
            print("\(key) = \(value) \n")
        }
