$(document).ready(()=>{
    $('#submit_new_school').click(()=>{
        const form = $('#form_new_school').serialize();
        $.ajax({
            type: "POST",
            url: "/schools/create",
            data: form,
            dataType: "JSON",
            success: function (response) {
                if(response.status){
                    alert('success')
                    $('#form_new_school')[0].reset();
                    window.location.reload();
                }else{
                    alert('failed')
                }
            }
        });
    });
    $('.table_schools tbody').delegate('#delete', 'click', (e) => {
        const id = $(e.currentTarget).attr('data-id');
        $.ajax({
            type: "DELETE",
            url: `/schools/destroy?id=${id}`,
            dataType: "JSON",
            success: function (response) {
                if(response.status){
                    window.location.reload();
                }else{
                    alert('failed')
                }
            }
        });
    })
})