export default function Footer(){
    return(
      <div>
        <footer class="bg-dark text-center text-white">
            <div class="container p-5 my-5 ">
                <section class="mb-4">
                    <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
                    >  <i class="fab fa-facebook-f"></i></a>
                </section>
            </div>
            <div class="text-center p-3" style={{backgroundcolor: "rgba(0, 0, 0, 0.2);"}}>
                <p>© 2020 Copyright:</p>
                <a class="text-white" href="https://mdbootstrap.com/">MDBootstrap.com</a>
            </div>
        </footer>
      </div>
    )
}