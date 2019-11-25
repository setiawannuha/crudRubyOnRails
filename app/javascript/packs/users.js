$(document).ready(()=>{
    $('#submit_new_user').click(()=>{
        const form = $('#form_new_user').serialize();
        $.ajax({
            type: "POST",
            url: "/users/create_ajax",
            data: form,
            dataType: "JSON",
            success: function (response) {
                if(response.status){
                    alert("Success")
                    window.location.reload();
                }else{
                    alert("Fail")
                }
            }
        });
    })
})