import React from 'react';
import { Provider } from 'react-redux';
import { Route, Redirect, Switch, Link } from 'react-router-dom';
import HeaderContainer from './header/header_container';

const App = () => (
  <div>
    <header>
      <Route path="/" component={HeaderContainer}/>
    </header>
  </div>
);

export default App;
