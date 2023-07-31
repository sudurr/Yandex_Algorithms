import Foundation

let temp = readLine()?.split(separator: " ").map { Int($0)! }
let mode = readLine()!

var troom = temp?[0]
var tcond = temp?[1]

if let room = troom, let cond = tcond {
    var result: Int?

    switch mode {
    case "freeze":
        result = room > cond ? cond : room
    case "heat":
        result = room < cond ? cond : room
    case "auto":
        result = cond
    case "fan":
        result = room
    default:
        break
    }

    if let finalResult = result {
        print(finalResult)
    }
}
