<?xml version="1.0" encoding="UTF-8"?><localEntry xmlns="http://ws.apache.org/ns/synapse" key="convert.xslt">
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:firstElementOfTheInput="Employee" 
	xmlns:notXSLTCompatible="false" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:own="http://ownfunction.org" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" extension-element-prefixes="xs own notXSLTCompatible firstElementOfTheInput" version="2.0">
    <xsl:template match="/">
        <Employee>
			<ID>
				<xsl:value-of select="number( Employee/ID )"/>
			</ID>
			<Name>
				<xsl:value-of select="concat(Employee/FirstName,' ',Employee/LastName)"/>
			</Name>
			<Address1>
				<xsl:value-of select="substring-before(Employee/Address,',')"/>
			</Address1>
			<Address2>
				<xsl:value-of select="substring-after(Employee/Address,',')"/>
			</Address2>
        </Employee>
    </xsl:template>
</xsl:stylesheet>