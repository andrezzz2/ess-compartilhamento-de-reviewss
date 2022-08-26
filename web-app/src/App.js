import './App.css';
import HomePage from './Pages/HomePage';
import Profile from './Pages/Profile';
import Login from './Pages/Login';
import SignUp from './Pages/SignUp';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import { useEffect, useState } from 'react';
import axios from 'axios';

function App() {

    const [ user, setUser ] = useState(null);
    
    useEffect(()=>{
        axios.post('http://localhost:8080/user/getmyinfo', {username: "andrezzz"}).then((response)=>{
            setUser(response.data);
        });
    }, []);

    return (
        <div className="App">
            <BrowserRouter>
                <Routes>
                    <Route exact path="/" element={<HomePage User={user}/>}/>
                    <Route path="/login" element={<Login User={user}/>}/>
                    <Route path="/signUp" element={<SignUp User={user}/>}/>
                    <Route path="/profile/:slug" element={<Profile User={user}/>}/>
                </Routes>
            </BrowserRouter>
        </div>
    );
}

export default App;
