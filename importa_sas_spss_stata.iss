Sub Main
	IgnoreWarning(True)
	Client.RunPython("C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Macros.ILB\importa_sas_spss_stata.py")
	Call TextImport()	'C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\sas1.csv
	Call TextImport1()	'C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\stata1.csv
	Call TextImport2()	'C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\spss1.csv
	Client.RefreshFileExplorer
End Sub


' Archivo - Asistente de importaci�n: Texto delimitado
Function TextImport
	dbName = "sas1.IMD"
	Client.ImportDelimFile "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\sas1.csv", dbName, FALSE, "", "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Definiciones de importaci�n.ILB\sas1.RDF", TRUE
	Client.OpenDatabase (dbName)
End Function


' Archivo - Asistente de importaci�n: Texto delimitado
Function TextImport1
	dbName = "stata1.IMD"
	Client.ImportDelimFile "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\stata1.csv", dbName, FALSE, "", "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Definiciones de importaci�n.ILB\stata1.RDF", TRUE
	Client.OpenDatabase (dbName)
End Function

' Archivo - Asistente de importaci�n: Texto delimitado
Function TextImport2
	dbName = "spss1.IMD"
	Client.ImportDelimFile "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Archivos fuente.ILB\spss1.csv", dbName, FALSE, "", "C:\Users\Intel\Documents\Mis documentos IDEA\Samples\Definiciones de importaci�n.ILB\spss1.RDF", TRUE
	Client.OpenDatabase (dbName)
End Function

