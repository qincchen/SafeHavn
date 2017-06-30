import React from 'react';
import { Link, withRouter, Redirect } from 'react-router-dom';
import Footer from '../footer';

class Landing extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {
    this.props.fetchHomes();
  }

  safeHavn(home) {
    return (
      <div className="home-card">
        <Link to={`/homes/${home.id}`} className="link-to">

          <div className="show-card-container">
            <img className="show-card" src={home.image_url}/>
          </div>

          <div className="card-top-row">
            <div className="card-bold">${home.price} {home.title}</div>
          </div>

          <div className="card-bot-row">
            <div className="card-norm">{home.space.room_type} · {home.space.beds} beds</div>
          </div>

          <div className="card-review">
          </div>

        </Link>
      </div>
    )
  }
  // <div className="card-review-stars">* * * * *</div>
  // <div className="reviews">DO THIS LATER reviews</div>

  render() {
    const { homes } = this.props;
    const homesIndex = homes.map((home, idx) => {
      return (
        <div className="landing-card-container" key={idx}>
          {this.safeHavn(home)}
        </div>
      )
    }).slice(0,8);

    return (
      <div className="landing-slider">
        <div className="landing-container">
          <div className="landing-blurb">
            <span className="color-blurb">Safehavn </span>
            Find your refuge.
          </div>
        </div>
        <span className="landing-tit">Homes</span>
        <div className="landing-cards">
        {homesIndex}
        </div>
        <div className='landing-footer'>
          <Footer/>
        </div>
      </div>
    )
  }
}

export default Landing;
