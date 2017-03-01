<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<header>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/angular.min.js"></script>
<script type="text/javascript" src="js/jqPaginator.js"></script>
<script type="text/javascript">
    $.jqPaginator('#pagination1', {
        totalPages: 100,
        visiblePages: 10,
        currentPage: 3,
        onPageChange: function (num, type) {
            $('#p1').text(type + '：' + num);
        }
    });
    $.jqPaginator('#pagination2', {
        totalPages: 100,
        visiblePages: 10,
        currentPage: 3,
        prev: '<li class="prev"><a href="javascript:;">Previous</a></li>',
        next: '<li class="next"><a href="javascript:;">Next</a></li>',
        page: '<li class="page"><a href="javascript:;">{{page}}</a></li>',
        onPageChange: function (num, type) {
            $('#p2').text(type + '：' + num);
        }
    });
</script>
</header>
<body>
<h2>Hello World!</h2>
<a href="/page/toPage">toPageList</a>

<p id="p1"></p>
    <ul class="pagination" id="pagination1"></ul>
    <p id="p2"></p>
    <ul class="pagination" id="pagination2"></ul>


</body>
</html>
