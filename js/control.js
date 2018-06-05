function openCity(evt, tabName) {
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
        on_loadListSettingInfo();
    }
    else if (tabName === 'listJob') {
        on_loadListJob();
    }
}

function startCrawl() {
    $('#preload').fadeIn('fast');
    $(".preloading").css("display", "block");
    $('#preload').delay(10000).fadeOut('fast');
}

function saveInfo() {

}

function on_loadListSettingInfo() {
    
}

function on_loadListJob(){
    var arrListJob=[
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"IT", linhvuc:"IT", diaiem:"hanoi", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"},
        {congviec:"SEO", linhvuc:"SEO", diaiem:"HCM", congty:"mobiwork", mucluong:"500$",hannopHS:"20/4/2018"}
    ];
    if(arrListJob.length>0){
        var html ="";
        html+='<table id="example" class="display" style="table-layout:fixed;">';
        html+='            <thead>';
        html+='                <tr>';
        html+='                    <th>Job name</th>';
        html+='                    <th>Field</th>';
        html+='                    <th>location</th>';
        html+='                    <th>Company</th>';
        html+='                    <th>Salary</th>';
        html+='                    <th>Show detail</th>';
        html+='                </tr>';
        html+='            </thead>';
        html+='            <tbody id="listJob-tbody">';
        for(var i=0;i<arrListJob.length;i++){
            html+='<tr onclick="on_detailJob()">'
            html+='<td>'+arrListJob[i].congviec+'</td>'
            html+='<td>'+arrListJob[i].linhvuc+'</td>'
            html+='<td>'+arrListJob[i].diaiem+'</td>'
            html+='<td>'+arrListJob[i].congty+'</td>'
            html+='<td>'+arrListJob[i].mucluong+'</td>'
            html+='<td>'+arrListJob[i].hannopHS+'</td>'
            html+='</tr>'
        }
        html+='            </tbody>';
        html+='            <tfoot>';
        html+='                <tr>';
        html+='                    <th>Job name</th>';
        html+='                    <th>Field</th>';
        html+='                    <th>location</th>';
        html+='                    <th>Company</th>';
        html+='                    <th>Salary</th>';
        html+='                    <th>Show detail</th>';
        html+='                </tr>';
        html+='            </tfoot>';
        html+='        </table>';
        $("#listJob").html(html);

        $(document).ready(function() {
            // Setup - add a text input to each footer cell
            $('#example tfoot th').each( function () {
                var title = $(this).text();
                $(this).html( '<input type="text" placeholder="Search '+title+'" />' );
            } );
         
            // DataTable
            var table = $('#example').DataTable();
         
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
        } );
    }


}

function on_detailJob() {

}