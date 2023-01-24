import ProfileHome from "../profile/profileHome"
import ActionsPanel from "./adminActionsPanel"

export default function AdminHome({userInfo}){
    return(
        <section>
            <ProfileHome userInfo={userInfo}/>
            
            <div class='container bg-black container p-5 my-5 rounded shadow-lg'>
                <div class='row'>
                    <div class='col'>
                    <ActionsPanel />
                    </div>

                </div>
            </div>
        </section>

    )
}