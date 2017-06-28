import React from 'react';
import { withRouter } from 'react-router-dom';
import BookTrip from './book_trip';

class BookIt extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      startDate: "", /// just for now... bookings not done yet
      endDate: "",
      guests: ""
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleSelectChange = this.handleSelectChange.bind(this);
    this.navigateToPayment = this.navigateToPayment.bind(this);
  }

  handleSelectChange(property) {
    return e => this.setState({ [property]: e.target.value });
  }

  navigateToPayment() {
    const url = `/homes/${this.props.match.params.homeid}/book`
    this.props.history.push(url);
  }

  handleSubmit(e) {
    e.preventDefault();
    const input = Object.assign({}, this.state);
		this.props.receiveInput(input); // after this, move to next screen
    this.navigateToPayment();
    this.setState({startDate: "", endDate: "", guests: ""});
  }

  pricePerNight(){
    return (
      <div className="offers-box">
        <div className="thunderbolt"/>
        <div className="book-it-price">${this.props.listing.price}</div>
        <div className="per-night">per night</div>
      </div>
    )
  }

  bookingForm() {
    const options = [
      <option value="1" key={1}>1 guest</option>
    ];
    for (let i = 2; i <= this.props.listing.space.max_guests; i++) {

      options.push(
        <option value={i} key={i}>{i} guests</option>
      );
    }

    return (
      <div>
        <form className="row-condensed">
          <div>

            <div className="checking-col">
              <label className="guest-check">Check In</label>

              <input className="check-in date-select"
                onChange={this.handleSelectChange('startDate')}
                placeholder="mm/dd/yyyy"/>
            </div>

            <div className="checking-col">
              <label className="guest-check">Check Out</label>

              <input className="check-out date-select"
                onChange={this.handleSelectChange('endDate')}
                placeholder="mm/dd/yyyy"/>
            </div>

          </div>
        <div className="guest-dd-container">
            <div className='select-container'>
              <label className="guest-check">Guests</label>
                <div className='select-dd-container'>
                  <select className='select-dropdown guests' value={this.state.guests}
                      onChange={this.handleSelectChange('guests')}>{options}
                  </select>
                    <span className="dropdown-arrow"></span>
                  </div>
                </div>

          </div>

          <button onClick={this.handleSubmit}
            className="pinkButton book-btn">
            <span className="btn-text">Book</span>
          </button>

          <div className='margin-top-8px'>
            <span className="disclaimer book-disc">You won't be charged yet, but you'll give me a paycheck soon.</span>
          </div>
        </form>

      </div>
    )
  }

  pageToShow() {
    if (this.props.pageToShow === 1) {
      return (
        <div className="book-it">
          <div className="bookItContainer">
            {this.pricePerNight()}
            {this.bookingForm()}
          </div>
        </div>
      );
    } else if (this.props.pageToShow === 2) {
      return (
        <BookTrip />
      )
    }
  }

  render() {
    return (
      <div className="book-body">
        {this.pageToShow()}
      </div>
    )
  }

}

export default withRouter(BookIt);
