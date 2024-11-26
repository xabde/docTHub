// App.js
import React, { useState } from 'react';
import { BrowserRouter as Router, Routes, Route,  } from "react-router-dom";
import { useSelector } from 'react-redux';

import Interface1 from './interfaces.jsx/interface1.jsx';
import Interface2 from './interfaces.jsx/interface2.jsx'
import Interface3 from './interfaces.jsx/interface3.jsx';
import Interface4 from './interfaces.jsx/interface4.jsx';
////////////////////////////////////////////////////////
import Nav1 from './nav/nav1.jsx';
import Nav_admin from './nav/nav_admin.jsx';
import Nav_medcin from './nav/nav_medcin.jsx';
import './App.css';

const App = () => {
  const nav_state=useSelector(state=>state.state_nav);
  console.log(nav_state)
  return (
    <div>
      {nav_state==0 ?  <Nav1/>:
       nav_state==1 ? <Nav_admin/>:
       <Nav_medcin/>
      }
     
      
    </div>
  );
};

export default App;

