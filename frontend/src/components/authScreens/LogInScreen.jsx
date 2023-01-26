import React, {useState} from 'react';
import {useDispatch} from "react-redux";
import {signUpUser} from "../../store/slice";

export default function LogInScreen(){
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const dispatch = useDispatch();
    const onSubmit= () => {
        console.log('user entered: ' + email);
        dispatch(signUpUser({"user": {"email": email, "password": password, "role": 0}}))
    }

    return(
        <div>
            <h1>Please login a</h1>
                <label>Enter your email:
                    <input type="text" placeholder='Email' value={email} onChange={(event) => setEmail(event.target.value)}/>
                </label>
                <label>Enter your email:
                    <input type="password" placeholder='Password' value={password} onChange={(event) => setPassword(event.target.value)}/>
                </label>
                <button onClick={onSubmit}>Log in</button>

        </div>
    );
}
