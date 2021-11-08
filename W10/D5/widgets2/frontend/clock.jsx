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

    return (
      <div>
        <h1>TikTok</h1>
        <h2>{hours}:{minutes}:{seconds}</h2>
      </div>
    );
  }
}