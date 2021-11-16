import React from "react";

export default class Signup extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: '',
      email: '',
      password: ''
    };
    this.handleInput = this.handleInput.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleInput(type) {
    return (event) => {
      this.setState({ [type]: event.target.value });
    };
  }

  handleSubmit(event) {
    event.preventDefault();
    this.props.createNewUser(this.state)
      .then(() => this.props.history.push("/chirps"));
  }

  render() {
    return (
      <div className="session-form">
        <h2>Sign Up!</h2>
        <form>
          <label>Username:
            <input
              type="text"
              onChange={this.handleInput("username")}
              value={this.state.username}
            />
          </label>

          <label>Email:
            <input
              type="text"
              onChange={this.handleInput("email")}
              value={this.state.email}
            />
          </label>

          <label>Password:
            <input
              type="password"
              onChange={this.handleInput("password")}
              value={this.state.password}
            />
          </label>

          <button onClick={this.handleSubmit}>Sign Up</button>
        </form>
      </div>
    );
  }
};