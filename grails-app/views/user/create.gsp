<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mephistopheles -  Sistema de administración de recursos humanos</title>

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
                <a class="navbar-brand" href="index.html">SB Admin</a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu message-dropdown">
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>John Smith</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <img class="media-object" src="http://placehold.it/50x50" alt="">
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong>Ángel Cáceres Licona</strong>
                                        </h5>
                                        <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="message-footer">
                            <a href="#">Read All New Messages</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell"></i> <b class="caret"></b></a>
                    <ul class="dropdown-menu alert-dropdown">
                        <li>
                            <a href="#">Alert Name <span class="label label-default">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-success">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-info">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a>
                        </li>
                        <li>
                            <a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">View All</a>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#"><i class="fa fa-fw fa-user"></i> Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-fw fa-gear"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
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
                             Registrar un nuevo usuario.
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Forms
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-6">
                    <g:hasErrors >
                        <g:eachError><p class="p-3 mb-2 bg-danger text-white"><g:message error="${it}" /></p></g:eachError>
                    </g:hasErrors>

                        <g:form contoller='User' action='save' role="form">
                            <div class="form-group">
								<label>Nombre(s).</label>
                                <g:field type="text" name='firstName' class="form-control" />
								<label>Apellido paterno.</label>
                                <g:field type="text" name='lastName' class="form-control" />
                                <label>Apellido Materno</label>
                                <g:field type="text" name='maternalLastName' class="form-control" />
								<label>Género</label>
								<g:field type="text" name='gender' class="form-control" />
								<label>Teléfono de casa</label>
								<g:field type="text" name='homePhone' class="form-control" maxLength="10"/>
								<label>Teléfono celular</label>
								<g:field type="text" name='cellPhoneNumber' class="form-control" maxLength="10"/>
								<label>Número de INE</label>
								<g:field type="text" name='idNumber' class="form-control" maxLength="10"/>
								<label>Número de seguro</label>
								<g:field type="text" name='nss' class="form-control" maxLength="11"/>
								<label>Correo institucional</label>
								<g:field type="email" name='institutionalMail' class="form-control" />
								<label>Correo personal</label>
								<g:field type="email" name='personalMail' class="form-control"/>
								<label>Fecha de Nacimiento</label>
								<g:field type="date" name='birthDate' class="form-control" maxLength="10"/>
								<label>Fecha ingreso</label>
								<g:field type="date" name='startDate' class="form-control" maxLength="10"/>
								<label>Clabe</label>
								<g:select id="clabe" name="clabe.id" from="${mephistopheles.Clabe.list()}" optionKey="id" required="" value="${user?.user?.firstName}" class="form-control" noSelection="['':'-Seleccione una clabe de la lista-']" optionValue="clabe"
								oninvalid="this.setCustomValidity('Seleccione una clabe de la lista.')"/>
								<label>Github</label>
								<g:select id="github" name="github.id" from="${mephistopheles.Github.list()}" optionKey="id" required="" value="${user?.user?.firstName}" class="form-control" noSelection="['':'-Seleccione un usuario de github de la lista-']" optionValue="gitUserName"
								oninvalid="this.setCustomValidity('Seleccione un usuario de github de la lista.')"/>

                            <g:actionSubmit value="Guardar." action='save' class="btn btn-default" />
                            <button type="reset" class="btn btn-default">Limpiar campos</button>

                        </g:form>
						</div>

                    </div>
                    
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
	<asset:javascript src="jquery.js"/>

    <!-- Bootstrap Core JavaScript -->
	<asset:javascript src="bootstrap.min.js.js"/>

</body>

</html>
