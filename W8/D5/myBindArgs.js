Function.prototype.myBind = function(context) {
    let allArgs = Array.from(arguments).slice(1);
    let that = this;

    return function() {
        
        let callTimeArgs = Array.from(arguments);
        return that.apply(context, allArgs.concat(callTimeArgs));
    }
}


Function.prototype.myBindRest = function(context, ...args) {
  let allArgs = [...args];
  let that = this;

  return function(...args2) {
      let callTimeArgs = [...args2];
      return that.apply(context, allArgs.concat(callTimeArgs));
  }
}


class Cat {
  constructor(name) {
    this.name = name;
  }

  says(sound, person) {
    console.log(`${this.name} says ${sound} to ${person}!`);
    return true;
  }
}

class Dog {
  constructor(name) {
    this.name = name;
  }
}

const markov = new Cat("Markov");
const pavlov = new Dog("Pavlov");

// markov.says.myBind(pavlov, "meow", "Kush")();
// markov.says.myBind(pavlov, "meow")("Markov");
// markov.says.myBind(pavlov)("meow", "Kush");

// markov.says.myBindRest(pavlov, "meow", "Kush")();
// markov.says.myBindRest(pavlov, "meow")("Markov");
// markov.says.myBindRest(pavlov)("meow", "Kush");
