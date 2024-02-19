import Foundation

var array = [7, 4, 0, 9, 2, 1, 6, 5, 3, 8]

array.sort(by: { a, b in a < b })
print(array)

array.sort(by: { a, b in a > b })
print(array) 

func addFriends(names: String...) -> [String] {
    var friends = [String]()
    for name in names {
        friends.append(name)
    }
    return friends
}

var friends = addFriends(names: "Денис", "Ильдар", "Леша", "Артем", "Никита")
friends.sort(by: { a, b in a.count < b.count })
print(friends)

var nameLengths = [Int: String]()
for friend in friends {
    nameLengths[friend.count] = friend
}
print(nameLengths) 

func printName(key: Int) {
    if let name = nameLengths[key] {
        print("Ключ: \(key), Значение: \(name)")
    } else {
        print("Нет такого ключа в словаре")
    }
}
printName(key: 4) 
printName(key: 5)
printName(key: 9)
printName(key: 100)
func checkEmptyArrays(strings: [String], numbers: [Int]) {
    var strings = strings
    var numbers = numbers
    if strings.isEmpty {
        strings.append("Москва")
    }
    if numbers.isEmpty {
        numbers.append(7777777)
    }
    print("Массив строк: \(strings)")
    print("Массив чисел: \(numbers)")
}
checkEmptyArrays(strings: [], numbers: [322, 228, 007, 1337, 1488]) 
checkEmptyArrays(strings: ["СПб", "Казань", "Суп", "Окрошка", "Чай"], numbers: [])