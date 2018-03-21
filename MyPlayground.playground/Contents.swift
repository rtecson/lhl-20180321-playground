

var name: String = "Roland"
var middleName: String? = nil

middleName = name
//name = middleName // Error, because name cannot be nil

name = middleName!  // Force unwrap -- don't do this!

if let unwrappedMiddleName = middleName {  // Conditional unwrap
    // Unwrapped properly, unwrappedMiddleName contains the value
    // "unwrappedMiddleName" is in scope here
}
else {
    // Could not unwrap, because middleName is nil
    // "unwrappedMiddleName" is NOT in scope here
}

//guard let anotherUnwrappedMiddleName = middleName else {  // Guard checks for pre-conditions
//    // Could not unwrap middleName
//    return
//}
//// "anotherUnwrappedMiddleName" is in scope from here onwards

middleName = middleName ?? "My middle name"  // Uses value of middleName if not nil, otherwise if nil, use "My middle name" (default value)


func funcCall() throws {
    
}

func func2Call() throws -> Int {
    return 0
}

func nonThrowingFunction() {
    
}

// This code block allows you to call try functions and catch errors
do {
    // You can call any number of try's here
    try nonThrowingFunction()  // Invalid because nonThrowingFunction() does not throw errors
    try funcCall()   // A function that throws an error, but does not return any value
    let x = try func2Call()  // A function that throws an error, and returns a value
}
catch let error {
    // If any of the try's fail, we'll go here
    // Here we have an Error object "error"
}


if let x = try? func2Call() {
    // Will get here if func2Call succeeds, i.e. does not throw an error
    // We do not care about catching error
    // If func2Call throws an error, this block is not executed
}
else {
    // An error occurred, ie. func2Call threw an error, but since we didn't catch, we don't know what error was thrown
}


