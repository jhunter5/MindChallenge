export default  function ProfileDescription({userInfo}){
    return (

        <div class="container  p-5 my-5 border">
            <div class='row'>
                <div class='col'>
                    <h3 style={{color: "black"}}>Email</h3>
                    <h6 style={{color: "black"}}>{userInfo.email}</h6>
                </div>
                <div class='col'>
                    <h3 style={{color: "black"}}>English Level</h3>
                    <h6 style={{color: "black"}}>{userInfo.englishLevel}</h6>
                </div>
            </div>
            <div class='row'>
                <div class='col'>
                    <h3 style={{color: "black"}}>Knowledge</h3>
                    <h6 style={{color: "black"}}>{userInfo.knowledge}</h6>
                </div>
            </div>
            <div class='row'>
                <div class='col'>
                    <h3 style={{color: "black"}}>Link</h3>
                    <h6 style={{color: "black"}}>{userInfo.linkcv}</h6>
                </div>
            </div>
        </div>

    )
}