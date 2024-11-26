import { useEffect, useState } from "react";
import { useDispatch ,useSelector} from "react-redux";
import { useNavigate } from "react-router-dom";
import { list_users ,active_users,delete_users} from "../redux/thunk";
import axios from "axios";

function List_user(){
    const list_user=useSelector(state=>state.list_users);
    const dispatch=useDispatch();
    const navigate=useNavigate();
    console.log(list_user)
    useEffect(()=>{
        // axios.get("http://127.0.0.1:8000/api/list-user").then((res)=>{
        //     setList_user(res.data)
        //     console.log(list_user)
        // })
        dispatch(list_users())
            },[]);

    const active=(id)=>{
        dispatch(active_users(id))
    }
    const delete_user=(id)=>{
        dispatch(delete_users(id))
    }
    const portfolio=(id)=>{
        navigate('/admin/list/user/details',{state:id})
     }
    return(
        <div>

            <h1>Espace Admin</h1>
            <table>
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Status</th>
                        <th>Action</th>
                        <th>More Infos</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        list_user.length > 0 ? list_user.map((i) =>
                            <tr key={i.id}>
                                <td>{i.id}</td>
                                <td>{i.name}</td>
                                <td>{i.email}</td>
                                <td>
                                    <button 
                                        className={i.active ? "active-button" : "desactive-button"} 
                                        onClick={() => active(i.id)}>
                                        {i.active ? "Active" : "Desactive"}
                                    </button>
                                </td>
                                <td>
                                    <button className="delete-button" onClick={() => delete_user(i.id)}>Delete</button>
                                </td>
                                <td>
                                    <button className="more-info-button" onClick={() => portfolio(i.id)}>More Infos</button>
                                </td>
                            </tr>
                        ) : <tr><td colSpan="6">No users found</td></tr>
                    }
                </tbody>
            </table>
        </div>
    )
}

export default List_user