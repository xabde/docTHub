import React, { useEffect } from "react";
import { useNavigate } from "react-router-dom";

function Navigate(){
  const navigate=useNavigate();
  useEffect(()=>{
    navigate('/admin/list/user')
  },[])
}
export default Navigate