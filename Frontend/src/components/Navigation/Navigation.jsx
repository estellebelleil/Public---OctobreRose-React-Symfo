import './Navigation.scss'
export default function Navigation()
{
    return(
    <div className="contains__button">
        <nav className ='button'>
            <ul className="button_ul">
                <li className="button_li"><a href="#">Précedent</a></li>
                <li className="button_li"><a href="#">Suivant</a></li>

            </ul>
        </nav>
    </div>)

}