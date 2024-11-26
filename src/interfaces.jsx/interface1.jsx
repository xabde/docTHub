// Interface1.js
import React, { useState,useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { useDispatch } from "react-redux";
import { useSelector } from "react-redux";
import { user_connect } from "../redux/actions";
import {register_data} from "../redux/thunk"
import { FaFacebookF, FaTwitter, FaRss, FaGoogle, FaFlickr } from 'react-icons/fa';
const Interface1 = () => {
  const user = useSelector((state) => state.user);
  const [nom, setNom] = useState("");
  const [prenom, setPrenom] = useState("");
  const [genre, setGenre] = useState("");
  const [ville, setVille] = useState("");
  const navigate = useNavigate();
  const [formData, setFormData] = useState(null);
  const dispatch = useDispatch();
  const villes=useSelector(state=>state.ville);
  useEffect(() => {
    dispatch(register_data())
}, []);
  const handleSubmit = (e) => {
    e.preventDefault();
    if( nom!='' && prenom!='' && genre!==''){
      setFormData({ nom, prenom, genre, ville });
      dispatch(user_connect({ nom, prenom, genre, ville }));
     
      navigate('/interface2');
    }
    
  };

  return (
    <div>
      {console.log(user)}
      {console.log(genre)}
      
      <div class="form">
        <form onSubmit={handleSubmit}>
          <div>
            <h3 style={{textAlign: "center", textDecoration: "underline", color: "#4430b6" }}>
              Remplissez ce formulaire pour continuer :
            </h3>
            <label style={{ textDecoration: "underline", color: "#4430b6" }}>
              <strong>Nom:</strong>
            </label>
            <input
              required
              type="text"
              value={nom}
              onChange={(e) => setNom(e.target.value)}
            />
          </div>
          <div>
            <label style={{ textDecoration: "underline", color: "#4430b6" }}>
              <strong>Prénom:</strong>
            </label>
            <input
              required
              type="text"
              value={prenom}
              onChange={(e) => setPrenom(e.target.value)}
            />
          </div>
          <div>
            <label style={{ textDecoration: "underline", color: "#4430b6" }}>
              <strong>Genre:</strong>
            </label>
            <input
              type="checkbox"
              value="homme"
              name="genre"
              onClick={() => setGenre(1)}
            />
            <strong> Homme</strong>
            <input
              type="checkbox"
              value="femme"
              name="genre"
              onClick={() => setGenre(2)}
            />
            <strong> Femme</strong>
          </div>
          <div>
            <label style={{ textDecoration: "underline", color: "#4430b6" }}>
              <strong>Ville:</strong>
            </label>
            
              <input value={ville}
              onChange={(e) => setVille(e.target.value)} class="form-control" list="browsers" name="browser" id="browser" required/>
                    <datalist  id="browsers">
                       {villes!='' ? villes.map((i)=>
                        <option>{i.ville}</option>
                    ):''}
              </datalist > 
            
          </div>
          <br />
          <button class="cssbuttons-io-button">
            continuer
            <div class="icon">
              <svg
                height="24"
                width="24"
                viewBox="0 0 24 24"
                xmlns="http://www.w3.org/2000/svg"
              >
                <path d="M0 0h24v24H0z" fill="none"></path>
                <path
                  d="M16.172 11l-5.364-5.364 1.414-1.414L20 12l-7.778 7.778-1.414-1.414L16.172 13H4v-2z"
                  fill="currentColor"
                ></path>
              </svg>
            </div>
          </button>
        </form>
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
  );
};

export default Interface1;
