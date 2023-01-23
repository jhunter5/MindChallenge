export default function ProfileCard({userInfo}){
    return(
        
        <div classname="container">
            <div classname='row'>
                <div classname="col">
                    <img src={userInfo.image} alt="" />
                </div>
            </div>
            <div classname='row'>
                <div classname='col'>
                 <h1>{userInfo.name}</h1>
                </div>
            </div>
        </div>
    )
}