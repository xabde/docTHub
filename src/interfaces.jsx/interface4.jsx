import {useEffect, useState } from "react";
//import axios from "axios";
import { useLocation } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import {portfolio_medcin} from '../redux/thunk'
import { useDispatch ,useSelector} from "react-redux";
import { FaFacebookF, FaTwitter, FaRss, FaGoogle, FaFlickr } from 'react-icons/fa';

function Interface4(){
     const location=useLocation()
     const navigate=useNavigate();
     const dispatch=useDispatch()
     const  idm=location.state
     const portfolio=useSelector(state=>state.portfolio);
     console.log('ja')
     console.log(portfolio)
     console.log(idm)

     
     console.log(portfolio)
     useEffect(() => {
        dispatch(portfolio_medcin(idm));
      }, []);

      const  navige=()=>{
        navigate('/interface5',{state:portfolio.id_medcin})
      }
      const retour=()=>{
        navigate('/interface3')
      }

     return (
      <div>
      
      <div className="container py-5">
     

  <div className="row justify-content-center">
    <div className="col-md-8">
      <div className="card profile-container shadow-sm">
        <div className="card-header bg-white border-bottom-0">
          <h4 className="mb-0">Profil</h4>
        </div>
        <div className="card-body">
          <div className="row">
            <div className="col-md-6">
              <div className="form-group">
                <label className="font-weight-bold">Nom:</label>
                <p className="text-muted">{portfolio.nom_prenom}</p>
              </div>
            </div>
            <div className="col-md-6">
              <div className="form-group">
                <label className="font-weight-bold">Ville:</label>
                <p className="text-muted">{portfolio.ville}</p>
              </div>
            </div>
          </div>
          <div className="row">
            <div className="col-md-12">
              <div className="form-group">
                <label className="font-weight-bold">Bio:</label>
                <p className="text-muted">{portfolio.bio}</p>
              </div>
            </div>
          </div>
          <div className="row">
            <div className="col-md-6">
              <div className="form-group">
                <label className="font-weight-bold">Email:</label>
                <p className="text-muted">{portfolio.email}</p>
              </div>
            </div>
          </div>
          <button className="btn btn-warning btn-block" onClick={() => { navige() }}>Réserver</button>
        </div>
      </div>
    </div>
  </div> </div>
  <button onClick={()=>{retour()}} class="button">
  <div class="button-box">
    <span class="button-elem">
      <svg viewBox="0 0 46 40" xmlns="http://www.w3.org/2000/svg">
        <path
          d="M46 20.038c0-.7-.3-1.5-.8-2.1l-16-17c-1.1-1-3.2-1.4-4.4-.3-1.2 1.1-1.2 3.3 0 4.4l11.3 11.9H3c-1.7 0-3 1.3-3 3s1.3 3 3 3h33.1l-11.3 11.9c-1 1-1.2 3.3 0 4.4 1.2 1.1 3.3.8 4.4-.3l16-17c.5-.5.8-1.1.8-1.9z"
        ></path>
      </svg>
    </span>
    <span class="button-elem">
      <svg viewBox="0 0 46 40">
        <path
          d="M46 20.038c0-.7-.3-1.5-.8-2.1l-16-17c-1.1-1-3.2-1.4-4.4-.3-1.2 1.1-1.2 3.3 0 4.4l11.3 11.9H3c-1.7 0-3 1.3-3 3s1.3 3 3 3h33.1l-11.3 11.9c-1 1-1.2 3.3 0 4.4 1.2 1.1 3.3.8 4.4-.3l16-17c.5-.5.8-1.1.8-1.9z"
        ></path>
      </svg>
    </span>
  </div>
</button><br /> <br />
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
export default Interface4
