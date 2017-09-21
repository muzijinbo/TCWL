<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>订单浏览</title>
    <link href="../css/themes/default/easyui.css" rel="stylesheet" />
    <link href="../css/themes/icon.css" rel="stylesheet" />
    <link href="../css/themes/color.css" rel="stylesheet" />
    <script src="../script/jquery.min.js"></script>
    <script src="../script/jquery.easyui.min.js"></script>
    <script src="../script/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
        $(function () {
        	 
            loadData();
            $("#btnSerach").click(function () {
            	var pars = {
                    //	BM:$("#BM").val()
                        //Date: $("#Date").val(),
                        OrderID:  $("#OrderID").val(),
                        UserID: $("#UserID").val(),
                        OrderState: $("#OrderState").val(),
                       
                                       
                    }; 
                loadData(pars);
            }); 
        });
         function loadData(pars) {
            $('#date').datagrid({
                url: 'UserCheckListData4.jsp',
                //width: 1000,
                //height: 400,
                width: ($(window).width()*0.90), 
                height:($(window).height()*0.99), 
               // fit:true,
                fitColumns: true, //列自适应
                nowrap: false,
                idField: 'Id',//主键列的列名
                loadMsg: '正在加载信息...',
                pagination: true,//是否有分页
                //singleSelect: false,//是否单行选择
                pageSize: 10,//每页多少条数据
                pageNumber: 1,//默认的页
                pageList: [10, 20, 30],
                queryParams: pars,//往后台传递参数
                columns: [[
                    { field: 'ck', title: '',checkbox: true },
                    { field: 'ID', title: '订单编号', align: 'center', width: 100 },
                    { field: 'Des', title: '订单描述', align: 'center', width: 100 },
                    { field: 'UserID', title: '用户编号', align: 'center', width: 100 },
                    { field: 'OrderState', title: '订单状态', align: 'center', width: 100 },
                    { field: 'Date', title: '创建日期', align: 'center', width: 100 },
                    {
                        field: 'operation', title: '操作', align: 'center', width: 100,
                        formatter: function (value, row, index) {
                            var str = "";
                            str += '<a  class="easyui-linkbutton c1" style="width:70px">查看</a>';                              
                            return str;
                        }
                    }   
                    
                    ]], 
            });
        } 
    </script>
    <style>
        body{
            font-size:12px;
            overflow-y:hidden;
        }
        input{
            width:100px;            
        }
        select{
            width:104px;
        }
        #sec{
            /*border:1px solid #0094ff;*/
            width:1000px;
            
        }
        #sec td{
            width:100px;
            height:20px;
            text-align:right
        }
    </style>
</head>
<body >

    <table id="date" >  
      
    </table>
</body>
</html>
