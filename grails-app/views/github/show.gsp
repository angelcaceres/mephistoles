<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mephistopheles -  Sistema de administración de recursos humanos</title>
    <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'bootstrap.png')}" type="image/x-icon" />

    <!-- Bootstrap Core CSS -->
    <asset:stylesheet src="bootstrap.min.css"/>

    <!-- Custom CSS -->
    <asset:stylesheet src="sb-admin.css"/>

    <!-- Custom Fonts -->
    <asset:stylesheet src="font-awesome/css/font-awesome.min.css"/>

        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>


</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Mephistopheles</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Administrador <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active"> 
                        <a href="${createLink(uri: '/')}"><i class="fa fa-fw fa-bar-chart-o"></i> Inicio</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-user"></i> <g:message code="menu.principal.User" />  <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="demo" class="collapse">
                            <li>
                                <a href="${createLink(uri: '/user/')}"><i class="fa fa-plus-circle"></i> <g:message code="menu.principal.List" /></a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/user/create')}"><i class="fa fa-th-list"></i> <g:message code="menu.principal.Create" /></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#github"><i class="fa fa-github"></i> <g:message code="menu.principal.Gitgub" /> <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="github" class="collapse">
                            <li>
                                <a href="${createLink(uri: '/github/')}"><i class="fa fa-plus-circle"></i> <g:message code="menu.principal.List" /></a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/github/create')}"><i class="fa fa-th-list"></i> <g:message code="menu.principal.Create" /></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#address"><i class="fa fa-map-marker"></i> <g:message code="menu.principal.Address" /> <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="address" class="collapse">
                            <li>
                                <a href="${createLink(uri: '/address/')}"><i class="fa fa-plus-circle"></i> <g:message code="menu.principal.List" /></a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/address/create')}"><i class="fa fa-th-list"></i> <g:message code="menu.principal.Create" /></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#position"><i class="fa fa-briefcase" aria-hidden="true"></i> <g:message code="menu.principal.Position" /> <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="position" class="collapse">
                            <li>
                                <a href="${createLink(uri: '/position/')}"><i class="fa fa-plus-circle"></i> <g:message code="menu.principal.List" /></a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/position/create')}"><i class="fa fa-th-list"></i> <g:message code="menu.principal.Create" /></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#reference"><i class="fa fa-users" aria-hidden="true"></i> <g:message code="menu.principal.Reference" /> <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="reference" class="collapse">
                            <li>
                                <a href="${createLink(uri: '/reference/')}"><i class="fa fa-plus-circle"></i> <g:message code="menu.principal.List" /></a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/reference/create')}"><i class="fa fa-th-list"></i> <g:message code="menu.principal.Create" /></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#vacations"><i class="fa fa-bus" aria-hidden="true"></i> <g:message code="menu.principal.Vacations" /> <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="vacations" class="collapse">
                            <li>
                                <a href="${createLink(uri: '/vacations/')}"><i class="fa fa-plus-circle"></i> <g:message code="menu.principal.List" /></a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/vacations/create')}"><i class="fa fa-th-list"></i> <g:message code="menu.principal.Create" /></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#files"><i class="fa fa-file-image-o" aria-hidden="true"></i> <g:message code="menu.principal.Files" /> <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="files" class="collapse">
                            <li>
                                <a href="${createLink(uri: '/files/')}"><i class="fa fa-plus-circle"></i> <g:message code="menu.principal.List" /></a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/files/create')}"><i class="fa fa-th-list"></i> <g:message code="menu.principal.Create" /></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#equipment"><i class="fa fa-laptop" aria-hidden="true"></i> <g:message code="menu.principal.Equipment" /> <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="equipment" class="collapse">
                            <li>
                                <a href="${createLink(uri: '/equipment/')}"><i class="fa fa-plus-circle"></i> <g:message code="menu.principal.List" /></a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/equipment/create')}"><i class="fa fa-th-list"></i> <g:message code="menu.principal.Create" /></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#clabe"><i class="fa fa-money" aria-hidden="true"></i> <g:message code="menu.principal.Clabe" /> <i class="fa fa-fw fa-caret-down"></i></a>
                        <ul id="clabe" class="collapse">
                            <li>
                                <a href="${createLink(uri: '/clabe/')}"><i class="fa fa-plus-circle"></i> <g:message code="menu.principal.List" /></a>
                            </li>
                            <li>
                                <a href="${createLink(uri: '/clabe/create')}"><i class="fa fa-th-list"></i> <g:message code="menu.principal.Create" /></a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Resumen de github
                        </h1>
                         
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
	<div class="col-lg-6">
<div class="table-responsive">
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <tr>
                    <th>Usuario de Github</th>
                    <th>¿Se tiene respaldo de su llave?</th>
                    <th>¿La cuenta está activa?</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>${githubInstance.gitUserName}</td>
                    <td>
                        <g:if test="${githubInstance.gitKey == true}">
                            Si.
                        </g:if>
                    <g:else>
                        No
                    </g:else>
                    </td>
                    <td>
                    <g:if test="${githubInstance.active == true}">
                            Si.
                        </g:if>
                    <g:else>
                        No
                    </g:else>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
	<asset:javascript src="jquery.js"/>

    <!-- Bootstrap Core JavaScript -->
	<asset:javascript src="bootstrap.min.js.js"/>	
</body>

</html>
