let recRange = function(start, end) {
  let arr = [];

  if (end - start === 1) {
    return [end - 1, end];
  } else {
    let smth = recRange(start + 1, end);
    return [start].concat(smth);
  }
  
}

let sumRec = function(arr) {
  
  if (arr.length <= 1) {
    return arr[0];
  } else {
    let sum = sumRec(arr.slice(1));
    return arr[0] + sum;
  }

}

// let exponent1 = (base, exp) => { .... this is the arrow function notation
// function exponent1(base, exp) { ..... this is the named function notation
let exponent1 = function(base, exp) { // this is the regular notation
  if (exp === 0) {
    return 1;
  } else if (exp === 1) {
    return base;
  } else {
    let product = exponent1(base, exp - 1);
    return (base * product);
  }
}

let exponent2 = function(base, exp) {
  if (exp === 0) {
    return 1;
  } else if (exp === 1) {
    return base;
  } else if (exp % 2 === 0) {
    let product = exponent2(base, exp / 2);
    return (product * product);
  } else if (exp % 2 === 1) {
    let product = exponent2(base, (exp - 1) / 2);
    return base * product * product;
  }
}

// 1 1 2 3 5 8 13
function fibonnaci(n) {
  if (n === 1) {
    return 1;
  } else if (n === 2) {
    return [1, 1];
  } else {
    let fibs = fibonnaci(n - 1);
    let nextFib = fibs[fibs.length - 1] + fibs[fibs.length - 2];
    fibs.push(nextFib);
    return fibs;
  }
}

let deepDup = function(arr) {
  dupArr = [];

  for (let i = 0; i < arr.length; i++) {
    if (Array.isArray(arr[i])) {
      dupArr.push(deepDup(arr[i]));
    } else {
      dupArr.push(arr[i]);
    }
  }

  return dupArr;
}


// if (arr.length === 1) {
  //   dupArr.push(arr[0]);
  //   return dupArr;
  // }

// arr.myEach( ele => {
  //   if (Array.isArray(ele)) {
  //     let subArr = deepDup(ele);
  //     dupArr.push(subArr);
  //   } else {
  //     dupArr.push(ele);
  //   }
  // })

