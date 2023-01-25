import './App.css';
import Navbar from './components/navbar';
import Footer from './components/footer';
import ProfileHome from './components/profile/profileHome';
import AdminHome from './components/adminProfile/adminhome';



function itsadmin(userInfo){
  return userInfo.role ? true : false;
}


function App() {
  return (
    <section style={{backgroundColor: "#eee"}}>
      <Navbar/>
      <br/>
      {itsadmin(USER) ? <AdminHome userInfo={USER}/> : <ProfileHome userInfo={USER}/>}
      <br/>
      <Footer/>
    </section>
  );
}

// Dummy data
const USER = {id: 1, role:true, name: "Messi", email: "MESSI@gmail.com", englishLevel: "A2", knowledge: "FULBO MUCHO FULBO", linkcv: "link", image: "https://img.a.transfermarkt.technology/portrait/big/28003-1671435885.jpg?lm=1"}




export default App;
