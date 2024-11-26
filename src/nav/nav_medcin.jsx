import React  from "react";
import { BrowserRouter as Router, Routes,Link, Route,  } from "react-router-dom";
import { useNavigate } from "react-router-dom";
import { useSelector } from "react-redux";
import Profile from "../medcin/profile";
import Navigate from "../medcin/navigate";
import Help from "../medcin/help";
import List_reservation from "../medcin/list_rendez_vous";
import Log_out from "../admin/log_out";


function Nav_medcin(){
    
    return(
        <div>
        <Router>
      
            <ul>
                <li><Link to="/medcin/profile">profil</Link></li>
                <li><Link to="/medcin/help">ajouter malade</Link></li>
                <li><Link to="/medcin/reservation">liste rendez-vous</Link></li>
            </ul>
            <button class="quitter">
                
                <Link className="text" to="/admin/log-out">Quitter</Link>
  
  <      div class="sign"><svg viewBox="0 0 512 512"><path d="M377.9 105.9L500.7 228.7c7.2 7.2 11.3 17.1 11.3 27.3s-4.1 20.1-11.3 27.3L377.9 406.1c-6.4 6.4-15 9.9-24 9.9c-18.7 0-33.9-15.2-33.9-33.9l0-62.1-128 0c-17.7 0-32-14.3-32-32l0-64c0-17.7 14.3-32 32-32l128 0 0-62.1c0-18.7 15.2-33.9 33.9-33.9c9 0 17.6 3.6 24 9.9zM160 96L96 96c-17.7 0-32 14.3-32 32l0 256c0 17.7 14.3 32 32 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32l-64 0c-53 0-96-43-96-96L0 128C0 75 43 32 96 32l64 0c17.7 0 32 14.3 32 32s-14.3 32-32 32z"></path></svg></div>
  
          </button>
        
        
         <div>
          <Routes>
          <Route path="/login" element={<Navigate />} />
            <Route path="/medcin/profile" element={<Profile />} />
            <Route path="/medcin/help" element={<Help />} />
            <Route path="/medcin/reservation" element={<List_reservation />} />
            <Route path="/admin/log-out" element={<Log_out />} />
            {/* <Route path="/interface2" element={<Interface2 />} />
            <Route path="/interface3" element={<Interface3 />} />
            <Route path="/interface4" element={<Interface4 />} />
            <Route path="/login" element={<Login />} />
            <Route path="/register" element={<Register />} /> */}
            
          </Routes>
         </div>
        </Router>
        </div>

        
///////////////////////////////////////////////////////////////////////////////////
        
    )
}
export default Nav_medcin