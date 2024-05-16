import axios from "axios";

//On liste d'abord nos exports et après on mettra les fonctions qui ont attrait au post
export const GET_POSTS = "GET_POSTS";

export const getPosts = () => {
    //Le dispatch est un hook utilisé pour faire le lien entre notre interface utilisateur et nos actions, 
    //qui serviront celles-ci à communiquer aux reducers qu'il y a eu un changement. 
    //Le fichier contenant les actions ressemble à une liste de toutes les actions que vous pouvez faire dans l'application.
    return(dispatch) => {
        //*1ère étape on communique avec la base de données, ici mon api définie via Symfony en méthode GET : http://0.0.0.0:8080/api/article/list
        return axios.get("http://0.0.0.0:8080/api/article/list")
        .then((res) => {
            //console.log(res)
            //*2ème étape : ON communique avec le réduceur
            //res va contenir toute notre api et pas que, pour récupérer spécifiquement les données de notre api, on va devoir aller chercher res.data
            //AVec la méthode dispatch va renvoyer à nos reduceurs notre action et va indiquer un changement du state; 
            //Le payload c'est le chargement de la data qui va etre embarqué dans notre reducer
            //Ici le type est equivalent à la méthode utilisée (ici GET)
            dispatch({type: GET_POSTS, payload: res.data});
        });
    };
};