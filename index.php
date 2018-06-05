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
    <script src="js/control.js"></script>
</head>

<body>
    <?php
        include "helpers/DBHelper.php";
        header("content-type: text/html; charset=UTF-8");
        set_time_limit(2147483647);
        $crawler = new \crawler\JobCrawlerController();
    ?>

    <div class="tab">
        <button class="tablinks active" onclick="openCity(event, 'crawler')">Lấy danh sách công việc</button>
        <button class="tablinks" onclick="openCity(event, 'listJob')">Danh sách việc làm</button>
    </div>
    <div id="background">
        <div id="background-inside">
            <div id="crawler" class="tabcontent">
                <h2>Lấy danh sách công việc</h2>
                <br>
                <form name="get-jobs-form" action="process.php/jobs" method="post">
                    <div class="form-group" >
                        <label for="source-get-jobs">Lựa chọn nguồn lấy tin:</label>
                        <select class="form-control" name="source" id="source-get-jobs">
                            <option value="1">https://vieclam24h.vn/</option>
                            <option value="2">https://www.careerlink.vn/</option>
                            <option value="3">https://careerbuilder.vn/</option>
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
            <div id="id-loading" class="preloading" style="display: none">
                <div id="preload" class="preload-container text-center">
                    <span class="glyphicon glyphicon-repeat preload-icon rotating"></span>
                </div>
            </div>
        </div>
    </div>
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