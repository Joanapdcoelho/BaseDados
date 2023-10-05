<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="xml" indent="yes"/>	

	<xsl:template match="/">

		<div class="card mb-3" style="max-width: 540px;">
			<div class="row g-0">

				<div class="col-md-8">
					<div class="card-body">						

						<xsl:for-each select="NewDataSet/Table">

							<div class="col-md-4">
								
							</div>

							<p class="card-text">

								<td>
									<b>Nº: </b>
									<xsl:value-of select="num_formando"/>
									<br/>
								</td>
								<td >
									<b>Nome: </b>
									<xsl:value-of select="nome"/>
									<br/>
								</td>
								<td >
									<b>Morada: </b>
									<xsl:value-of select="morada"/>
									<br/>
								</td>
								<td >
									<b>E-mail: </b>
									<xsl:value-of select="email"/>
									<br/>
								</td>
								<td >
									<b>Telemóvel: </b>
									<xsl:value-of select="telemovel"/>
									<br/>
								</td>

								<td >
									<b>Curso: </b>
									<xsl:value-of select="curso"/>
									<br/>
								</td>
							</p>

							<hr></hr>
						</xsl:for-each>
					</div>
				</div>
			</div>
		</div>

	</xsl:template>
</xsl:stylesheet>
