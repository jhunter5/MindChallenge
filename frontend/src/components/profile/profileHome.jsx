import ProfileHeader from "./headerProfile";
import ProfileCard from "./profileCard"
import ProfileDescription from "./profileDescription"
import './profile.css';

export default function ProfileHome({userInfo}){
    return(
        <div>
        <ProfileHeader/>
        <div class="container my-5">
            <div class= "row">
                <div class="col">
                    <br />
                    <p class="display-1 text"> Your profile</p>
                </div>
            </div>
        </div>
        <div>
        
        </div>

        <div class="container p-5 my-5 card "  >
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