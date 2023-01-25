import './profile.css'

export default function ProfileCard({userInfo}){
    return(
        <div>
        <div class="container p-5 my-5 border ">
            <div classname='row'>
                <div class=" text-center">
                    <img src={userInfo.image} alt="" class="rounded-circle img-fluid" style={{width: "150px"}}/>
                    <h1 class="text" >{userInfo.name}</h1>     
                </div>
            </div>
            <div classname='row'>
                <div classname='col'>
                 
                </div>
            </div>
        </div>
        </div>

        
    )
}



