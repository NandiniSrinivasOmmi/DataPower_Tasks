<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<EmployeeList>
			<xsl:for-each select = "//*[ local-name()='array' and @name='Employee']/*[local-name()='object']">
                                
				<Employee>
					<FirstName>
						<xsl:value-of select = "./*[local-name()='string'and @name='FName']" />
						</FirstName>
						<LastName>
							<xsl:value-of select = "./*[local-name()='string' and @name='LName']"/>
						</LastName>
						<EmployeeID>
							<xsl:value-of select = "./*[local-name()='number' and @name='EMPID']"/>
						</EmployeeID>
				</Employee>
				</xsl:for-each>
				
                     </EmployeeList>
		</xsl:template>
	</xsl:stylesheet>