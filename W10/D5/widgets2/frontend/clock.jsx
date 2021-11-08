import React from 'react';

export default class Clock extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      time: new Date()
    };

    this.tick = this.tick.bind(this);
  }

  componentDidMount() {
    this.tick();
  }

  componentWillUnmount() {
    clearInterval(tickIDs);
  }

  tick() {
    let tickIDs = setInterval(() => {
      this.setState({ time: new Date() });
    }, 1000);
  }

  render() {
    const seconds = this.state.time.getSeconds();
    const minutes = this.state.time.getMinutes();
    const hours = this.state.time.getHours();

    const date = this.state.time.toDateString();

    return (
      <div id="time_date">
        <div id="time">
          <h1>TikTok Time</h1>
          <h1>Date</h1>
        </div>

        <div id="date">
          <h1>{hours}:{minutes}:{seconds}</h1>
          <h1>{date}</h1>
        </div>
      </div>
    );
  }
}