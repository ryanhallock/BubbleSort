

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
func swap(integers: inout [Int], firstIndex: Int, secondIndex: Int) {
    precondition(integers.count > firstIndex, "firstIndex is out of range fi=\(firstIndex) max=\(integers.count)")
    precondition(integers.count > firstIndex, "secondIndex is out of range si=\(firstIndex) max=\(integers.count)")

    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp

}

func sort(array: inout [Int]) {
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
        printPass(on: pass, i:i, amountSorted:amountSorted, array:array)
    } while (i != 0)
}


//Pass: 1, Swaps: 3/3, Array: [1, 4, 2, 5, 8]
func printPass(on: Int, i: Int, amountSorted: Int, array: [Int]){
    print("Pass: \(on), Swaps: \(i)/\(amountSorted), Array: \(array)")
}

var array = unsortedIntegers

printPass(on: 0, i: 0, amountSorted: 0, array: array)
sort(array: &array)
