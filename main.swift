func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    precondition(integers.count > firstIndex, "firstIndex is out of range fi=\(firstIndex) max=\(integers.count)")
    precondition(integers.count > firstIndex, "secondIndex is out of range si=\(firstIndex) max=\(integers.count)")

    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp

}

func sort(array: inout [String]) {
    var i: Int = 0
    var amountSorted = 0
    var pass = 0
    repeat {
        pass += 1
        i = 0
        for index in 0 ..< array.count - 1 {
                let leftVal = array[index]
                let rightVal = array[index + 1]

                if leftVal > rightVal {
                    swap(integers:&array, firstIndex: index, secondIndex: index + 1)
                    i += 1
                }
        }
        amountSorted += i
    } while (i != 0)
}

var array = readInput()

sort(array: &array)

print(array)
