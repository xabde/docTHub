import { data_register, list_user, portfolio, user_connect } from "./actions";
import { list_users } from "./thunk";

const initialState = {
   user:'',
   loading: false,
   list_medcin:'',
   list_malade:'',
   portfolio:"",

   //////////////////////////////
   state_nav:0,
   user_connect:'',//le usser connecter  //si corectr
   user_desactive:'',
   register_data:'',////// les roles et les specialite
   ville:'',
   list_users:'',
   details_user:'',

   /////////
   list_reservation:''

  };
  
  const clientReducer = (state = initialState, action) => {
    switch (action.type) {
      
        case 'USER':
            return{
                ...state,
                user:action.payload,
                loading: false
            }

        case 'LIST_MEDCIN':
            return{
                ...state,
                list_medcin:action.payload,
                loading: false
            }

        case 'LIST_MALADE':
           
            return {
                ...state,
                list_malade:action.payload,
                loading: false
            }

        case 'FORTFOLIO':
            return {
                ...state,
                portfolio:action.payload,
                loading: false
            }
        
            case 'LOGIN':
                return {
                    ...state,
                    user_connect:action.payload,
                    state_nav:action.payload.id_role
                }
            
            case 'DESACTIVE_LOGIN':
                return {
                    ...state,
                    user_desactive:action.payload

                }

            case 'REGISTER_DATA':
                return{
                        ...state,
                        register_data:action.payload.data,
                        ville:action.payload.ville
                }

            case 'LIST_USER':{
                return {
                    ...state,
                    list_users:action.payload
                }
            }

            case 'ACTIVE_USER':{
                
                return{
                    ...state,
                    list_users:state.list_users.map((i)=>{
                        
                        if(i.id==action.payload){
                            if(i.active==0){
                                return {...i,active:1}
                            }else{
                                return {...i,active:0}
                            }
                            
                        }
                        return i
                    })
                }
            }

            case 'DELETE_USER':
                return {
                ...state,
                list_users:state.list_users.filter((i)=>i.id!=action.payload)

            }

            case 'DETAILS-USER':
                return {
                    ...state,
                    details_user:action.payload
                }

            case 'GET-RESERVATION':
                return{
                    ...state,
                    list_reservation:action.payload
                }

            case 'log_out':
               return {
                ...state,
                user:'',
                loading: false,
                list_medcin:'',
                list_malade:'',
                portfolio:"",
             
                //////////////////////////////
                state_nav:0,
                user_connect:'',//le usser connecter  //si corectr
                user_desactive:'',
                register_data:'',////// les roles et les specialite
                ville:'',
                list_users:'',
                details_user:'',
             
                /////////
                list_reservation:''

               }
 default:
        return state;
    }
  };
  
  export default clientReducer;