import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';

import HomeShow from './home_show';

import { fetchHome } from '../../actions/home_actions';
import { openModal } from '../../actions/modal_actions';
import { clearErrors } from '../../actions/session_actions'

const mapStateToProps = ({ homes, session }, { match }) => {
  const homeid = match.params.homeid;
  const listing = homes[homeid];
  return {
    homeid,
    listing,
    currentUser: session.currentUser,
    reviews: listing ? listing.reviews : [],
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    fetchHome: id => dispatch(fetchHome(id)),
    openModal: (component) => dispatch(openModal(component)),
    clearErrors: () => dispatch(clearErrors()),
  }
}

export default withRouter(connect(
  mapStateToProps,
  mapDispatchToProps
)(HomeShow));
