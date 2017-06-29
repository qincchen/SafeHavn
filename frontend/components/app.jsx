import React from 'react';
import { Provider } from 'react-redux';
import { Route } from 'react-router-dom';

import HeaderContainer from './header/header_container';
import ModalContainer from './modal/modal_container';
import HomeShowContainer from './home_show/home_show_container';
import SearchContainer from './search/search_container';
import BookTripContainer from './trip/book_trip_container';
import LandingContainer from './landing/landing_container';
import TripsContainer from './trip/trip_index_container';

// const _ensureLoggedIn = (nextState, replace) => {
//   const currentUser = store.getState().session.currentUser;
//   if (!currentUser) {
//     replace('/homes');
//   }
// };

const App = () => (
  <div>
    <header>
      <ModalContainer/>
      <Route path="/" component={HeaderContainer}/>
      <Route exact path="/" component={LandingContainer}/>
      <Route exact path="/homes/" component={SearchContainer}/>
      <Route exact path="/homes/:homeid" component={HomeShowContainer}/>
      <Route exact path="/homes/:homeid/book" component={BookTripContainer}/>
      <Route exact path="/user/:userid/trips" component={TripsContainer}/>
    </header>
  </div>
);

export default App;
