<?xml version="1.0" encoding="euc-kr"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <HTML>
      <HEAD><TITLE>제품 내역입니다. </TITLE>
    </HEAD>	
      <BODY>       <BR/>
	  <P align="center"><font color="#FA4C79" size="6"> 핸드폰 리스트 </font></P>
        <BR/>
        <TABLE align="center" BORDER="1" cellpadding="5" cellspacing="2">
          <THEAD>
            <TR>
             <TH bgcolor="navy"><font color="white">모델명</font></TH>
             <TH bgcolor="navy"><font color="white">통신사</font></TH>
             <TH bgcolor="navy"><font color="white">구입형태</font></TH>
             <TH bgcolor="navy"><font color="white">제조사</font></TH>
             <TH bgcolor="navy"><font color="white">색상</font></TH>
             <TH bgcolor="navy"><font color="white">수량</font></TH>
             <TH bgcolor="navy"><font color="white">가격</font></TH>
            </TR>
          </THEAD>
          <TBODY>
            <xsl:apply-templates select = "/제품/핸드폰"/>
          </TBODY>
        </TABLE>
      </BODY>
    </HTML>
  </xsl:template>

  <xsl:template match = "/제품/핸드폰">
  <TR>
    <TD><xsl:value-of select="모델명"/></TD>
    <TD><xsl:value-of select="통신사"/></TD>
    <TD><xsl:value-of select="구입형태"/></TD>
    <TD><xsl:value-of select="제조사"/></TD>
    <TD><xsl:value-of select="색상"/></TD>
    <TD><xsl:value-of select="수량"/></TD>
    <TD><xsl:value-of select="가격"/></TD>
  </TR>
  </xsl:template>
</xsl:stylesheet>