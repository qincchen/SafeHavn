import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';

import BookTrip from './book_trip';

import { receiveInput } from '../../actions/input_actions';
import { fetchHome } from '../../actions/home_actions';
import { createTrip } from '../../actions/trip_actions';
import { clearConfirmation } from '../../actions/input_actions';

const mapStateToProps = ({session, homes, inputs}, {match}) => {
  const homeid = match.params.homeid;
  const listing = homes[homeid];
  return {
    loggedIn: Boolean(session.currentUser),
    currentUser: session.currentUser,
    confirmation: session.confirmation,
    homeid,
    listing,
    inputs,
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    createTrip: trip => dispatch(createTrip(trip)),
    fetchHome: id => dispatch(fetchHome(id)),
    clearConfirmation: () => dispatch(clearConfirmation()),
  }
};

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(BookTrip));
