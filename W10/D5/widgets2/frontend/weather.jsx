import React from "react";

export default class Weather extends React.Component {
  constructor(props) {
    super(props)

    this.weatherNearMe = this.weatherNearMe.bind(this);
  }

  componentDidMount() {
    navigator.geolocation.getCurrentPosition(this.weatherNearMe)
  }

  weatherNearMe(geolocation) {
    const latitude = geolocation.coords.latitude
    const longitude = geolocation.coords.longitude

    let request = new XMLHttpRequest();
    request.onreadystatechange = () => {
      if (request.readyState === XMLHttpRequest.DONE) {
        if (request.status === 200) {
          let response = request.responseText;
        } else if (request.status === 400) {
          alert("There was an error 400");
        } else {
          alert("Something other than response code 200 or 400 was returned");
        }
      }
    }

    request.open(
      "GET",
      "api.openweathermap.org/data/2.5/weather?lat={latitude}&lon={longitude}&appid={API key}",
      true
    );
    request.send();
  }
}