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
import HostTripContainer from './host/host_trip_container';
import HostingsContainer from './host/hostings_container';

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
      <Route exact path="/user/:userid/host" component={HostTripContainer}/>
      <Route exact path="/user/:userid/hostings" component={HostingsContainer}/>
    </header>
  </div>
);

export default App;
