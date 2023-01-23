export default  function ProfileDescription({userInfo}){
    return (
        <div class="border ">
            <table>
                <tr>
                    <th>
                        <h3>Email</h3>
                        <h6>{userInfo.email}</h6>
                    </th>

                    <th>
                        <h3>English Level</h3>
                        <h6>{userInfo.englishLevel}</h6>
                    </th>
                </tr>
                <tr>
                    <th>
                        <h3>Knowledge</h3>
                        <h6>{userInfo.knowledge}</h6>
                    </th>
                </tr>
                <tr>
                    <th>
                        <h3>Link</h3>
                        <h6>{userInfo.linkcv}</h6>
                    </th>
                </tr>
            </table>
           
        </div>

    )
}