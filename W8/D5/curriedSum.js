// boring sumThree
function sumThree(num1, num2, num3) {
  return num1 + num2 + num3;
}

// curried sumThree
function curriedSum(numArgs) {
  let numbers = [];

  function _curriedSum(num) {
    numbers.push(num);
    if (numbers.length === numArgs) {
      return numbers.reduce((acc, n) => acc + n, 0);
    } else {
      return _curriedSum;
    }
  }
  return _curriedSum;
}

// console.log(curriedSum(3)(2)(1)(5));

// let test = curriedSum(3);
// test(1)(1)(1);
