import { useState } from "react";
import axios from "axios";
import { useDispatch ,useSelector} from "react-redux";
import { useNavigate } from "react-router-dom";
import{ login_user} from '../redux/thunk'
import { Link } from "react-router-dom";



function Login(){
    const [user,setUser]=useState({email:'',password:''});
    const user_desactive=useSelector(state=>state.user_desactive);
    const [messageEreur,setMessageEreur]=useState(user_desactive)
    const dispatch=useDispatch();
    const navigate=useNavigate();
    const [message,setMessage]=useState('')
   
    const connecter=()=>{
        if(user.email!=''&&user.password!=''){
            dispatch(login_user(user))
            
        }else{
            setMessage('tous les champ obligatoire')
            setMessageEreur('')
        }
    }

    const register=()=>{
        navigate('/register')
    }
    return(
        <div>
            {console.log(user)}
          
    <div class="form-container2">
      <h2>Login</h2>
      <form>
          <div class="form-group2">
              <label for="email">Email:</label>
              <input type="email" id="email" name="email" onChange={(e)=>{setUser({...user,email:e.target.value})}} required/>
          </div>
          <div class="form-group2">
              <label for="password">Mot de passe:</label>
              <input type="password" id="password" name="password" onChange={(e)=>{setUser({...user,password:e.target.value})}}  required/>
          </div>
          <div class="form-group2">
              <button type="button" onClick={()=>{return connecter()}}>Se connecter</button>
          </div>
          <a href="register">
            <Link to='/register'>vous n avez pas un compte ?</Link>
            </a>
      </form>
      {user_desactive!=''?
      <div style={{color:'yellow'}}>{user_desactive}</div>:<p></p>  
       }
       {message!=''?
      <div style={{color:'reed'}}>{message}</div>:<p></p>  
       }
  </div>

        </div>
    )
}
export default Login