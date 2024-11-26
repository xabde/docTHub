import React from "react";
import { BrowserRouter as Router, Routes,Link, Route,  } from "react-router-dom";
import Interface1 from '../interfaces.jsx/interface1.jsx';
import Interface2 from '../interfaces.jsx/interface2.jsx'
import Interface3 from '../interfaces.jsx/interface3.jsx';
import Interface4 from '../interfaces.jsx/interface4.jsx';
import Login from '../login_register/login.jsx'
import Apropos from "../interfaces.jsx/apropos.jsx";
import Register from "../login_register/register.jsx";
import Contact from "../interfaces.jsx/contact.jsx";
import SweetAlert2 from 'react-sweetalert2';
import Reservation from "../interfaces.jsx/interface5.jsx";


function Nav1(){
   
    return(
        <div>
        <Router>
        <div class="navbar">
        <div class="logo"><img class="logo" src="logo.png" alt=""></img></div>
        <div class="nav-buttons">
            <button class="but2"><a href="http://localhost:3000">Accueil</a></button>
            <button class="but2"><Link to="/apropos"> Apropos</Link></button>
            <button class="but2"><Link to="/contact">Contactez-nous</Link></button>
        </div>
        <button class="but1"  >
          <Link to="/login">espace medcin</Link>
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="h-6 w-6"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
            stroke-width="4"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              d="M14 5l7 7m0 0l-7 7m7-7H3"
            ></path>
          </svg>
        </button>
    </div>
        
         <div>
          <Routes>
          <Route path="/" element={<Interface1 />} />
            <Route path="/interface2" element={<Interface2 />} />
            <Route path="/interface3" element={<Interface3 />} />
            <Route path="/interface4" element={<Interface4 />} />
            <Route path="/interface5" element={<Reservation />} />
            <Route path="/contact" element={<Contact />} />
            <Route path="/apropos" element={<Apropos />} />
            <Route path="/login" element={<Login />} />
            <Route path="/register" element={<Register />} />
            
          </Routes>
         </div>
        </Router>
        </div>

        
///////////////////////////////////////////////////////////////////////////////////
        
    )
}
export default Nav1