import React from 'react'
import ReactDOM from 'react-dom/client'
import App from './components/App/App.jsx'
import Header from './components/Header/Header.jsx'
import './index.css'
//Redux
import { Provider } from 'react-redux';
import { configureStore } from '@reduxjs/toolkit';
import rootReducer from "./reducers";
import { getPosts } from './actions/post.action.js'

//Ici je viens créer une variable store pour indiquer que tous mes réduceurs seront là dedans
const store = configureStore({
  reducer: rootReducer,
  devTools:true,
})

//Ici je viens appeler mon action par la méthode dispatch(action en argument)
store.dispatch(getPosts());

ReactDOM.createRoot(document.getElementById('root')).render(
  //<React.StrictMode>
  <Provider store={store}>
    <App />
  </Provider>,
  //</React.StrictMode>,
)
