import { useState,useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { list_reservation } from "../redux/thunk";

function List_reservation(){
   const dispatch=useDispatch()
   const portfolio=useSelector(state=>state.details_user);
   const list_reservations=useSelector(state=>state.list_reservation);

   useEffect(()=>{
    // if(portfolio!=''){
    //     dispatch(list_reservation(portfolio.id_medcin))
    // }
    dispatch(list_reservation(portfolio.id_medcin))
    console.log('hahowa',portfolio)
    
   },[])

   return(
    <div>
        <h1 className="h1">liste des rendez-vous </h1>
        <div className="tabrendez">
 
  <table className="table1">
    <thead className="thead-dark">
      <tr>
        <th scope="col" className="text-center">Nom</th>
        <th scope="col" className="text-center">Ville</th>
        <th scope="col" className="text-center">Description</th>
        <th scope="col" className="text-center">Numéro</th>
        <th scope="col" className="text-center">Date</th>
        <th scope="col" className="text-center">Heure</th>
      </tr>
    </thead>
    <tbody>
      {list_reservations !== '' ?
        list_reservations.map((i) =>
          <tr>
            <td>{i.nom}</td>
            <td>{i.ville}</td>
            <td>{i.description}</td>
            <td>{i.numero}</td>
            <td>{i.date}</td>
            <td>{i.heur}</td>
          </tr>
        ) : ''
      }
    </tbody>
  </table>
</div>
</div>
   )

}
export default List_reservation