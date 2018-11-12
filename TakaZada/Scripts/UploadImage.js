$(document).ready(function () {
    $(document).on('change', '.btn-file :file', function () {
        var input = $(this);
        var str = input.val().replace(/\\/g, '/');
        var label = str.substring(str.lastIndexOf('/') + 1);
        input.trigger('fileselect', [label]);
    });

    $('.btn-file :file').on('fileselect', function (event, label) {

        var input = $(this).parents('.input-group').find(':text'),
            log = label;

        if (input.length) {
            input.val(log);
        } else {
            if (log) alert(log);
        }

    });
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img-upload').attr('src', e.target.result);
                var src = e.target.result.replace(/data:image\/([a-zA-Z+]*);base64,/g, "");
                $("#src").val(src);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function () {
        readURL(this);
    });
});