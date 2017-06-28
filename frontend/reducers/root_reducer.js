import { combineReducers } from 'redux';

import session from './session_reducer';
import modal from './modal_reducer';
import home from './home_reducer';
import filters from './filter_reducer';
import trips from './trip_reducer';
import inputs from './input_reducer';


const RootReducer = combineReducers({
  session,
  modal,
  home,
  filters,
  trips,
  inputs
});

export default RootReducer;
