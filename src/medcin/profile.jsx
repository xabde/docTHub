import {useEffect, useState } from "react";
//import axios from "axios";
//import { useLocation } from "react-router-dom";
import {details_users} from '../redux/thunk'
import { useDispatch ,useSelector} from "react-redux";

function Profile(){
     //const location=useLocation()
     const dispatch=useDispatch()
     //const  idu=location.state
     const portfolio=useSelector(state=>state.details_user);
     const user=useSelector(state=>state.user_connect);
     //console.log('prof:'+portfolio)
     console.log(user)

    
        useEffect(() => {
            dispatch(details_users(user.id));
          }, []);
    
     

     return (
        
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
        
      </div>
    </div>
  </div>
</div>
</div>
            
       
     )
}
export default Profile