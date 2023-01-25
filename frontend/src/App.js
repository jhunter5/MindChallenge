import './App.css';
// import Navbar from './components/navbar';
// import ProfileHome from './components/profile/profileHome';
// import AdminHome from './components/adminProfile/adminhome';
import LoginScreen from './components/authScreens/LogInScreen';
// function chooseUser(userList, currentId){
//   let currentUser=userList.filter(userList => userList.id == currentId)
//   return JSON.stringify(currentUser)
// }

// const USER = {id: 1, role:false, name: "Messi", email: "MESSI@gmail.com", englishLevel: "A2", knowledge: "FULBO MUCHO FULBO", linkcv: "link", image: "https://img.a.transfermarkt.technology/portrait/big/28003-1671435885.jpg?lm=1"}

// function itsadmin(userInfo){
//   return userInfo.role ? true : false;
// }

function App() {
  return (
    // <div>
    //   {/* {console.log(chooseUser(USERS,2))} */}
    //   <Navbar/>
    //   <br/>
    //   {}
    //   {itsadmin(USER) ? <AdminHome userInfo={USER}/> : <ProfileHome userInfo={USER}/>}
    //
    // </div>
      <LoginScreen/>
  );
}

export default App;
