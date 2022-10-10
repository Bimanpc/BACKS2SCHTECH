Function GeoIP( myHost )
    ' This function returns an array with the IP address, host name, city name,
    ' country name and country code for a specified IP address or host name.
    '
    ' Argument:
    ' [string] IP address or host name
    '
    ' Returns:
    ' [array of string] host name, IP address, city, country, country code
    '
    ' Required software:
    ' MaxMind's GeoIP* database:   http://www.maxmind.com/app/installation?city=1
    ' MaxMind's GeoIP COM wrapper: https://github.com/maxmind/geoip-api-mscom
    ' System Scripting Runtime:    http://www.netal.com/ssr.htm

    Dim objGeoIP, objDNS, objRE, strDNS, strHost, strIP

    Set objDNS   = CreateObject( "SScripting.IPNetwork" )
    Set objGeoIP = CreateObject( "GeoIPCOMEx.GeoIPEx" )
    Set objRE    = New RegExp

    ' Resolve the specified host name or IP address
    strDNS = objDNS.DNSLookup( myHost )

    ' Check if the argument is a host name or an IP address
    objRE.Pattern = "ˆ[1-9][0-9]{0,2}(\.[0-9]{1,2}){3}$"
    If objRE.Test( myHost ) Then
        strIP   = myHost
        strHost = strDNS
    Else
        strIP   = strDNS
        strHost = myHost
    End If

    With objGeoIP
        ' Modify the path if you installed the GeoIP* database elsewhere
        .set_db_path "C:\Program Files\GeoIP\"
        .find_by_addr strIP
        GeoIP = Array( strHost, strIP, .city, .country_name, .country_code )
    End With

    Set objDNS   = Nothing
    Set objGeoIP = Nothing
    Set objRE    = Nothing
End Function