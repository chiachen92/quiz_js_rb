// 3. Given a JavaScript object that looks like this:
// var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};
// Write a piece of code that loops through the object and prints the following to the console: BC has 3 main cities AB has 2 main cities

// major_Cities = {
// BC: ["Vancouver", "Victoria", "Prince George"],
// AB: ["Edmonton", "Calgary"]
// };
// for (var province in major_Cities) {
//   var mainCities = major_Cities[province];
//
//   console.log(province + " has " + mainCities.length + " main cities.")
// }

// # 4. Write a JavaScript function called: isPrime. The function must take a number n and it should return `true` or `false` whether the argument passed (n) is a prime number or not. A prime number is a number that is divisible only by 1 and itself.
// var isPrime = function(n){
// var div = [];
// for (var i = 0; i <= n; i++){
//     if(n % i == 0){
//     if(i == 1 || i == n){
//       div.push(i);
//     }else {
//       return false;
//     }
//     }
//     }
//       return true;
//     }
//     console.log(isPrime(10))

    // def prime(num,divisor = num/2)
    //   return true if divisor == 1
    //   num % divisor == 0 ? false : prime(num,divisor-1)
    // end
    //
    // p prime(31)
    // p prime(45)
    // p prime(47)


// 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.
// var evennum = function(n){
// var evennum2 = [];
// for(var i = 0; i <= n; i ++){
//    evennum2.push(i * 2);
// }
// return evennum2;
// }
// console.log(evennum(8))
