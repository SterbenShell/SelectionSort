

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:
var list = [] as [String]
var line : String?
repeat {
    line = readLine()
    if line != nil {
        list.append(line!)
    }
} while line != nil

func selectSort(array: [String]) -> [String] {
    var a = array
    var swap = 0
    var totalswap = 0
    var passes = 0
    print("Pass: \(passes), Swaps: \(swap)/\(totalswap), Array: \(a)")
    for x in 0..<array.count - 1{
        var lowest = x
        for y in x+1..<array.count{
            if a[y] < a[lowest] {
                lowest = y
            }
        }
        swap += 1
        totalswap += 1
        let z = a[x]
        a[x] = a[lowest]
        a[lowest] = z
        passes += 1
        print("Pass: \(passes), Swaps: \(swap)/\(totalswap), Array: \(a)")
        swap = 0
    }
    return array
}
let balls = selectSort(array: list)
