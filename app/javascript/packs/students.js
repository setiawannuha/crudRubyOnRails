$(document).ready(()=> {
    $('#submit_new_student').click(()=> {
        const form = $('#form_new_student').serialize();
        $.ajax({
            type: "POST",
            url: "/students/create",
            data: form,
            dataType: "JSON",
            success: function (response) {
                if(response.status){
                    alert("success")
                    $('#form_new_student')[0].reset();
                    window.location.reload();
                }else{
                    alert("Failed")
                }
            }
        });
    })
    $('.table_students tbody').delegate('#delete', 'click', (e)=>{
        const id = $(e.currentTarget).attr('data-id');
        $.ajax({
            type: "DELETE",
            url: `/students/destroy?id=${id}`,
            dataType: "JSON",
            success: function (response) {
                if(response.status){
                    window.location.reload();
                }else{
                    alert("Failed")
                }
            }
        });
    })
})