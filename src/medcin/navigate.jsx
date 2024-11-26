import React, { useEffect } from "react";
import { useNavigate } from "react-router-dom";

function Navigate(){
  const navigate=useNavigate();
  useEffect(()=>{
    navigate('/medcin/profile')
  },[])
}
export default Navigate