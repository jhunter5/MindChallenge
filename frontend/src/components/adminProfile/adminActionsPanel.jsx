
export default function ActionsPanel(){
    return(
        <div class='container p-5 my-5 border '>
            <div class="row">
                <div class='col'>
                    <h1 style={{color: "black"}}>Acciones</h1>
                </div>
            </div>
            <br />
            <div class='row align-items-center text-center '>
                <div class='col'>
                    <button class="btn btn-dark">Listar usuarios</button>
                </div>
                <div class='col'>
                    <button class="btn btn-dark" >Listar proyectos</button>
                </div>
                <div class='col'>
                    <button class="btn btn-dark" >Consultar logs</button>
                </div>
            </div>
        </div>
    )
}