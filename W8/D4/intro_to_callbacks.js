class Clock {
  constructor() {
    // 1. Create a Date object.
    let time = new Date()
    // 2. Store the hours, minutes, and seconds.
    this.hours = time.getHours();
    this.minutes = time.getMinutes();
    this.seconds = time.getSeconds();
    // 3. Call printTime.
    this.printTime();
    // 4. Schedule the tick at 1 second intervals.
    // let that = this;
    setInterval(this._tick.bind(this), 1000);

  }

  printTime() {
    // Format the time in HH:MM:SS
    let time = [this.hours, this.minutes, this.seconds].join(":");
    // Use console.log to print it.
    console.log(time);
  }

  _tick() {
    // 1. Increment the time by one second.
    this.seconds += 1;

    if (this.seconds === 60) {
      this.seconds = 0;
      this.minutes += 1;
      if (this.minutes === 60) {
        this.hours += 1;
        this.minutes = 0;
      }
    }
    // 2. Call printTime.
    this.printTime();
  }
}

const clock = new Clock();