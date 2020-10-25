<%-- 
    Document   : gestionMineros
    Created on : 24 oct. 2020, 22:30:04
    Author     : Braro
--%>

<%@page import="FACADE.Facade"%>
<%@page import="java.util.ArrayList"%>
<%
    Facade faca = new Facade();
    
    String idPersona = (String) session.getAttribute("parametroCodigo");
    if (idPersona != null) {%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Header -->
    <jsp:include page="../content/headerAdmin.jsp" >
        <jsp:param name="titlePage" value="Gestionar Mineros - Technology RUM" />
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
                            <h1 class="h3 mb-0 text-gray-800">Gestionar Mineros</h1>
                            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-dark shadow-sm " data-toggle="modal" data-target="#modal_RegistrarMinero"><i class="fas fa-plus fa-lg text-white-50"></i> Registrar Minero</a>
                        </div>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-warning">Tabla de Usuarios</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th># Cedula</th>
                                                <th>Nombre</th>
                                                <th>Telefono</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <th># Cedula</th>
                                                <th>Nombre</th>
                                                <th>Telefono</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </tfoot>
                                        <tbody>
                                            
                                            <%
                                                ArrayList<String> lista = faca.obtenerDatosMinero();

                                                for (int i = 0; i < lista.size(); i++) {
                                                    String dato1 = lista.get(i).toString();
                                                    String[] dato2 = dato1.split("/");
                                            %>
                                            
                                            <tr>
                                                <td><%=dato2[2]%></td>
                                                <td><%=dato2[3]%> <%=dato2[4]%></td>
                                                <td><%=dato2[5]%></td>
                                                <td>
                                                    <button class="btn btn-success" data-toggle="modal" data-target="#modal_EditarMinero"
                                                            data-id="<%=dato2[0]%>" data-id1="<%=dato2[1]%>" data-id2="<%=dato2[2]%>" data-id3="<%=dato2[3]%>"
                                                            data-id4="<%=dato2[4]%>" data-id5="<%=dato2[5]%>" data-id6="<%=dato2[6]%>" data-id7="<%=dato2[7]%>" 
                                                            data-id8="<%=dato2[8]%>" data-id9="<%=dato2[9]%>" data-id10="<%=dato2[10]%>" data-id11="<%=dato2[11]%>" >
                                                        <i class="fas fa-edit"></i> Editar
                                                    </button>
                                                    <button class="btn btn-danger" data-toggle="modal" data-target="#modalEliminarMinero" data-bind="<%=dato2[0]%>" data-whatever="<%=dato2[3]%>"><i class="fas fa-trash-alt"></i> Eliminar</button>
                                                </td>
                                            </tr>
                                            
                                            <% }%>
                                            
                                        </tbody>
                                    </table>
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
        <%@include file="../content/mineros/modal_aggMinero.jsp" %>
        <%@include file="../content/mineros/modal_eliminarMinero.jsp" %>
        <%@include file="../content/mineros/modal_editarMinero.jsp" %>

        <!-- Bootstrap core JavaScript-->
        <%@include file="../content/scriptsAdmin.jsp" %>


</html>

<%
    } else {
        response.sendRedirect("../../index.jsp");
    }
%>
