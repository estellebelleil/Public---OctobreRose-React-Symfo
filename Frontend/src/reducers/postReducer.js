import { GET_POSTS } from "../actions/post.action";

//On vient créer un état initial
const initialState = { };

export default function postReducer (state = initialState, action){

    //*EN GROS ICI ON RETOURNE CE QUE LA BDD NOUS A ENVOYÉE
    //Ne pas oublier d'aller voir dans le devTools (chrome) l'état de notre state, et l'action;
    //*Donc maintenant n'importe quel composant va pouvoir venir chercher les données ici
    //action.type : selon le type=methode que tu vas recevoir (ici ce sera GET)
    switch (action.type) {
        //Si je recois ce type d'action dans le réducer, alors :
        case GET_POSTS:
            //ici si je recois GET_POSTS
            return action.payload;
            //en gros il va retourner dans le store les données
        //Si on ne recoit pas ce type de requete, alors on retourne le state normal
        default:
            return state;
    }
}
