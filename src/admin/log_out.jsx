import React from "react";
import { useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { useDispatch } from "react-redux";
import { log_out } from "../redux/actions";

function Log_out(){
    const navigate=useNavigate();
    const dispatch=useDispatch();
     useEffect(()=>{
        navigate('/login')
        dispatch(log_out())
     })

}
export default Log_out