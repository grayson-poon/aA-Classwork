Array.prototype.myEach = function(callback) {
  for (i = 0; i < this.length; i++) {
    callback(this[i]);
  }
}

// let testArr = [2,5,10];
// let timesThree = function(n) {
//     return n * 3;
// }

Array.prototype.myMap = function(callback) {
  let newArr = [];

  this.myEach(function(ele) {
    newArr.push(callback(ele));
  })

  // this.myEach( ele => newArr.push(callback(ele)) )

  // this.myEach( ele => {
  //   newArr.push(callback(ele));
  // })

  return newArr;
}

// let testArr = [5,20, 50];
// let divideByFive = function(n) {
//   return n / 5;
// }

Array.prototype.myReduce = function(callback, acc) { // #myInject
  acc = acc || this.shift();

  this.myEach( ele => {
    acc = callback(acc, ele);
  })

  return acc;
}
