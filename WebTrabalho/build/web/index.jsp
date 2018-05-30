<%-- 
    Document   : index
    Created on : 29/05/2018, 19:40:17
    Author     : m91223
--%>

<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.util.List"%>
<%@page import="br.unisc.Info"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Info windows</title>
        <style>
            /* Always set the map height explicitly to define the size of the div
             * element that contains the map. */
            #map {
                height: 90%;
            }
            /* Optional: Makes the sample page fill the window. */
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }
        </style>
    </head>

    <body>

        <div id="map"></div>
        <script>

            // This example displays a marker at the center of Australia.
            // When the user clicks the marker, an info window opens.
            <%--
                List<Info> infos = (List<Info>) request.getAttribute("lista");
                for (Info i : infos) {
                    Blob image = i.getPhoto();
                    byte[] imgData = image.getBytes(1, (int) image.length());
                    String encode = Base64.encodeBase64String(imgData);
                    String latitude = i.getLatitude();
                    String longitude = i.getLongitude();
            --%>
            function initMap() {
                var uluru = {lat: -29.699248, lng: -52.4386304};
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 10,
                    center: uluru
                });

                var contentString = '<div id="content">' +
                        '<div id="siteNotice">' +
                        '</div>' +
                        '<h1 id="firstHeading" class="firstHeading">Uluru</h1>' +
                        '<div id="bodyContent">' +
                        '<p><b>Uluru</b>, also referred to as <b>Ayers Rock</b>, is a large ' +
                        'sandstone rock formation in the southern part of the ' +
                        'Northern Territory, central Australia. It lies 335&#160;km (208&#160;mi) ' +
                        'south west of the nearest large town, Alice Springs; 450&#160;km ' +
                        '(280&#160;mi) by road. Kata Tjuta and Uluru are the two major ' +
                        'features of the Uluru - Kata Tjuta National Park. Uluru is ' +
                        'sacred to the Pitjantjatjara and Yankunytjatjara, the ' +
                        'Aboriginal people of the area. It has many springs, waterholes, ' +
                        'rock caves and ancient paintings. Uluru is listed as a World ' +
                        'Heritage Site.</p>' +
                        '<p>Attribution: Uluru, <a href="https://en.wikipedia.org/w/index.php?title=Uluru&oldid=297882194">' +
                        'https://en.wikipedia.org/w/index.php?title=Uluru</a> ' +
                        '(last visited June 22, 2009).</p>' +
                        '</div>' +
                        '</div>';

                var infowindow = new google.maps.InfoWindow({
                    content: contentString
                });

                var marker = new google.maps.Marker({
                    position: uluru,
                    map: map,
                    title: 'Uluru (Ayers Rock)'
                });
                marker.addListener('click', function () {
                    infowindow.open(map, marker);
                });
            }
        </script>
        <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBjTT4w_P9QkdbkIzq4fAhItd6CL-QP8zA&callback=initMap">
        </script>


        <form action="Gerente" method="get">
            <input type="submit" value="Listar" name="op">
        </form>
        ${jj}

    </body>
</html>
