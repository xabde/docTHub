import { useState } from "react";
import axios from "axios";
import { useDispatch ,useSelector} from "react-redux";
import { useNavigate } from "react-router-dom";
import{ login_user} from '../redux/thunk'
import { Link } from "react-router-dom";
import SweetAlert2 from 'react-sweetalert2';
import { FaFacebookF, FaTwitter, FaRss, FaGoogle, FaFlickr } from 'react-icons/fa';



function Contact(){
    const [swalProps, setSwalProps] = useState({});
  
    return(
        <div>
   
   <h1 style={{ textAlign: 'center', textDecoration: 'underline' }}>Contact</h1>
   <form action="mailto:mohamedelkhraifi@gmail.com" enctype="text/plain" method="POST"  id="contactForm"  >
      <div>
      
    <input type="text" name="obejt" value="Demande de contact " style={{ display: 'none' }}/> 
        <label for="nom">Nom:</label><br/>
        <input type="text" id="nom" name="nom" required/><span id="nomError" class="error"></span>
      </div>
      <div>
        <label for="societe">Société:</label><br/>
        <input type="text" id="societe" name="societe" required/><span id="societeError" class="error"></span>
      </div>
      <div>
        <label for="telephone">Téléphone:</label><br/>
        <input type="tel" id="telephone" name="telephone" pattern="[0-9]{10}" required/><span id="telephoneError" class="error"></span>
      </div>
      <div>
        <label for="email">Email:</label><br/>
        <input type="email" id="email" name="email" required/><span id="emailError" class="error"></span>
      </div>
      <div><br/>
        <label for="Message">Message:</label><br/>
        <textarea id="commentaire" name="Message" required></textarea>
      </div>
      <button class="formbu" onClick={() => {
                setSwalProps({
                    show: true,
                    icon:"success",
                    title: "Veuillez confirmer l'envoi par e-mail!",
                    text: " nous vous répondrons en moins de 24 heures.",
                });
            }} type="submit">Envoyer</button>
            <SweetAlert2 {...swalProps} />
    </form>

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
export default Contact