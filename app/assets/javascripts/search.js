function search(search){
    $.ajax({
        type: "GET",
        url: '/search',
        data: {name: 'alfa-romeo'},
        success: success,
        error: error
    })
}

function success(response){
    console.log("Success!");
    console.log(response);
}

function error(){
    console.log("Error!");
    console.log(error.responseText);
}

$(document).on("ready", function(){
    search();
});