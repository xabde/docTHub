import { type } from "@testing-library/user-event/dist/type";

export const user_connect = (user) => ({
    
  type: "USER",
  payload: user,
});
/////// loading
export const loading=()=>({
  type:'LOADING',
  payload:true
})
///// afficher la list des medcins
export const afficher_medcin=(list)=>({
  type:'LIST_MEDCIN',
  payload:list
})



export const afficher_malade=(list)=>({
  type:'LIST_MALADE',
  payload:list
})

export const portfolio=(medcin)=>({
  type:'FORTFOLIO',
  payload:medcin
})

export const login=(user)=>({
  type:'LOGIN',
  payload:user
})
export const des_login=(user)=>({
  type:'DESACTIVE_LOGIN',
  payload:user
})

export const data_register=(data,ville)=>({
  type:'REGISTER_DATA',
  payload:{data:data,ville:ville}

  
})

export const list_user=(data)=>({
     type :'LIST_USER',
     payload:data
})

export const user_active=(id)=>({
  type :'ACTIVE_USER',
  payload:id
})

export const user_delete=(id)=>({
  type :'DELETE_USER',
  payload:id
})

export const user_details=(data)=>({
  type:'DETAILS-USER',
  payload:data
})

export const get_reservation=(data)=>({
  type:'GET-RESERVATION',
  payload:data
})

export const log_out=()=>({
  type:'log_out',
  
})