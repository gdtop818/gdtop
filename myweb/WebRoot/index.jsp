<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="displaytag" prefix="display"%>
<%@ page import="java.util.*"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:useBean id="connDbBean" scope="page" class="dataconn.dataconn"/>
<link href="css/displaytag.css" rel="stylesheet" type="text/css" /> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>北大新闻</title>
</head>

<body>
<center>

<table width="980" cellspacing="0" cellpadding="0" border="0" background="images/pk_01.jpg" height="31">
  <tbody>
    <tr>
      <td class="t1">北京大学新闻中心主办</td>
    </tr>
  </tbody>
</table>

<table width="980" cellspacing="0" cellpadding="0" border="0" height="38">
<tbody>
<tr>
  <td width="400"><form method="post" action="http://pkunews.pku.edu.cn:8080/hlftiweb/search.jsp" target="_blank">
    <table width="980" cellspacing="0" cellpadding="0" border="0" background="images/pn_05.gif" height="4">
      <tbody>
        <tr>
          <td background="images/pn_05.gif"><img src="images/pn_05.gif" width="1" height="4"></td>
        </tr>
      </tbody>
    </table>
    <br>
    <table width="760" cellspacing="0" cellpadding="0" border="0" background="images/cc.jpg" height="800">
        <tbody>
      <tr>
        <td height="26"><table style="margin-left: 30px;" width="460" cellspacing="0" cellpadding="0" border="0">
            <tbody>
              <tr>
                <td class="menu" align="left"><!--begin 40960-0-5-->新闻纵横<!--end 40960-0-5--></td>
              </tr>
            </tbody>
          </table></td>
      </tr>
      <tr>
        <td valign="top" align="center"><br>
          
          <!--begin 40961-0-9-->
         
              <%      
	String sql="select * from dataTableName";         
	ResultSet rs=connDbBean.executeQuery(sql);   
	ResultSetMetaData rsmd = rs.getMetaData();
	java.util.List list=new ArrayList();             

	while ( rs.next() )  
{  
    Map map = new HashMap();  
      
    for ( int i = 1; i <= rsmd.getColumnCount(); i++ )  
    {  
        map.put(rsmd.getColumnName(i), rs.getObject(i));  
    }  
      
    list.add(map);  
}   
  
request.setAttribute("results", list);  
%>

<display:table name="results" class="tagtable" pagesize="3">

<display:column property="id" />  
<display:column property="title" href="detail.jsp" paramId="id" paramProperty="id" />  
<display:column property="unit" />
<display:column property="times" />
<display:column property="date" />

 <display:setProperty name="paging.banner.items_name" value="新闻" />  
    <display:setProperty name="paging.banner.placement" value="bottom" />  
    
    <display:setProperty name="paging.banner.all_items_found">  
    <p align=center class="pagebanner">共{0}条{2}</p>  
    </display:setProperty>  
      
    <display:setProperty name="paging.banner.some_items_found">  
    <p align=center class="pagebanner">共{0}条{1}, 本页显示第{2}到第{3}条{1}</p>  
    </display:setProperty>  
      
    <display:setProperty name="paging.banner.first">  
        <div align=center class="pagelinks">  
        [<a href="{1}">首页</a>/<a href="{2}">上一页</a>]  
        {0}  
        [<a href="{3}">下一页</a>/<a href="{4}">尾页</a>]  
        </div>  
    </display:setProperty>  
      
    <display:setProperty name="paging.banner.full">  
        <div align=center class="pagelinks">  
        [<a href="{1}">首页</a>/<a href="{2}">上一页</a>]  
        {0}  
        [<a href="{3}">下一页</a>/<a href="{4}">尾页</a>]  
        </div>  
    </display:setProperty>  
      
    <display:setProperty name="paging.banner.last">  
        <div align=center class="pagelinks">  
        [<a href="{1}">首页</a>/<a href="{2}">上一页</a>]  
        {0}  
        [<a href="{3}">下一页</a>/<a href="{4}">尾页</a>]  
        </div>  
    </display:setProperty>  

</display:table>

 <%
rs.close();  
connDbBean.closeStmt();     
connDbBean.closeConn();            
%>
        
          <div width="100%">
           
          </div>
          <!--end 40961-0-9--></td>
      </tr>
      <tr>
        <td valign="top" align="center" height="23"><img src="images/cc1.jpg" width="760" height="23"></td>
      </tr>
        </tbody>
    </table>
    <table style="margin-top: 10px;" width="980" cellspacing="0" cellpadding="0" border="0" background="images/pn_05.gif" height="4">
      <tbody>
        <tr>
          <td background="images/pn_05.gif"><img src="images/pn_05.gif" width="1" height="4"></td>
        </tr>
      </tbody>
    </table>
    <table class="bgg" width="980" cellspacing="0" cellpadding="0" border="0">
      <tbody>
        <tr>
          <td><table style="border-width: 0px 1px 1px; border-style: none solid solid; border-color: -moz-use-text-color rgb(222, 222, 222) rgb(222, 222, 222); -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; border-image: none; display: none;" width="980" cellspacing="1" cellpadding="0" border="0">
              <tbody>
                <tr>
                  <td class="bc12" align="center" height="30"><a href="http://pkunews.pku.edu.cn/bwjs/2008-04/25/content_121571.htm" class="bc12">本网介绍</a>　|　<a href="http://pkunews.pku.edu.cn/">设为首页</a>　|　<span title="北大新闻网" style="CURSOR: hand" onClick="window.external.addFavorite('http://pkunews.pku.edu.cn','北大新闻网')">加入收藏</span>　|　<a href="http://pkunews.pku.edu.cn/xndh/2008-04/25/content_121572.htm" class="bc12">校内电话</a>　|　<a href="http://pkunews.pku.edu.cn/cpyc/2008-04/25/content_121573.htm" class="bc12">诚聘英才</a>　|　<a href="http://pkunews.pku.edu.cn/xwtg/2008-04/25/content_121574.htm">新闻投稿</a></td>
                </tr>
              </tbody>
            </table>
            <table width="980" cellspacing="0" cellpadding="0" border="0">
              <tbody>
                <tr>
                  <td class="bc12" align="center" height="70">投稿地址 E-mail:xinwenzx@pku.edu.cn 新闻热线:010-62756381<br>
                    
                    <!--北京大学新闻中心 版权所有 建议使用1024*768分辨率 技术支持:<a href="http://www.founder.com.cn/" target="_blank" class="bc12">方正电子</a>--></td>
                </tr>
              </tbody>
            </table></td>
        </tr>
      </tbody>
    </table>
    </center>
</body>
</html>