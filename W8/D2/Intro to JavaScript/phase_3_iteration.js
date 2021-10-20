Array.prototype.bubbleSort = function() {
  let sorted = false;

  while (sorted === false) {
    sorted = true;

    for (let i = 0; i < this.length - 1; i++) {
      if (this[i] > this[i + 1]) {
        temp = this[i];
        this[i] = this[i + 1];
        this[i + 1] = temp;
        sorted = false;
      }
    }
  }

  return this;
}


// iterate thru string
// using idx of outer iteration as the beginning of second iteration
// slice the string at the two indexes

String.prototype.substrings = function() {
  let subs = [];

  for (let i = 0; i <= this.length - 1; i++) {
    for (let j = i + 1; j <= this.length; j++) {
      subs.push(this.slice(i,j));
    }
  }

  return subs;
}
