import UIKit

var greeting = "Hello, playground"
var i = 10.25
var j = true
var k = 225

print("hi",10,12.25,"I am here")

// StringInterpolation
// Everything  with the quotation, variable
// names with \(varname)
var name = "jaya"

print("hello, \(name)!")

print("hello, \(name)\(i)")

//print ("hello, +name+"!"+i)

var age = 25
print("you are \(age) years old and in another \(age)years, you will be \(age * 2)")
print("my age is not \(age)years, my actual \(j) age is 26🤡")
print(age+1)
age = age-10  // changing the state of age i.e 13
print(age)


print("""
hello
world!😎
maryville
I am doing good
My name is bond james bond
""")

print("hello bond,\rwelcome to swift programming Mr.bond")

var welcomemessage : String="I love maryville!"
print(welcomemessage)

let Welcomemessage : String = "hi!"
print(Welcomemessage,"all")

print("welcome to swift programming Mr.Bond")
print("spring 2023")
print("**************8")
print("welcome Mr.bond , terminator : $")

print("the list of numbers")
print(1,2,3,4,5,6,7)
print(1,2,3,4,5,6,7, separator: "$")

var mobileBrand = "apple"
mobileBrand = "samsung"
print(mobileBrand)

let pi = 3.55
print(pi)

// explicit declaration of variable
var age1 : Int = 23
age = age1 * 2
print(age)

var awemessage = "This is fantastic mindblowing unbelivable Extrodinary!"
print(awemessage)

var course1 = "ios"
var course2 = "java"
 

var origin = (x : 0 , y : 0)
var point = origin
print((origin.0 ,origin.1))

let city = (name : "new york", population : 32,456)
let (cityname ,citypopulation,cityextrapopulation) = (city.0 ,city.1 ,city.2)
print(cityname)
print(citypopulation)
print(cityextrapopulation)



// 5

let cart = ("milk","ball",135,225.00,true)
print(cart.0)
print(cart.1)
print(cart.2)
print(cart.3)
print(cart.4)
print(type(of: cart))


//6

var fname = "james"
var lname = "Bond"
(fname,lname) = (lname,fname)
print("My name is \(fname) and the lastname is \(lname)")


//7



//8

var num1 = (5,6,9)
var num2 = (5,6,10)
print((num1 > num2 ) && (num2 < num1))



// for loop

var number:Int = 6
for index in 1...10{
    print("\(index) *\(number) = \(index*number)")
}

var totalNumber = 500
var sum:Int = 0
for number in 1...totalNumber{
    sum+number
}
print("Here the sum of first\(totalNumber) is \(sum) ")

print("*****************************************************")


var coreLanguage = ["java","python","Ruby","R","Swift","ReactJs"]

for index in 0..<coreLanguage.count{
    print("\(coreLanguage[index])")
}
      

print("****************************************************")

var totalSum = 10
for value in 1...totalSum{
    if (value%2 == 0){
        print("\(value)" , terminator: ",")
    }

}
print("are all even numbers")

print("****************************************************")

var member = true
var scratchCard=10
var count=0
for attempt in 1..<scratchCard {
    count+=1
    if member {
        if count>3 {
            print("You won \(scratchCard-2)$")
            count=0
            break
        }
        
    }else{
        if(count>8){
            print("You got \(scratchCard-8)$")
        }
        
    }
}
print("**************************************************")

var results = 90
if results >= 90 {
    print("\(results) You passed in First Class")
}
else{
    print("You failed idiot work hard what is this marks \(results) is very low")
}






