import React from 'react';
import { Link, withRouter, Redirect } from 'react-router-dom';
import TripIndexItem from './trip_index_item';


class TripIndex extends React.Component {
  constructor(props) {
    super(props)
  }

  componentDidMount() {
    this.props.fetchTrips();
  }

  componentDidUpdate() {
    if (!this.props.currentUser) {
      this.props.history.push(`/homes`);
    }
  }

  render() {
    const { deleteTrip } = this.props;
    const tripsIndex = this.props.trips.map((trip, idx) => {
      return (
        <div className="trip-card-container" key={idx}>
          <TripIndexItem trip={trip} deleteTrip={deleteTrip}/>
        </div>
      )
    });
    if (tripsIndex.length > 0) {
      return (
        <div className="trip-slider">
        <span className="trip-tit">Your Trips</span>
          <div className="trip-cards">
          {tripsIndex}
          </div>
        </div>
      )
    } else {
      return (
        <div className="trip-slider">
        <span className="trip-tit">Your Trips</span>
          <div className="trip-cards-txt">
          You have no upcoming trips.
          </div>
          <Link to={`/homes`} className="pinkButton book-btn trip-button">Book a trip!</Link>
        </div>
      )
    }
  }
}

export default withRouter(TripIndex);
