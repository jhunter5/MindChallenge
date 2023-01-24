import ProfileCard from "./profileCard"
import ProfileDescription from "./profileDescription"
import './profile.css';

export default function ProfileHome({userInfo}){
    return(
        <div>
        <div class="container my-5">
            <div class= "row">
                <div class="col">
                    <br />
                    <p class="display-1 titulo"> Your profile</p>
                </div>
            </div>
        </div>
        <div>
        
        </div>

        <div class="bg-black container p-5 my-5 rounded shadow-lg">
            <div class= 'row'>
                <div class="col">
                    <ProfileCard userInfo={userInfo}/>
                </div>
                <div class="col">
                    <ProfileDescription userInfo={userInfo}/>
                </div>
            </div>
        </div>
    </div>
    )
}