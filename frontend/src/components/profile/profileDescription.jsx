export default  function ProfileDescription({userInfo}){
    return (

        <div class="container">
            <div class='row'>
                <div class='col'>
                    <h3 style={{color: "white"}}>Email</h3>
                    <h6 style={{color: "white"}}>{userInfo.email}</h6>
                </div>
                <div class='col'>
                    <h3 style={{color: "white"}}>English Level</h3>
                    <h6 style={{color: "white"}}>{userInfo.englishLevel}</h6>
                </div>
            </div>
            <div class='row'>
                <div class='col'>
                    <h3 style={{color: "white"}}>Knowledge</h3>
                    <h6 style={{color: "white"}}>{userInfo.knowledge}</h6>
                </div>
            </div>
            <div class='row'>
                <div class='col'>
                    <h3 style={{color: "white"}}>Link</h3>
                    <h6 style={{color: "white"}}>{userInfo.linkcv}</h6>
                </div>
            </div>
        </div>

    )
}