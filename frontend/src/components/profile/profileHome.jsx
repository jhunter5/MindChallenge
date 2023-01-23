import ProfileCard from "./profileCard"
import ProfileDescription from "./profileDescription"

export default function ProfileHome({userInfo}){
    return(
        <div class="border " >
            <table>
                <tr>
                    <th>
                        <ProfileCard userInfo={userInfo}/>
                    </th>
                    <th>
                        <ProfileDescription userInfo={userInfo}/>
                    </th>
                </tr>
            </table>
        </div>
        
    )
}