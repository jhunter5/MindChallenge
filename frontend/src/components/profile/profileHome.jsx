import ProfileCard from "./profileCard"
import ProfileDescription from "./profileDescription"

export default function ProfileHome({userInfo}){
    return(
        <div class="container">
            <div class= "row">
                <div class="col">
                    <h1>Your PROFILE</h1>
                    <br />
                </div>
            </div>

            <div class= 'row'>
                <div class="col-3">
                    <ProfileCard userInfo={userInfo}/>
                </div>
                <div class="col">
                    <ProfileDescription userInfo={userInfo}/>
                </div>
            </div>
        </div>
        
    )
}