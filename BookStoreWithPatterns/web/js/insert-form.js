// Load Event
$(document).ready(function() {
    $(document).on("change", "select[name='month']", function() {
        get_day(function(day) {
            fill_day(day);
        });
    });
    $(document).on("change", "input[name='year']", function() {
        get_day(function(day) {
            fill_day(day);
        });
    });
});

$(document).ready(function(){
	get_day(function(day){
		fill_day(day);
	});
});

function fill_day(day) {
	$("select[name='day']").html("");
    for (var i = 1; i <= day; i++) {
        var html = "<option value=" + i + ">" + i + "</option>";
        $("select[name='day']").append(html);
    }
}

function get_day(callback) {
    var month = $("select[name='month']").val();
    var year = $("input[name='year']").val();
    if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
        return callback(31);
    } else if (month == 2) {
        if (year != undefined) {
            if (year%4 == 0) {
                return callback(28);
            }else{
            	return callback(29);
            }
        }
    } else {
        return callback(30);
    }
}

function checkRePassword(){
	var password = $("input[name='password']").val();
	var repass = $("input[name='repassword']").val();
	if(password != repass){
		$(".notification-repass").show();
		return;
	}else{
		$(".notification-repass").hide();
	}
}
