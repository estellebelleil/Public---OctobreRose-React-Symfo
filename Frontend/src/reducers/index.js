import { combineReducers } from "@reduxjs/toolkit";
import authorReducer from "./authorReducer";
import postReducer from "./postReducer"

//C'est dans cette fonction qu'on va ranger tous nos reduceurs
export default combineReducers(
  {
    authorReducer,
    postReducer,
  }
)