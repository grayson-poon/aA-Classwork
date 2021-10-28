

// Surrogate.prototype = SuperClass.prototype;
// Subclass.prototype = new Surrogate();
// Subclass.prototype.constructor = Subclass;

Function.prototype.inherits1 = function(parent) {
    function Surrogate () {}
    Surrogate.prototype = parent.prototype;
    this.prototype = new Surrogate();
    this.prototype.constructor = this;
}

Function.prototype.inherits2 = function(parent) {
    // function Surrogate () {}
    this.prototype = Object.create(parent.prototype);
    // this.prototype = new Surrogate();
    this.prototype.constructor = this;
}

// function MovingObject () {
//     console.log('test')
// }

// function Ship () {}
// Ship.inherits1(MovingObject);

// function Asteroid () {}
// Asteroid.inherits1(MovingObject);

function Dog (name) {
    this.name = name;
  }
  
  Dog.prototype.bark = function () {
    console.log(this.name + " barks!");
  };
  
  function Corgi (name) {
    Dog.call(this, name);
  }
  
  Corgi.inherits2(Dog);
  
  Corgi.prototype.waddle = function () {
    console.log(this.name + " waddles!");
  };
  
  const blixa = new Corgi("Blixa");
  blixa.bark();
  blixa.waddle();
  
