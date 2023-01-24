
export default function ActionsPanel(){
    return(
        <div class='container '>
            <div class="row">
                <div class='col'>
                    <h4 style={{color: "white"}}>Acciones</h4>
                </div>
            </div>
            <br />
            <div class='row align-items-center'>
                <div class='col'>
                    <th> <button class="btn btn-light">Listar usuarios</button></th>
                </div>
                <div class='col'>
                    <th><button class="btn btn-light" >Listar proyectos</button></th>
                </div>
                <div class='col'>
                    <th><button class="btn btn-light" >Consultar logs</button></th>
                </div>
            </div>
        </div>
    )
}