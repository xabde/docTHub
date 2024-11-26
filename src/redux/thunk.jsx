import axios from "axios";

import {afficher_medcin,loading,portfolio,login,des_login,data_register,list_user,user_active,user_delete,user_details,get_reservation} from "./actions.jsx";

export const get_medcin = (ids) => async (dispatch) => {
    dispatch(loading())
    try {
      const response = await axios.get(
        "http://127.0.0.1:8000/api/afficher-medcin/"+ids
      );
      dispatch(afficher_medcin(response.data));
    } catch (error) {
      console.error("Error fetching permis data:", error);
    }
  };

  export const portfolio_medcin=(id)=> async (dispatch)=>{
    dispatch(loading())
    try{
      const res= await axios.get("http://127.0.0.1:8000/api/portfolio-medcin/"+id)
      // console.log('hahowa')
      // console.log(res.data)
      console.log(res.data.medcin)
      dispatch(portfolio(res.data.medcin))
    }catch(error){
      console.log(error)
    }
  }

  ///////////////////////////
  export const login_user=(user)=>async(dispatch)=>{
    dispatch(loading())
    
    try{
     
      const res=await axios.post("http://127.0.0.1:8000/api/login",user)
      console.log(res.status)
      if(res.status==200){
        if(res.data.success==true){
          console.log(res.data)
          dispatch(login(res.data.user))
        }else{
          console.log(res.data)
          dispatch(des_login(res.data.message))
        }
      
      
        
        
      }else{
        console.log(res.data)
       
      }
      //console.log(res.data)
    }catch(error){
      console.log(error)
    }
  }

  export const register_user=(user)=>async(dispatch)=>{
    dispatch(loading())
    try{
      const medcin={name:user.name,ville:user.ville,id_specialite:user.specialite,bio:user.bio}
      console.log(medcin)
      const res=await axios.post("http://127.0.0.1:8000/api/register-user",user)
      console.log(res.data)
      const responce=await axios.post("http://127.0.0.1:8000/api/register-medcin/"+res.data.id,medcin)
      console.log(responce.data)
    }catch(error){
      console.log(error)
    }
  }

  export const register_data=()=>async (dispatch)=>{
    dispatch(loading())
    
    try{
      const ville=await axios.get('http://localhost:3004/ville');
      const res=await axios.get("http://127.0.0.1:8000/api/register-index");
      
      //console.log(res.data)
      dispatch(data_register(res.data,ville.data))
      //dispatch()
    }catch(error){
      console.log(error)
    }
  }


  // afucher list user 
  export const list_users=()=>async (dispatch)=>{
     try{
        const res=await axios.get('http://127.0.0.1:8000/api/list-user')
        if((await res).status==200){
            dispatch(list_user(res.data))
        }
     }catch(eroor){
        console.log(eroor)
     }
  }

  export const active_users=(id)=>async (dispatch)=>{
    try{
       const res=await axios.get('http://127.0.0.1:8000/api/user-active/'+id)
       if((await res).status==200){
        console.log(res.data)
           dispatch(user_active(id))
       }
    }catch(eroor){
       console.log(eroor)
    }
 }

 
 export const delete_users=(id)=>async (dispatch)=>{
  try{
     const res=await axios.get('http://127.0.0.1:8000/api/user-delete/'+id)
     if((await res).status==200){
      console.log(res.data)
         dispatch(user_delete(id))
     }
  }catch(eroor){
     console.log(eroor)
  }
}

export const details_users=(id)=>async (dispatch)=>{
  try{
     const res=await axios.get('http://127.0.0.1:8000/api/user-details/'+id)
     if((await res).status==200){
      console.log(res.data.medcin)
         dispatch(user_details(res.data.medcin))
     }
  }catch(eroor){
     console.log(eroor)
  }
}

// valider une request pour medcin
export const validate_request=(obj)=>async (dispatch)=>{
  console.log(obj)
  dispatch(loading)
  try{
    const malade={nom:obj.malade,description:obj.description_malade,id_parties_corps:obj.id_partie_corp,id_genre:obj.genre,id_specialite:obj.id_specialite}
    console.log(malade)
    const malade_res=await axios.post('http://127.0.0.1:8000/api/add-malade',malade)
    console.log(malade_res.data.malade.id_malade)
    console.log(malade_res.data.malade)
    console.log(malade_res.data.success)
      if(malade_res.data.success==true){
         obj.symptomes.map(async (i)=>{
          const symptome=await axios.post('http://127.0.0.1:8000/api/add-symptome',{nom:i,malade:malade_res.data.malade.id_malade})
         })
      }
      obj.consignes.map(async (i)=>{
        const consigne =await axios.post('http://127.0.0.1:8000/api/add-consigne',{nom:i,malade:malade_res.data.malade.id_malade})
       })

       axios.delete("http://localhost:3001/request/"+obj.id).then((res)=>{
        if(res.status==200)
        {
          console.log(res.status)
        }
        else
        {
          console.log(res.status)
        }})
  }catch(eroor){
      console.log(eroor)
  }
}

/// delete request pour medcin 
export const suprimer_request=(obj)=>async (dispatch)=>{
  console.log(obj)
  dispatch(loading)
  try{
       axios.delete("http://localhost:3001/request/"+obj.id).then((res)=>{
        if(res.status==200)
        {
          console.log(res.status)
        }
        else
        {
          console.log(res.status)
        }})
  }catch(eroor){
      console.log(eroor)
  }
}


//reservation 
export const reservation=(obj)=>async (dispatch)=>{
  console.log('hahowa ja:',obj)
  dispatch(loading)
  try{
       axios.post("http://127.0.0.1:8000/api/reservation",obj).then((res)=>{
      console.log(res.status) 
      })
  }catch(eroor){
      console.log(eroor)
  }
}

export const list_reservation=(id)=>async (dispatch)=>{
  console.log('hahowa ja:',id)
  dispatch(loading)
  try{
       axios.get("http://127.0.0.1:8000/api/list/reservation/"+id).then((res)=>{
        dispatch(get_reservation(res.data))
      console.log(res.status) 
      })
  }catch(eroor){
      console.log(eroor)
  }
}