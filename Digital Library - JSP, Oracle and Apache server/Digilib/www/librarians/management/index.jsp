﻿<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="digilib.web.Format" errorPage="/errorshandler.jsp" %>
<%
	response.setDateHeader("Expires", -1);
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma", "no-cache");
%>
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/2 Cols Base.dwt.jsp" codeOutsideHTMLIsLocked="false" -->
<head>
<!-- InstanceBeginEditable name="doctitle" -->
<title>D I G I L I B &gt; Thủ thư &gt; Biên mục tài liệu</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<link href="/digilib.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="760" height="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="150">
      <table width="760" height="150" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="150" rowspan="3" align="center" valign="middle"><img src="/images/logo.gif" width="150" height="150" /></td>
          <td height="75" colspan="2">
            <table width="610" height="75" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td align="center" valign="middle">
                  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="500" height="75">
                    <param name="movie" value="/images/banner.swf" />
                     
                    <param name="quality" value="high" /><param name="SCALE" value="noborder">
                    <embed src="/images/banner.swf" width="500" height="75" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" scale="noborder"></embed></object>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td height="25" colspan="2">
            <table width="100%" border="0" cellpadding="4" cellspacing="0" class="navigator">
              <tr align="center">
                <td><a href="/">digilib.com</a></td>
                <td>•</td>
                <td><a href="/search.jsp">Search</a></td>
                <td>•</td>
                <td><a href="/members/">Member</a></td>
                <td>•</td>
                <td><a href="/librarians/">Librarian</a></td>
                <td>•</td>
                <td><a href="/feedback.jsp">Feedback</a></td>
                <td>•</td>
                <td><a href="/contactus.jsp">Contact</a></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td width="300" height="50">
            <table width="300" height="50" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><!-- InstanceBeginEditable name="HeaderImage" --><img src="/images/header_librarians.gif" width="300" height="50" /><!-- InstanceEndEditable --></td>
              </tr>
            </table>
          </td>
          <td width="310">
            <table width="310" height="50" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td align="right"><!-- InstanceBeginEditable name="Validation" --><!-- #BeginLibraryItem "/Library/Librarian's Validation.lbi" -->
                  <jsp:useBean id="curLibrarian" scope="session" class="digilib.web.Librarian"/>
<%
	if (curLibrarian.isValidated()) {
%>				  
                  <form name="LogoutForm" id="LogoutForm" method="post" action="/process/librarians.jsp?action=logout">
                    <table width="310" border="0" cellspacing="5" cellpadding="0">
                      <tr>
                        <td align="right">Thủ thư <strong>
                          <jsp:getProperty name="curLibrarian" property="Name" />
                          </strong></td><td width="75" align="center">
                          <input name="Logout" type="submit" class="button" id="Logout" value="Thoát" />
                        </td></tr>
                    </table></form><%
	} else {
		response.sendRedirect("/librarians/?src=" + request.getRequestURI());
	}
