/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

data = "";
//                $("#skill_Form").submit(function () {
//                    var data = {}
//                    data["skill_Id"] = $("#skill_Id").val();
//                    data["skill_name"] = $('#skill_name').val();
//                    submit = function () {
//                        $.ajax({
//                            url: "save2",
//                            type: 'POST',
//                            data: json.stringify(data),
//                            beforeSend: function (xhr) {
//                                xhr.setRequestHeader("Accept", "application/json");
//                                xhr.setRequestHeader("Content-Type", "application/json");
//                            },
//                            success: function (data, textStatus, jqXHR) {
//                                alert("You have successfully saved skill");
//                                load();
//                            }
//                        });
//                    }
//                });


delete_ = function (id) {
    $.ajax({
        url: 'delete2',
        type: 'POST',
        data: {skill_Id: id},
        success: function (response) {
//                            alert(response.message);
            alert("you have successfully deleted");
            load();
        }
    });
};

load = function () {
    $.ajax({
        url: 'list2',
        type: 'GET',
        success: function (response) {
            data = response.data;
            $('.tr').remove();
            for (i = 0; i < response.data.length; i++) {
                console.log(data[i].skill_Id);
//                $("#table1").append("<tr class='tr'> <td> " + response.data[i].skill_name + " </td>  <td> <a href='#' onclick= edit(" + i + ");> Edit </a>  </td> </td> <td> <a href='#' onclick='delete_(" + response.data[i].skill_Id + ");'> Delete </a>  </td> </tr>");
                $("#table1").append("<tr class='tr'> <td> " + response.data[i].skill_name + " </td>  <td> <a href='#' onclick= edit(" + i + ");> Edit </a>  </td> </td> <td> <a href='#' onclick='delete_(" + response.data[i].skill_Id + ");'> Delete </a>  </td> </tr>");

            }
        }
    });	
};

edit = function (index) {
    $("#skill_Id").val(data[index].skill_Id);
    $("#skill_name").val(data[index].skill_name);
};

refresh = function () {
    $("#skill_Id").val("");
    $("#skill_name").val("");
};



//
$(document).ready(function () {
    $("input").focus(function () {
        $(this).css("background-color", "#cccccc");
    });
    $("input").blur(function () {
        $(this).css("background-color", "#ffffff");
    });
});
$(document).ready(function () {
    $("#myInput").on("keyup", function () {
        var value = $(this).val().toLowerCase();
        $(".tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
    });
});


     