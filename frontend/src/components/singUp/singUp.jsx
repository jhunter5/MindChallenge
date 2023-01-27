import './singUp.css';
import { ReactComponent as Logo } from './singup.svg';
import React, {useState} from 'react';
import {useDispatch} from "react-redux";
import {signUpUser} from "../../store/slice";

export default function SingUpHome(){
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState('');
    const dispatch = useDispatch();
    const onSubmit= (values) => {
        values.preventDefault()
        console.log('user entered: ' + email);
        dispatch(signUpUser({"user": {"email": email, "password": password, "role": 0}}))
    }
    return(
        <div class="container-md p-5 border signUpCard">
            <div class='row'>
            <div class="col-6 p-5 ">
                <div class="greetingsDiv">
                    <h1>Join Us</h1>
                    <p>Please Sign Up</p>
                    <br />
                    <button class="">Ingresa con google </button>
                </div>
                <br /> 
                <div class="">
                <form class="signUpForm">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control"  aria-describedby="emailHelp" placeholder="Enter email" value={email} onChange={(event) => setEmail(event.target.value)}/>
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control"  placeholder="Password" value={password} onChange={(event) => setPassword(event.target.value)}/>
                    </div>
                    <div class="form-check">
                         <input type="checkbox" class="form-check-input" id="exampleCheck1" />
                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                     </div>
                    <button type="submit" class="btn btn-primary" handleSubmit={onSubmit}>Submit</button>
                </form>
                </div>
                
            </div>    
            <div class="col-6 ">
                <Logo style={{width: '100%'}}/>
            </div>
            </div>
        </div> 
            
    )

}