%>				  
                                    <!-- #EndLibraryItem --><!-- InstanceEndEditable --></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="100%" valign="top">
      <table width="760" height="100%" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="160" height="100%" valign="top">
            <table width="160" height="100%" border="0" cellpadding="0" cellspacing="5">
              <tr>
                <td align="center" valign="top">
                  <!-- InstanceBeginEditable name="LeftMenu" --> 
                  <table width="150" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right">&nbsp;</td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right">&nbsp;</td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right">&nbsp;</td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td><img src="/images/action_leftcurve.gif" width="10" height="20" /></td>
                      <td colspan="2" align="center" bgcolor="#c2a366" class="headline">Thủ 
                        thư</td>
                      <td valign="bottom"><img src="/images/action_rightcurve.gif" width="10" height="20" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right"><a href="/librarians/profile.jsp">Hồ sơ 
                        cá nhân</a></td>
                      <td>&nbsp;</td>
                      <td valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="10"><img src="/images/action_leftcurve.gif" width="10" height="20" /></td>
                      <td colspan="2" align="center" bgcolor="#c2a366" class="headline">Quản 
                        lý thư viện</td>
                      <td width="10" valign="bottom"><img src="/images/action_rightcurve.gif" width="10" height="20" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/management/registrations.jsp">Cấp 
                        thẻ độc giả</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/management/members.jsp">Danh 
                        sách Độc giả</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/management/membergroups.jsp">Danh 
                        sách Nhóm độc giả</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/management/librarians.jsp">Danh 
                        sách Thủ thư</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right"><a href="/librarians/management/loans.jsp">Cho 
                        mượn tài liệu</a></td>
                      <td>&nbsp;</td>
                      <td valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right"><a href="/librarians/management/confirmloans.jsp">Phiếu 
                        mượn đã lập</a></td>
                      <td>&nbsp;</td>
                      <td valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right"><a href="/librarians/management/returns.jsp">Thu 
                        hồi tài liệu</a></td>
                      <td>&nbsp;</td>
                      <td valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td align="right"><a href="/librarians/management/confirmreturns.jsp">Phiếu 
                        trả đã lập</a></td>
                      <td>&nbsp;</td>
                      <td valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/management/dayend.jsp">Xử 
                        lý cuối ngày</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right">&nbsp;</td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="10"><img src="/images/action_leftcurve.gif" width="10" height="20" /></td>
                      <td colspan="2" align="center" bgcolor="#c2a366" class="headline">Biên 
                        mục tài liệu</td>
                      <td width="10" valign="bottom"><img src="/images/action_rightcurve.gif" width="10" height="20" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/cataloging/">Biên 
                        mục tài liệu</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right">&nbsp;</td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom">&nbsp;</td>
                    </tr>
                    <tr> 
                      <td width="10"><img src="/images/action_leftcurve.gif" width="10" height="20" /></td>
                      <td colspan="2" align="center" bgcolor="#c2a366" class="headline">Báo 
                        cáo</td>
                      <td width="10" valign="bottom"><img src="/images/action_rightcurve.gif" width="10" height="20" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/reports/managements.jsp">Các 
                        báo cáo quản lý</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr> 
                      <td width="10">&nbsp;</td>
                      <td width="125" align="right"><a href="/librarians/reports/labeling.jsp">In 
                        nhãn tài liệu</a></td>
                      <td width="5">&nbsp;</td>
                      <td width="10" valign="bottom"><img src="/images/leftmenu_bullet.gif" width="10" height="10" /></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td align="right">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td valign="bottom">&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td align="right">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td valign="bottom">&nbsp;</td>
                    </tr>
                  </table>
                  <!-- InstanceEndEditable --></td>
              </tr>
            </table>
          </td>
          <td width="600" height="100%" valign="top">
            <table width="600" height="100%" border="0" cellpadding="0" cellspacing="5">
              <tr>
                <td width="400" valign="top"><!-- InstanceBeginEditable name="LeftContent" --> 
                  <table width="400" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td colspan="2"><img src="/images/librarians_top_r1_c1.jpg" width="350" height="80" /></td>
                    </tr>
                    <tr> 
                      <td width="200"><img src="/images/librarians_top_r2_c1.jpg" width="200" height="55" /></td>
                      <td width="200">&nbsp;</td>
                    </tr>
                  </table>
                  <br />
                  <table width="400" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td width="10"><img src="/images/lefttop_curve.gif" width="10" height="20" /></td>
                      <td width="240" bgcolor="#663300" class="headline">Quản 
                        lý thư viện</td>
                      <td width="150"><img src="/images/headline_trailer.gif" width="150" height="20" /></td>
                    </tr>
                    <tr> 
                      <td colspan="3"><table width="400" border="0" cellspacing="5" cellpadding="0">
                          <tr> 
                            <td width="5" valign="baseline"><img src="/images/arrow_right.gif" width="7" height="7" /></td>
                            <td width="380"><strong><a href="/librarians/management/registrations.jsp">Cấp 
                              thẻ độc giả<br />
                              </a></strong><em>Xử lý cấp thẻ cho các yêu cầu đã 
                              đăng ký</em></td>
                          </tr>
                          <tr> 
                            <td width="5" valign="baseline"><img src="/images/arrow_right.gif" width="7" height="7" /></td>
                            <td width="380"><strong><a href="/librarians/management/members.jsp">Danh 
                              sách độc giả</a><br />
                              </strong> <em>Danh sách các độc giả hiện tại của 
                              thư viện</em></td>
                          </tr>
                          <tr> 
                            <td width="5" valign="baseline"><img src="/images/arrow_right.gif" width="7" height="7" /></td>
                            <td width="380"><strong><a href="/librarians/management/membergroups.jsp">Danh 
                              sách nhóm độc giả</a><br />
                              </strong> <em>Danh sách các nhóm độc giả của thư 
                              viện</em></td>
                          </tr>
                          <tr> 
                            <td width="5" valign="baseline"><img src="/images/arrow_right.gif" width="7" height="7" /></td>
                            <td width="380"><strong><a href="/librarians/cataloging/classifications.jsp">Danh 
                              sách thủ thư</a></strong><br /> <em>Danh sách các 
                              thủ thư</em></td>
                          </tr>
                          <tr> 
                            <td width="5" valign="baseline"><img src="/images/arrow_right.gif" width="7" height="7" /></td>
                            <td width="380"><strong><a href="/librarians/cataloging/imexport.jsp">Cho 
                              mượn tài liệu</a></strong><br /> <em>Xử lý chấp 
                              thuận các yêu cầu mượn hợp lệ. Lập phiếu mượn</em></td>
                          </tr>
                          <tr>
                            <td valign="baseline"><img src="/images/arrow_right.gif" width="7" height="7" /></td>
                            <td><strong><a href="/librarians/management/confirmloans.jsp">Phiếu 
                              mượn đã lập</a><br />
                              </strong> <em>Các phiếu mượn đã lập</em></td>
                          </tr>
                          <tr>
                            <td valign="baseline"><img src="/images/arrow_right.gif" width="7" height="7" /></td>
                            <td><strong><a href="/librarians/management/returns.jsp">Thu 
                              hồi tài liệu</a></strong><br />
                              <em>Thu hồi các tài liệu do độc giả trả</em></td>
                          </tr>
                          <tr>
                            <td valign="baseline"><img src="/images/arrow_right.gif" width="7" height="7" /></td>
                            <td><a href="/librarians/management/confirmreturns.jsp"><strong>Phiếu 
                              trả đã lập</strong></a><br />
                              <em>Các phiếu trả tài liệu đã lập</em></td>
                          </tr>
                          <tr>
                            <td valign="baseline"><img src="/images/arrow_right.gif" width="7" height="7" /></td>
                            <td><strong><a href="/librarians/management/dayend.jsp">Xử 
                              lý cuối ngày</a></strong><br />
                              <em>Xử lý các nghiệp vụ hằng ngày, như loại những 
                              yêu cầu hết hạn hợp lệ, ngưng hoạt động một số thẻ 
                              mượn quá hạn</em></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table>
                  <!-- InstanceEndEditable --></td>
                <td width="185" align="center" valign="top"><!-- InstanceBeginEditable name="RightContent" --><!-- InstanceEndEditable --></td>
              </tr>
            </table>
            </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td height="25">
      <table width="100%" border="0" cellpadding="0" cellspacing="5" class="copyright">
        <tr>
          <td>&copy; 2002 - 2003 Ami Company Limited - - Vuong Phuc Dinh (0540377)</td>
        </tr>
      </table>
    </td>
  </tr>
</table>

</body>
<!-- InstanceEnd --></html>
