import { useState } from "react";
import axios from "axios";
import { useDispatch ,useSelector} from "react-redux";
import { useNavigate } from "react-router-dom";
import{ login_user} from '../redux/thunk'
import { Link } from "react-router-dom";
import { FaFacebookF, FaTwitter, FaRss, FaGoogle, FaFlickr } from 'react-icons/fa';


function Apropos(){
  
    return(
        <div>
   
   <div class="about-us">
        <h2>À propos de nous</h2>
        <p>Bienvenue sur DoctHub, où votre santé est notre priorité. Chez DoctHub, nous nous engageons à offrir un service de santé innovant et accessible, conçu pour identifier rapidement et efficacement les symptômes de maladies potentielles. Grâce à notre plateforme avancée, vous pouvez localiser les zones de malaise dans votre corps et recevoir une liste de symptômes associés.</p>
        <p>Notre objectif est de fournir des informations claires et précises pour vous aider à mieux comprendre votre état de santé. En plus de cela, DoctHub vous propose des conseils médicaux issus de professionnels qualifiés pour vous guider vers le meilleur traitement possible. Nous sommes dédiés à votre bien-être et nous nous efforçons de faire de la santé une priorité pour tous. Ensemble, faisons de votre santé une priorité absolue.</p>
    </div>


  <br /><br />
  <footer className="footer">
      <div className="footer-logo">
        <div className="img"></div>
        <p>Trouvez votre médecin à proximité</p>
      </div>
      <div className="footer-links">
        <div>
          <h3>POURQUOI NOUS?</h3>
          <ul>
            <li>Platform 100% Maroccaine</li>
            <li>Simple a utilisé</li>
          </ul>
        </div>
        <div>
          <h3>SERVICES</h3>
          <ul>
            <li>100% clientele</li>
          </ul>
        </div>
        <div>
          <h3>PARTNERS</h3>
          <ul>
            <li>Des medecins</li>
            <li>Des scientifique</li>
          </ul>
        </div>
        <div>
          <h3>ABOUT US</h3>
          <ul>
            <li>Contact-nous</li>
            <li>Affiliates</li>
            <li>Resources</li>
          </ul>
        </div>
      </div>
      <div className="footer-social">
        <FaFacebookF />
        <FaTwitter />
        <FaRss />
        <FaGoogle />
        <FaFlickr />
      </div>
      <div className="footer-copyright">
        <p>©Copyright. All rights reserved.</p>
      </div>
    </footer>

        </div>
    )
}
export default Apropos