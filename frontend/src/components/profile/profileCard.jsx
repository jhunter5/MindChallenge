export default function ProfileCard({userInfo}){
    return(
        <div class="border " >
        <table>
            <tr>
                <th>
                    <img src={userInfo.image} alt="" />
                </th>
            </tr>
            <tr>
                <th>
                    <h1>{userInfo.name}</h1>
                </th>
            </tr>
        </table>
        </div>
    )
}