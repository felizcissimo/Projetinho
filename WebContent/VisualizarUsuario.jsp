<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>Perfil de Usuario</title>

            <link href="css/bootstrap.min.css" rel="stylesheet">
            <link href="css/style.css" rel="stylesheet">
        </head>

        <body>

                <!-- Barra superior com os menus de navegação -->
				<c:import url="Menu.jsp"/>
                <!-- Container Principal -->
                <div id="main" class="container">
                    <h3 class="page-header">Visualizar Cadastro #${usuario.idUsuario }</h3>                    
                    <div class="row">
                        <div class="col-md-12">
                            <p><strong>Nome</strong>
                            </p>
                            <p>
                                ${usuario.nome }
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <p><strong>Login</strong>
                            </p>
                            <p>
                                ${usuario.login }
                            </p>
                        </div>
                    </div>
                                        <div class="row">
                        <div class="col-md-12">
                            <p><strong>Senha</strong>
                            </p>
                            <p>
                                ${usuario.senha }
                            </p>
                        </div>
                    </div>
                                        <div class="row">
                        <div class="col-md-12">
                            <p><strong>E-mail</strong>
                            </p>
                            <p>
                                ${usuario.email }
                            </p>
                        </div>
                    </div>
                                        <div class="row">
                        <div class="col-md-12">
                            <p><strong>Celular</strong>
                            </p>
                            <p>
                                ${usuario.celular }
                            </p>
                        </div>
                    </div>
                    <hr />
                    <div id="actions" class="row">
                        <div class="col-md-12">
                            <a href="controller.do?command=EditarUsuario&id=${usuario.idUsuario }" class="btn btn-primary">Editar</a>
                            <a href="index.jsp" class="btn btn-default">Voltar</a>
                        </div>
                    </div>
                </div>
                <script src="js/jquery.min.js"></script>
                <script src="js/bootstrap.min.js"></script>
        </body>

        </html>