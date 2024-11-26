import {useEffect, useState } from "react";
import axios from "axios";
import { useLocation ,useNavigate} from "react-router-dom";
import {get_medcin} from '../redux/thunk'
import { useDispatch ,useSelector} from "react-redux";
import { FaFacebookF, FaTwitter, FaRss, FaGoogle, FaFlickr } from 'react-icons/fa';

function Interface3(){
     const location=useLocation()
     const dispatch=useDispatch()
     const navigate=useNavigate()
     const list_medcin=useSelector(state=>state.list_medcin)
     const  malade=location.state
     const [list_consigne,setList_consigne]=useState('')
     const [list_symptome,setList_symptome]=useState('')
     console.log(malade)

     useEffect(() => {
        axios.get("http://127.0.0.1:8000/api/afficher-consigne/"+malade.id_malade).then((res) => {
            setList_consigne(res.data);
          console.log(res);
        });
        axios.get("http://127.0.0.1:8000/api/afficher-symptome/"+malade.id_malade).then((res) => {
            setList_symptome(res.data);
          console.log(res);
        });
        dispatch(get_medcin(malade.id_specialite));

      }, []);

    const portfolio=(id)=>{
       navigate('/interface4',{state:id})
    }
    const retour=()=>{
        navigate('/interface2')
      }

     return (
      
        <div >
          

                
<div className="all">
                <strong><p className="nomMalade">{malade.nom} :</p></strong><br />
            <div className="malade-infos">
                  
                  <p className="descMalade">{malade.description}</p>
                  

                  <br />
                  <div class="horizontal-sections">
            <div className="Symptome">
            <h4>Des Symptomes peux confirmer votre malade :  </h4>
            {list_symptome!=='' ? list_symptome.map(i=>
                <li>{i.description}</li>
            ) :'aucun'}
            
            </div>
            
            <div className="consigne">
            <h4>Des consignes recommander par nos medcin : </h4>
            {list_consigne!=='' ? list_consigne.map(i=>
                <li>{i.description}</li>
            ) :'aucun'}
           
            </div><br />
            </div>
            </div><br />
            <div class="tbib">
    <h2>Liste de nos médecins :</h2>
    <div class="doctor-list">
        {list_medcin !== '' ? 
            list_medcin.map(i => (
                <div class="card-medcin" onClick={() => { return portfolio(i.id_medcin) }}>
                    <p>{i.nom_prenom}</p>
                    <p>{i.ville}</p>
                </div>
            ))
        : 'Aucun médecin trouvé'}
    </div>
</div>
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
</button>

            </div>
            <br />
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
export default Interface3