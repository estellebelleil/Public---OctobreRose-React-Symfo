
import './Post.scss'
import moment from 'moment';


export default function Post({post}){

    //Ici je viens créer une fonction qui va me permettre d'afficher le format que je souhaite depuis mon post.created_at (sous format DateTimeImmutable de Symfo)
    const postDate = moment(post.created_at).format('DD/MM/YYYY');

    return(
            <article>
                <div className="blocImg">
                    <img src = {post.image} alt = 'ImgVille' className = 'img__article'/>
                </div>
                <section>
                    <p className="date"> { postDate }</p>
                    <h2>{ post.title}</h2>
                    <h4>{ post.author.name} </h4>
                    <p> {//Ici je vais chercher à venir limiter le nombre de caractère affichable par le hodd substring
                    post.content.substring(0, 600)} </p>                
                    <aside>
                        <div className = 'categorie'> 
                            <ul>
                                {post.categories.map(category => 
                                    <li key = {category.id}><a href="#">{category.name} </a></li>
                                    )}
                            </ul>
                        </div>
                        <div className = 'link'>
                            <ul>
                                <li> <img src = 'images/facebook.png' alt ='icon__facebook' className="img_icons"/></li>
                                <li><img src = 'images/x.png' alt ='icon__twitter' className="img_icons"/></li>
                            </ul>
                        </div>
                    </aside>
                </section>
            </article>
            )
}