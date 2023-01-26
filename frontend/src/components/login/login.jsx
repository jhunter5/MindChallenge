import './login.css';

export default function LoginHome(){
    return(
        <div class="container-md p-5 border loginCard">
            <div class='row'>
            <div class="col-6 border p-5 ">
                <div class="greetingsDiv ">
                    <h1>Welcome back</h1>
                    <p>Welcome back, please log in</p>
                    <br />
                    <button class="">Ingresa con google </button>
                </div>
                <br /> 
                <div class="loginDiv">
                <form class="loginForm">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email"/>
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"/>
                    </div>
                    <div class="form-check">
                         <input type="checkbox" class="form-check-input" id="exampleCheck1" />
                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                     </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
                </div>
                
            </div>    
            <div class="col-6 border">
                <div class="imageDiv ">
                    <img class='logImage img-fluid'src="https://images.unsplash.com/photo-1575089976121-8ed7b2a54265?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80" alt="" />
                </div>
            </div>
            </div>
        </div> 
            
    )

}