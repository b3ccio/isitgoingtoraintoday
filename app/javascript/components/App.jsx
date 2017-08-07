// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types' 

const IsItGoingToRainToday = props => (
  <div>Latitude {props.latitude} Longitude {props.longitude}</div>
)

IsItGoingToRainToday.defaultProps = {
  latitude: '',
  longitude: ''
}

IsItGoingToRainToday.propTypes = {
  latitude: PropTypes.string,
  longitude: PropTypes.string
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <IsItGoingToRainToday latitude="38.907192" longitude="-77.036871" />,
    document.body.appendChild(document.createElement('div')),
  )
})
