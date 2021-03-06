<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
    <?php
        include "helpers/DBHelper.php";
        header("content-type: text/html; charset=UTF-8");
        set_time_limit(2147483647);
        $crawler = new \crawler\JobCrawlerController();
    ?>

    <div class="tab">
        <button class="tablinks active" onclick="changeTab(event, 'crawler')">Lấy danh sách công việc</button>
        <button class="tablinks" onclick="changeTab(event, 'listJob')">Danh sách việc làm</button>
    </div>
    <div id="background">
        <div id="background-inside">
            <div id="crawler" class="tabcontent">
                <h2>Lấy danh sách công việc</h2>
                <br>
                <form name="get-jobs-form">
                    <div class="form-group" >
                        <label for="source-get-jobs">Lựa chọn nguồn lấy tin:</label>
                        <select class="form-control" name="source" id="source-get-jobs" required="true">
                        </select>
                        <br>
                        <label for="limit-get-jobs">Giới hạn số công việc lấy được của mỗi ngành nghề: </label>
                        <input class="form-control" type="number" name="limit-jobs" id="limit-get-jobs" min="1" max="1000" required="true">
                        <br>
                        <button type="submit" id="submit-crawler-button" class="btn btn-info btn-block">Start</button>
                    </div>
                </form>
            </div>

            <!--End setting 1-->

            <div id="listJob" class="tabcontent">
            </div>
        </div>
    </div>
    <div id="id-loading" class="preloading" style="display: none">
        <div id="preload" class="preload-container">
            <span class="preload-icon rotating">
                <img src="images/loading.png" width="100" height="100"/>
            </span>
        </div>
    </div>

    <script src="js/control.js"></script>
</body>
<script>

    $("#example_filter").hide();
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    document.getElementById('crawler').style.display = "block";

    $(document).ready(function() {
        //append options to sources dropdown list
        var selectSource = document.getElementById('source-get-jobs');
        $.ajax({
            type: 'GET',
            url: 'process.php/sources',
            beforeSend: function() {
                //to do
                console.log("Starting to get option for form");
            },
            success: function(data) {
                //create option and add to select
                for (var i = 0; i < data.length; i++) {
                    var option = document.createElement('option');
                    option.value = data[i].source_id;
                    option.text = data[i].source_name;
                    selectSource.appendChild(option);
                }
            },
            error: function() {
                console.log("Network or api is Failed")
            }
        });
    });

    $(function() {
        //handle submit form event
        var form = $('form');
        form.submit(function(e) {
            e.preventDefault();
            $.ajax({
                type: 'POST',
                url: 'process.php/jobs',
                data: form.serialize(),
                beforeSend: function () {
                    console.log("start crawling...");
                    $('#preload').fadeIn('fast');
                    $(".preloading").css("display", "block");
                },
                success: function (data) {
                    $('#preload').fadeOut('fast');
                    reload = true;
                    alert("Lấy dữ liệu thành công!");
                },
                error: function (e) {
                    console.log(e);
                    $('#preload').fadeOut('fast');
                    reload = true;
                    alert("Gặp lỗi trong quá trình lấy dữ liệu!");
                }
            });
        });
    })
</script>

<?php
//autoload of classes
function __autoload($className) {
    $filename = $className . ".php";
    if (is_readable($filename)) {
        require $filename;
    }
}
?>
</html>
