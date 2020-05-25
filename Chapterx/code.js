let a = 1
console.log("before timeouot1 ", a)

setTimeout(() => console.log("in timeout ", a), 5000)

a = 2
console.log("ater timeout ", a)

