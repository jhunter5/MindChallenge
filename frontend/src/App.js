import './App.css';

import Navbar from './components/navbar';
import Footer from './components/footer';
import ProfileHome from './components/profile/profileHome';
import AdminHome from './components/adminProfile/adminhome';
import LoginHome from './components/login/login';


function itsadmin(userInfo){
  return userInfo.role ? true : false;
}

function profile(userInfo){
  return(
  <section style={{backgroundColor: '#2E3338'}}>
    <Navbar/>
    <br/>
    {itsadmin(USER) ? <AdminHome userInfo={USER}/> : <ProfileHome userInfo={USER}/>}
    <br/>
    <Footer/>
  </section>
  )
}

function login(){
  return(
    <section style={{backgroundColor: '#2E3338'}}>
      <Navbar/>
      <br/>
      <br/>
      <br/>
      <LoginHome/>
      <Footer/>
      <br/>
    </section>
  )
}


function App() {
  return (
    // profile(USER)
    login()
  )
}

// Dummy data
const USER = {id: 1, role:true, name: "Messi", email: "MESSI@gmail.com", englishLevel: "A2", knowledge: "FULBO MUCHO FULBO", linkcv: "link", image: "https://img.a.transfermarkt.technology/portrait/big/28003-1671435885.jpg?lm=1"}





// import Navbar from './components/navbar';
// import ProfileHome from './components/profile/profileHome';
// import AdminHome from './components/adminProfile/adminhome';
// import LoginScreen from './components/authScreens/LogInScreen';
// function chooseUser(userList, currentId){
//   let currentUser=userList.filter(userList => userList.id == currentId)
//   return JSON.stringify(currentUser)
//     <LoginScreen/>
// }
// const USER = {id: 1, role:false, name: "Messi", email: "MESSI@gmail.com", englishLevel: "A2", knowledge: "FULBO MUCHO FULBO", linkcv: "link", image: "https://img.a.transfermarkt.technology/portrait/big/28003-1671435885.jpg?lm=1"}

export default App;
