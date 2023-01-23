import './App.css';
import Navbar from './components/navbar';
import ProfileHome from './components/profile/profileHome';
function App() {
  return (
    <div>
      <Navbar/>
      <br/>
      <h1>Your PROFILE</h1>
      <div>
        <ProfileHome userInfo={USERS}/>
      </div>

      
    </div>
  );
}

const USERS = {id: "1", name: "Raul", email: "MESSI@gmail.com", englishLevel: "A2", knowledge: "FULBO MUCHO FULBO", linkcv: "link", image: "https://img.a.transfermarkt.technology/portrait/big/28003-1671435885.jpg?lm=1"}
export default App;
