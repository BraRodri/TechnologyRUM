<%-- 
    Document   : perfil
    Created on : 25 oct. 2020, 13:15:35
    Author     : Braro
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="FACADE.Facade"%>

<%
    Facade faca = new Facade();

    String idPersona = (String) session.getAttribute("parametroCodigo");
    if (idPersona != null) {

    ArrayList<String> datoSesion = faca.obtenerDatosPersona(idPersona);
    String dato = datoSesion.toString().replace("[", "").replace("]", "");
    String[] datos = dato.split("/");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Header -->
    <jsp:include page="../content/headerAdmin.jsp" >
        <jsp:param name="titlePage" value="Perfil - Technology RUM" />
    </jsp:include>
    <!-- end of Header -->

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <jsp:include page="../content/sidebarAdmin.jsp" />
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <jsp:include page="../content/topbarAdmin.jsp" >
                        <jsp:param name="idPersona" value="<%=idPersona%>" />
                    </jsp:include>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid mb-5">

                        <div class="page-header header-filter" data-parallax="true" style="background: #3A4348;"></div>
                        <div class="main main-raised">
                            <div class="profile-content">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-6 ml-auto mr-auto">
                                            <div class="profile">
                                                <div class="avatar">
                                                    <img src="../../assets/img/avatar/<%=datos[6] %>" alt="Circle Image" class="img-raised rounded-circle img-fluid">
                                                </div>
                                                <div class="name">
                                                    <h3 class="title"><%=datos[1] %></h3>
                                                    <h6><%=datos[7] %></h6>
                                                    <a href="#" class="btn btn-just-icon btn-link btn-dribbble"><i class="fab fa-dribbble"></i></a>
                                                    <a href="#" class="btn btn-just-icon btn-link btn-twitter"><i class="fab fa-twitter"></i></a>
                                                    <a href="#" class="btn btn-just-icon btn-link btn-pinterest"><i class="fab fa-pinterest"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="description text-center text-dark">
                                        <p class="mb-4">
                                            Información de la Empresa <br><br>
                                            Telefono: <%=datos[3] %> <br>
                                            Correo Electronico:: <%=datos[4] %>
                                        </p>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>

                    <%
                        if (request.getParameter("mens") != null) { %>
                    <input type="text" name="obtInfo" id="obtInfo" value="<%out.println(request.getParameter("mens")); %>" style="visibility: hidden"> <%
                        }
                    %>

                </div>

                <!-- Footer -->
                <%@include file="../content/footerAdmin.jsp" %>
                <!-- End of Footer -->

            </div>

        </div>

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <%@include file="../content/modal_CerrarSesion.jsp" %>

        <!-- Bootstrap core JavaScript-->
        <%@include file="../content/scriptsAdmin.jsp" %>

</html>

<%
    } else {
        response.sendRedirect("../../index.jsp");
    }
%>
