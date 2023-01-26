import ProfileHome from "../profile/profileHome"
import ActionsPanel from "./adminActionsPanel"

export default function AdminHome({userInfo}){
    return(
        <section >

            <ProfileHome userInfo={userInfo}/>
            
            <div class='container container p-5 my-5 card'>
                <div class='row'>
                    <div class='col'>
                    <ActionsPanel />
                    </div>

                </div>
            </div>
        </section>

    )
}