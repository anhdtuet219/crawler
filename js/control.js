//check time to reload list jobs
var reload = true;

function changeTab(evt, tabName) {
    $("#example_filter").hide();
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
    if (tabName === 'crawler') {

    }
    else if (tabName === 'listJob') {
        on_loadListJob();
    }
}

function on_loadListJob(){
    console.log(reload)
    if (reload) {
        reload = false;
        $.ajax({
            type: 'GET',
            url: 'process.php/jobs',
            beforeSend: function () {
                console.log("start load list...");
                $('#preload').fadeIn('fast');
                $(".preloading").css("display", "block");
            },
            success: function (data) {
                $('#preload').fadeOut('fast');
                loadData(data);
            },
            error: function (e) {
                console.log(e);
                $('#preload').fadeOut('fast');
                alert("Gặp lỗi trong quá trình lấy dữ liệu!");
            }
        });
    }

}

function loadDataOneLine(data, i) {
    var html = "";
    html+='<tr>'
    html+='<td>'+data[i].job_name+'</td>'
    html+='<td>'+data[i].job_type+'</td>'
    html+='<td>'+data[i].job_location+'</td>'
    html+='<td>'+data[i].job_company+'</td>'
    html+='<td>'+data[i].job_salary+'</td>'
    html+='<td><a target="_blank" href="' + data[i].job_link + '">Xem chi tiết</a></td>';
    var pos = data[i].source_id;
    switch (pos) {
        case '1':
            html+='<td>https://vieclam24h.vn/</td>';
            break;
        case '2':
            html+='<td>https://careerlink.vn/</td>';
            break;
        case '3':
            html+='<td>https://careerbuilder.vn/</td>';
            break;
    }

    html+='</tr>';
    return html;
}

function loadData(data) {
    if(data.length > 0){
        var html ="";
        html+='<table id="example" class="display" style="table-layout:fixed;">';
        html+='            <thead>';
        html+='                <tr>';
        html+='                    <th>Vị trí</th>';
        html+='                    <th>Ngành nghề</th>';
        html+='                    <th>Địa điểm</th>';
        html+='                    <th>Công ty</th>';
        html+='                    <th>Mức lương</th>';
        html+='                    <th>Xem chi tiết</th>';
        html+='                    <th>Nguồn</th>';
        html+='                </tr>';
        html+='            </thead>';
        html+='            <tbody id="listJob-tbody">';
        for(var i = 0; i<data.length; i++){
            html += loadDataOneLine(data, i);
        }
        html+='            </tbody>';
        html+='            <tfoot>';
        html+='                <tr>';
        html+='                    <th>Vị trí</th>';
        html+='                    <th>Ngành nghề</th>';
        html+='                    <th>Địa điểm</th>';
        html+='                    <th>Công ty</th>';
        html+='                    <th>Mức lương</th>';
        html+='                    <th></th>';
        html+='                    <th>Nguồn</th>';
        html+='                </tr>';
        html+='            </tfoot>';
        html+='        </table>';
        $("#listJob").html(html);

        $(document).ready(function() {
            // Setup - add a text input to each footer cell
            $('#example tfoot th').each( function (index) {
                if (index !== 5) {
                    var title = $(this).text();
                    $(this).html( '<input type="text" placeholder="Tìm kiếm '+title+'" />' );
                }
            } );

            // DataTable
            var table = $('#example').DataTable({
                "order": [],
                "language": {
                    "lengthMenu": "Hiển thị _MENU_ công việc trong một trang",
                    "zeroRecords": "Không có dữ liệu",
                    "info": "Trang _PAGE_/_PAGES_",
                    "infoEmpty": "Không có dữ liệu",
                    "infoFiltered": "(Lọc từ _MAX_ tổng bản ghi)",
                    "paginate": {
                        "next":       "Trang tiếp",
                        "previous":   "Trang trước",
                        "first":      "Trang đầu",
                        "last":       "Trang cuối"
                    },
                },
                rowReorder: {
                    selector: 'td:nth-child(2)'
                },
                responsive: true,
                "scrollX": true,
                "scrollXollapse": true,
            });

            if ($.fn.DataTable.isDataTable( '#example' )) {
                table.columns.adjust();
            }

            // Apply the search
            table.columns().every( function () {
                var that = this;

                $( 'input', this.footer() ).on( 'keyup change', function () {
                    if ( that.search() !== this.value ) {
                        that
                            .search( this.value )
                            .draw();
                    }
                } );
            } );

            $('#example_filter').css("display", "none");
            // $('#example_info').css("display", "none");


        } );
    }
}
