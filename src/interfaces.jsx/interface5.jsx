import React, { useState ,useEffect} from 'react';
import moment from 'moment';
import { useSelector,useDispatch } from 'react-redux';
import { useLocation } from 'react-router-dom';
import { reservation } from '../redux/thunk';
import SweetAlert2 from 'react-sweetalert2';
import { register_data } from '../redux/thunk';
function Reservation() {
  const [swalProps, setSwalProps] = useState({});
  const location=useLocation()
  const  id_medcin=location.state
  const dispatch=useDispatch()
  const [nom, setNom] = useState('');
  const [ville, setVille] = useState('');
  const [numero, setNumero] = useState('');
  const [description, setDescription] = useState('');
  const [dateSelectionnee, setDateSelectionnee] = useState('');
  const [dureeSelectionnee, setDureeSelectionnee] = useState('');
  const [messageEreur,setMessageEreur]=useState('');
  const [messagesuc,setMessagesuc]=useState('');
  const [dateSelectionneee, setDateSelectionneee] = useState('');
  const [dureeSelectionneee, setDureeSelectionneee] = useState('');
  const villee=useSelector(state=>state.ville);
   useEffect(() => {
          dispatch(register_data())
      }, []);
  
  useEffect(() => {
    dispatch(register_data())
}, []);

  // Tableau de créneaux horaires disponibles
  const disponibilites = ['09:00', '10:00', '11:00','12:00','14:00','15:00','16:00','17:00','18:00',];

  // Gestionnaire d'événements pour la sélection de la date
  const handleDateChange = (event) => {
    setDateSelectionnee(event.target.value);
    setDateSelectionneee(event.target.value);
  };

  // Gestionnaire d'événements pour la sélection du jour et de l'heure
  const handleSlotSelection = ( heure) => {
    setDureeSelectionnee(heure);
    setDureeSelectionneee(heure);
  };

  // Affichage des créneaux horaires disponibles pour la date sélectionnée
  
  

  // Soumission du formulaire
  const reserver = (event) => {
    event.preventDefault();
    const dateAujourdhui = moment().format('YYYY-MM-DD');
    const estAujourdhui = dateSelectionnee >= dateAujourdhui;
    if(estAujourdhui){
        const rendez={
          "date": dateSelectionneee,
          "heur": dureeSelectionneee,
          "ville": "casablanca",
          "id_medcin": id_medcin,
          "nom": nom,
          "description": description,
          "numero": numero,
      }
      dispatch(reservation(rendez))
        console.log('Rendez-vous réservé pour le', dateSelectionneee, 'à', dureeSelectionneee);
        setMessageEreur('')
        setMessagesuc('Rendez-vous réservé avec success')
        
    }else{
        console.log('Rendez-vous réservé pour annuler');
        setMessagesuc('')
        setMessageEreur('veuiller choisir une nouvelle date ')
    }
    console.log('Nom:', nom);
    console.log('Ville:', ville);
    console.log('Description:', description);
    console.log('heure sélectionnée:', dureeSelectionnee);
    console.log('Date sélectionnée:', dateSelectionnee);
    // Réinitialisation des champs du formulaire
    setNom('');
    setNumero('');
    setVille('');
    setDescription('');
    setDateSelectionnee('');
  };

  return (
    <div className='kolchi'>
    <div className='virage'>
      <div className='rendez-vous'>
      <h2 className='res'>Réservation de rendez-vous</h2>
      <form onSubmit={reserver}>
        <label>
          Nom:
          <input type="text" value={nom} onChange={(e) => setNom(e.target.value)} />
        </label>
        <br />
        <label>
          numero telephone:
          <input type="number" value={numero} onChange={(e) => setNumero(e.target.value)} />
        </label>
        <br />
        <label>
          Ville:
        
        </label>
        <input class="form-control" list="browsers" name="browser" id="browser" type="text" value={ville} onChange={(e) => setVille(e.target.value)} required/>
                    <datalist  id="browsers">
                       {villee!='' ? villee.map((i)=>
                        <option>{i.ville}</option>
                       
                    ):''}
                   
                    
                    </datalist > 

        <br />
        <label>
          Description du malade:
          <textarea value={description} onChange={(e) => setDescription(e.target.value)} />
        </label>
        <br />
        <label>
          Date:
          <input type="date" value={dateSelectionnee} onChange={handleDateChange} />
        </label>
        <br />
        <div>
          <h3>Créneaux horaires disponibles :</h3>
          {disponibilites.map((i)=>
          <button  type='button' onClick={()=>{handleSlotSelection(i)}}>{i}</button>
          )}
        </div>
        <br />
        <button type="submit" 
         onClick={() => {
          setSwalProps({
              show: true,
              icon:"success",
              title: "Reservation confirme",
             
          });
      }}>Réserver</button>
       <SweetAlert2 {...swalProps} />
      </form>
      {
        messagesuc!=''?
        <p style={{ color:'green'}}>{messagesuc}  </p>:''
      }
      <p style={{ color:'reed'}}>{messageEreur}</p>
      </div>
      <div className='card-rendez-vous'>
        
          <label htmlFor="">NOM:{nom}</label>
          <label htmlFor="">ville:{ville}</label>
          <label htmlFor="">numero:{numero}</label>
          <label htmlFor="">description:{description}</label>
          <label htmlFor="">date Selectionnee:{dateSelectionnee}</label>
          <label htmlFor="">duree Selectionnee:{dureeSelectionnee}</label>
          
         

      </div>
      
    </div>
    <br /><br /><br />
   
    </div>
  );
}

export default Reservation;
