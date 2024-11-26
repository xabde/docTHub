import { useState ,useEffect} from "react";
import { useDispatch,useSelector } from "react-redux";
import { Link, useNavigate } from "react-router-dom";
import { register_data,register_user } from "../redux/thunk";
import SweetAlert2 from 'react-sweetalert2';

function Register(){
    const [swalProps, setSwalProps] = useState({});
    const [new_user,setNew_user]=useState({name:'',ville:'',specialite:'',bio:'',email:'',password:'',password_confirme:''}) ;
   //const [new_user,setNew_user]=useState({name:'',email:'',password:''}) ;
    const [message,setMessage]=useState('')
    const dispatch=useDispatch();
    const navigate=useNavigate();
    const data=useSelector(state=>state.register_data);
    const ville=useSelector(state=>state.ville);
    console.log(new_user)

    useEffect(() => {
          dispatch(register_data())
      }, []);

    const register=()=>{
        if(new_user.name!=''&&new_user.ville!=''&&new_user.specialite!=''&&new_user.email!=''&&new_user.bio!=''&&new_user.password!=''&&new_user.password_confirme!=''){
             if(new_user.password==new_user.password_confirme){
               
                dispatch(register_user(new_user))
                setNew_user({name:'',ville:'',specialite:'',bio:'',email:'',password:'',password_confirme:''})
                setMessage('bien ajouter ')

             }else{
                setMessage('confirmer votre password')
               
             }
        }else{
            setMessage('tous les champ obligatoire')
        }
        
    }

    return (
        <div>
            <div class="form-container">
        <h2>Devenir l´un de nos medcin</h2>
        <form>
            <div class="form-group">
                <label for="nom-complet">Nom Complet:</label>
                <input type="text" id="nom-complet" value={new_user.name} onChange={(e)=>{setNew_user({...new_user,name:e.target.value})}}  name="nom-complet" required/>
            </div>
            <div class="form-group">
                <label for="ville">Ville:</label>
                    <input class="form-control" list="browsers" value={new_user.ville} name="browser" id="browser" onChange={(e)=>{setNew_user({...new_user,ville:e.target.value})}} required/>
                    <datalist  id="browsers">
                       {ville!='' ? ville.map((i)=>
                        <option>{i.ville}</option>
                       
                    ):''}
                   
                    
                    </datalist > 
            
            </div>
            <div class="form-group">
                <label for="specialite" >Spécialité:</label>
                <select id="specialite" name="specialite" value={new_user.specialite} onChange={(e)=>{setNew_user({...new_user,specialite:e.target.value})}} required>
                    <option value="">Sélectionner</option>
                     {data!=='' ?data.specialite.map((i)=>
                      <option value={i.id_specialite}>{i.nom}</option>
                    ):''}
                </select>
            </div>
            <div class="form-group">
                <label for="bio">bio:</label>
                <textarea id="bio" name="bio"  value={new_user.bio} onChange={(e)=>{setNew_user({...new_user,bio:e.target.value})}}required/>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value={new_user.email}  onChange={(e)=>{setNew_user({...new_user,email:e.target.value})}} required/>
            </div>
            <div class="form-group">
                <label for="password">Mot de passe:</label>
                <input type="password" id="password" name="password" value={new_user.password} onChange={(e)=>{setNew_user({...new_user,password:e.target.value})}} required/>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirmation de mot de passe:</label>
                <input type="password" id="confirm-password" name="confirm-password" value={new_user.password_confirme} onChange={(e)=>{setNew_user({...new_user,password_confirme:e.target.value})}} required/>
            </div>
            <div class="form-group">
                <button type="button" onClick={()=>{return register()}}>Envoyer</button>
                
            </div>
            <a ><Link to='/login'>login</Link></a><br />
            {message!='' ?<strong><p style={{color:" orange"}}>{message}</p></strong> :''}

        </form>
    </div>
        </div>
    )
}
export default Register