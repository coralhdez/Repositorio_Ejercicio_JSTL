
<!--1� IMPORTAR LIBRER�A DE JSTL CORE-->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Trabajando con JSTL </title>
    </head>
    <body>
        <h1>JSTL CORE</h1>
        <c:set var="nombre" value="Pedro"/>
        <!-- MOSTRAMOS EL VALOR DE LA VARIABLE -->
        Variable nombre: <c:out value="${nombre}" />
        <br/>
        <br/>
        Variable con c�digo HTML: 
        <c:out value="<h4>Hola clase!</h4>" escapeXml="false" />
        <!-- A�ADIMOS UN FLAG PARA INCLUIR C�DIGO CONDICIONAL -->
        <c:set var="flag" value="true" />
        
        <c:if test="${flag}">
            El flag es verdadero
        </c:if>
        <!--COMPROBAMOS EL VALOR DEL PAR�METOR OPCION QUE NOS HAN APSADO POR URL-->
        <c:if test="${param.opcion != null}">
            <c:choose>
                <c:when test="${param.opcion == 1}">
                    </br>
                    La opci�n seleccionada apor el usuario es la 1.
                </c:when>
                <c:when test="${param.opcion == 2}">
                    </br>
                    La opci�n seleccionada apor el usuario es la 2.
                </c:when>
                <c:otherwise>
                    </br>
                    Opci�n proporcionada desconocida.
                </c:otherwise>    
            </c:choose>
        </c:if>
                    <!--VAMOS A TRABAJAR CON UN WARRY DE ELEMENTOS -->
        <%
            String nombres[] = {"Luis", "Marta", "Luc�a"};
            request.setAttribute("nombres", nombres);
        %>   
        </br><!-- comment -->
        <!--LISTAMOS LOS NOMBRES -->
        <ul>
            <c:forEach var="persona" items="${nombres}">
                <li>Nombre: ${persona}</li>
            </c:forEach>
                
        </ul>
    </body>
</html>
