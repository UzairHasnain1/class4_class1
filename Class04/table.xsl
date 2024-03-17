<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">

<html>

<head>

<title>User Data</title>

<style type="text/css">

table{

    margin: 40px auto 40px auto;
    border: 1px solid;
    width: 800px;

}

th{
    background-color: lightgray;
}

td{
    border: solid lightgray 1px;
    text-align:center;
}

</style>

</head>

<body>

<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Age</th>
<th>Salary</th>
</tr>
<xsl:for-each select="personData/user">
<tr>
    <td><xsl:value-of select="@id"  /></td>
    <td><xsl:value-of select="name"  /></td>
    <td><xsl:value-of select="email"  /></td>
    <td><xsl:value-of select="age"  /></td>
    <td><xsl:value-of select="salary"  /></td>
</tr>
</xsl:for-each>

</table>

</body>

</html>

</xsl:template>
</xsl:stylesheet>