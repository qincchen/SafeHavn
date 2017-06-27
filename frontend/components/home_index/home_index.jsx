import React from 'react';
import { Link, withRouter, Redirect } from 'react-router-dom';

class HomeIndex extends React.Component {
  constructor(props) {
    super(props)
  }

  // componentDidMount(){
  //   this.props.updateFilter();
  // }

  safeHavn(home) {

    return (
      <Link to={`/homes/${home.id}`} className="link-to">
        <div className="home-card">

        <img className="show-card" src={home.image_url}/>

          <div className="card-top-row">
            <div className="card-bold">${home.price} {home.title}</div>
          </div>

          <div className="card-bot-row">
            <div className="card-norm">{home.space.room_type} · {home.space.beds} beds</div>
          </div>

          <div className="card-review">
            <div className="card-review-stars">* * * * *</div>
            <div className="reviews">DO THIS LATER reviews</div>
          </div>

        </div>
      </Link>
    )
  }

// Room type = { "Entire home": "Have a place to yourself", "Private room": "Have your own room and shares some common spaces", "Shared room": "Stay in shared space, like a common room" }
// Price range = 2 input fields... min and max
// Instant Book =
// More filters

  // <label className="label-hidden"/>
  // <div className='select-dd-container'>
  //   <select className='select-dropdown'>
  //     {options}
  //   </select>
  //   <span className="dropdown-arrow"></span>
  // </div>


  render() {
    const { homes } = this.props;
    const homesIndex = homes.map((home, idx) => {
      return (
        <div className="home-card-container" key={idx}>
          {this.safeHavn(home)}
        </div>
      )
    })
    return (
      // add model for the filters
      <div className="home-card-slider">
        <div className="cards">
        {homesIndex}
        </div>
      </div>
    )
  }
}

export default HomeIndex;
