import { useState } from 'react'


import './App.scss'
import Header from './../Header/Header.jsx'
import Post from '../Post/Post'
import Footer from '../Footer/Footer'
import { isEmpty } from '../Utils'
import Navigation from '../Navigation/Navigation'
import { useSelector } from "react-redux";


const App = () => {
    //On va pouvoir faire un useSelector qui va nous permettre de récupérer notre data depuis notre reducer
    const posts = useSelector((state)=> state.postReducer);
    //console.log(posts)

  return (
    <body >
      <main className ='contains'>
          <Header />
          <h1 className = "title">Octobre Rose - Blog</h1>
          <div className = 'blocArticle'>

            {//Ici je vais venir maper (c'est à dire parcourir l'objet json de données récupérées depuis mon reducer via le useselector)
            !isEmpty(posts) && posts.map((post, index)=>
            //Je lui passe en argument post (un peu comme dans le foreach de php, avec un Posts as post) et une clé (id)
            //Puis je viens passer ses données via une props (argument) equivalent à l'individuel post et à la clé index
              <Post post={post} key={index}/>)}
            
          </div> 
          <Navigation/>
          <Footer/>
          
          
      </main>
    </body >
  )
}
export default App
