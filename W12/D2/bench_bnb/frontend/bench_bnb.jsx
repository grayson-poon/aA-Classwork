import React from 'react';
import ReactDOM from 'react-dom'
import { login, logout, signup } from './util/session_api_util';

document.addEventListener('DOMContentLoaded', () => {
  let root = document.getElementById('root');
  ReactDOM.render(<h1>React is working!</h1>, root)

  window.signup = signup;
  window.login = login;
  window.logout = logout;
  window.user3 = { user: {username: "grayson", password: "halp"}};
});