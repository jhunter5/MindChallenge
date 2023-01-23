import ProfileHome from "../profile/profileHome"
import ActionsPanel from "./adminActionsPanel"

export default function AdminHome({userInfo}){
    return(
        <div>
            <ProfileHome userInfo={userInfo}/>
            <h4>Acciones</h4>
            <ActionsPanel />
        </div>

    )
}