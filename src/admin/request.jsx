import axios from "axios";
import { useState,useEffect } from "react";
import { useDispatch } from "react-redux";
import { validate_request } from "../redux/thunk";
import { loading } from "../redux/actions";
import { suprimer_request } from "../redux/thunk";

function Request(){
    const [list_request,setList_request]=useState('')
    const [x,setX]=useState(0)
    const dispatch=useDispatch();
    useEffect(()=>{
        axios.get("http://localhost:3001/request").then((res)=>{
            console.log('jj')
            console.log(res.data)
            console.log('kk')
            setList_request(res.data)
            console.log(list_request)
           
        })
            },[]);

        const valider=(obj)=>{
              dispatch(validate_request(obj))
              setList_request(list_request.filter((i)=>i.id!=obj.id))
        }

        const sup=(obj)=>{
          dispatch(suprimer_request(obj))
          setList_request(list_request.filter((i)=>i.id!=obj.id))
        }

        

            return (
                <div>
                 {list_request.length > 0 ?
                    list_request.map((i) => (
                      
                        <div className="request-container">
                             <p >id request :{i.id}</p>
                             <p >de MR.{i.nom_prenom }</p>
                             <p>pour : {i.malade}</p>
                             <ul>
                                <p>list consignes</p>
                                {i.consignes.map((c)=>
                                <li>{c}</li>
                                )}
                             </ul>
                             <ul>
                                <p>list symptomes</p>
                                {i.symptomes.map((c)=>
                                <li>{c}</li>
                                )}
                             </ul>
                             <div>
                                <button className="valider-button" onClick={()=>{valider(i)}}>valider </button>
                                <button className="suprimmer-button" onClick={()=>{sup(i)}}>suprimmer </button>
                             </div>
                        </div>
                     
                    )) :
                    'Aucune donnée'
                  }
                </div>
              );

}
export default Request