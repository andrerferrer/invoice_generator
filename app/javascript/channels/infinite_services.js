const increaseService = () => {
    const element = document.getElementById("service");
    const add_service = document.getElementById("add_service");
    let remove_service = [];
    
    add_service.addEventListener('click', (event) => {
        event.preventDefault();
        element.insertAdjacentHTML('afterend',
        "<div>\
        <div class='form-row mt-3 id='service'>\
        <div class='col-md-7'>\
        <label for='inputEmail4'>Serviço</label>\
        <input type='text' class='form-control' placeholder='Descrição do serviço' name='service_description[]'>\
        </div>\
        <div class='col-md-4'>\
        <label for='inputEmail4'>Preço</label>\
        <input type='text' class='form-control' placeholder='Preço' name='service_value[]'>\
        </div>\
        <div class='col-md-1 icon' id='remove_service'>\
        <i class='fa fa-minus-circle plus'></i>\
        </div >\
        </div>\
        </div>");
        remove_service = update_selector();
            remove(remove_service);
    })

}

const update_selector = () => {
    return document.querySelectorAll("#remove_service");
}

const remove = (remove_services) => {
    remove_services.forEach((service) => {
        service.addEventListener('click', (event) => {
            event.preventDefault();
            service.parentNode.parentNode.remove();
        })
    });
}


export { increaseService };