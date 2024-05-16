import './Header.scss'


export default function Header()
{

return(
    <header>
        <div id = 'logo'>
            <img className="logo" alt = 'logo' src = 'images/logo.png'/>
        </div>
        <nav className ='menuheader' id="nav">
            <ul>
                <li><a href="#">Nos actions</a></li>
                <li><a href="#">Vos témoignages</a></li>
                <li><a href="#">Prévention</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            <div id="icons"></div>
            </nav>
    </header>
)
}
