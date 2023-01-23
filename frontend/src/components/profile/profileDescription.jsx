export default  function ProfileDescription({userInfo}){
    return (

        <div class="container">
            <div class='row'>
                <div class='col'>
                    <h3>Email</h3>
                    <h6>{userInfo.email}</h6>
                </div>
                <div class='col'>
                    <h3>English Level</h3>
                    <h6>{userInfo.englishLevel}</h6>
                </div>
            </div>
            <div class='row'>
                <div class='col'>
                    <h3>Knowledge</h3>
                    <h6>{userInfo.knowledge}</h6>
                </div>
            </div>
            <div class='row'>
                <div class='col'>
                    <h3>Link</h3>
                    <h6>{userInfo.linkcv}</h6>
                </div>
            </div>
        </div>

    )
}