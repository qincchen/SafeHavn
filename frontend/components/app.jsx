import React from 'react';
import { Provider } from 'react-redux';
import { Route, Redirect, Switch, Link } from 'react-router-dom';
import HeaderContainer from './header/header_container';
import ModalContainer from './modal/modal_container';
import HomeContainer from '.home/home_container';

const App = () => (
  <div>
    <header>
      <ModalContainer/>
      <Route path="/" component={HeaderContainer}/>
      <Route path="/home/:id" component={HomeContainer}/>
    </header>
  </div>
);

export default App;
