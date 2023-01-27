import './singIn.css';
import { ReactComponent as Logo } from './sigin.svg';


export default function SingInHome(){
    return(
        <div className="container p-5 signInCard">
            <div className="row">
                <div className="col-6">
                <div class="greetingsDiv">
                    <h1>Welcome Back</h1>
                    <p>Welkcome back, please Sign In</p>
                    <br />
                    <button class="">Ingresa con google </button>
                </div>
                <br /> 
                <div class="">
                <form class="signInForm">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control"  aria-describedby="emailHelp" placeholder="Enter email" />
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control"  placeholder="Password" />
                    </div>
                    <div class="form-check">
                         <input type="checkbox" class="form-check-input" id="exampleCheck1" />
                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                     </div>
                    <button type="submit" class="btn btn-primary" >Submit</button>
                </form>
                </div>
            </div>
            <div className='col-6 border'>
                <Logo/>
            </div>
           </div >
        </div>
    )
}