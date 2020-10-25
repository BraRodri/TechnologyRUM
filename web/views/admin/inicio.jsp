<%-- 
    Document   : inicio
    Created on : 24 oct. 2020, 19:52:13
    Author     : Braro
--%>

<%@page import="FACADE.Facade"%>
<%@page import="java.util.ArrayList"%>

<%
    Facade faca = new Facade();

    String idPersona = (String) session.getAttribute("parametroCodigo");
    if (idPersona != null) {

        ArrayList<String> cantidadMineros = faca.obtenerCantidadMineros();
        String cantMineros = cantidadMineros.toString().replace("[", "").replace("]", "").replace("/", "");

        ArrayList<String> cantidadActivosMineros = faca.obtenerCantidadActivosMineros();
        String cantActMineros = cantidadActivosMineros.toString().replace("[", "").replace("]", "").replace("/", "");

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Header -->
    <jsp:include page="../content/headerAdmin.jsp" >
        <jsp:param name="titlePage" value="Administrador - Technology RUM" />
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
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Bienvenido Administrador</h1>
                        </div>

                        <!-- Content Row -->
                        <div class="row">

                            <div class="col-xl-4 col-md-6 mb-4">
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Mineros Registrados</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">+ <%=cantMineros%></div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-user-friends fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4 col-md-6 mb-4">
                                <div class="card border-left-dark shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-dark text-uppercase mb-1">Puntos de Control (Activos)</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">10</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-chalkboard-teacher fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-4 col-md-6 mb-4">
                                <div class="card border-left-warning shadow h-100 py-2">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Mineros Activos</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800"><%=cantActMineros%></div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-user-check fa-2x text-gray-300"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- Content Row -->
                        <div class="row">

                            <div class="col-12 col-lg-6">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-dark">Gestion de los Mineros</h6>
                                    </div>
                                    <div class="card-body">
                                        <p>Gestion de los Mineros de tu Empresa.</p>
                                        <p class="mb-0">
                                            Puedes agregar, actualizar datos, buscar y eliminar los mineros registrados en tu empresa.
                                        </p>
                                        <div class="text-right">
                                            <a href="gestionMineros.jsp" class="btn btn-warning mt-3">Ir al modulo</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <%@include file="../content/footerAdmin.jsp" %>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <%@include file="../content/modal_CerrarSesion.jsp" %>

        <!-- Bootstrap core JavaScript-->
        <%@include file="../content/scriptsAdmin.jsp" %>

    </body>

</html>

<%
    } else {
        response.sendRedirect("../../index.jsp");
    }
%>
