module Handler.Files where

import Import

getFilesR :: Handler Html
getFilesR = do
    allFiles <- runDB $ selectList [] [Desc ArchivoId]
    defaultLayout $ do 
        -- $(widgetFile "files")
        setTitle "UEBGate Files"
        toWidget [lucius| h1 { color: green; } |]
        addScriptRemote "https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"
        toWidget
            [julius|
                $(function() {
                    $("h1").click(function(){
                        alert("You clicked on the heading!");
                    });
                });
            |]
        toWidgetHead
            [hamlet|
                <meta name=keywords content="some sample keywords">
            |]
        toWidget
            [hamlet|
                <div id="wrapper">
                <!-- Navigation -->
                <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.html">
                            UEBGate
                    <div class="navbar-default sidebar" role="navigation">
                        <div class="sidebar-nav navbar-collapse">
                            <ul class="nav" id="side-menu">
                                <li class="sidebar-search">
                                    <div class="input-group custom-search-form">
                                        <input type="text" class="form-control" placeholder="Buscar...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button">
                                                <i class="fa fa-search"></i>
                                    <div class="form-group">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="">Carpetas
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="">Archivos
                                <li>
                                    <a href="#">
                                        <i class="fa fa-sitemap fa-fw">
                                        Carpetas
                                        <span class="fa arrow">
                                    <ul class="nav nav-second-level">
                                        <li>
                                            <a href="#">
                                                Compiladores
                                        <li>
                                            <a href="#">
                                                Gerencia de proyectos
                                        <li>
                                            <a href="#">
                                                Programación funcional
                                                <span class="fa arrow">
                                            <ul class="nav nav-third-level">
                                                <li>
                                                    <a href="#">Haskell
                                                <li>
                                                    <a href="#">Métodos numéricos
                                                <li>
                                                    <a href="#">Python
                                                <li>
                                                    <a href="#">Yesod

                <div id="page-wrapper">
                    <div class="row">
                        <div class="col-lg-9">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="dataTable_wrapper">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        Nombre del archivo
                                                    <th>
                                                        Calificación
                                                    <th>
                                                        Fecha
                                                    <th>
                                                        Tipo
                                                    <th>
                                                        Tamaño
                                            <tbody>
                                                <tr class="odd gradeX">
                                                    <td>Archivo 1 Investigación
                                                    <td class="center">2
                                                    <td>Mayo/02/2016
                                                    <td class="center">.doc
                                                    <td class="center">2.5MB
                                                <tr class="odd gradeX">
                                                    <td>Archivo 2 de quiz
                                                    <td class="center">3
                                                    <td>Mayo/11/2016
                                                    <td class="center">.doc
                                                    <td class="center">2.5MB
                                                <tr class="odd gradeX">
                                                    <td>Archivo 3
                                                    <td class="center">5
                                                    <td>Mayo/12/2016
                                                    <td class="center">.xls
                                                    <td class="center">2.5MB
                                                <tr class="odd gradeX">
                                                    <td>Taller 4 Haskell
                                                    <td class="center">3
                                                    <td>Mayo/12/2016
                                                    <td class="center">.doc
                                                    <td class="center">2.5MB
                                                <tr class="odd gradeX">
                                                    <td>Parcial 5
                                                    <td class="center">2
                                                    <td>Mayo/14/2016
                                                    <td class="center">.pdf
                                                    <td class="center">2MB
                                                <tr class="odd gradeX">
                                                    <td>Archivo 6
                                                    <td class="center">5
                                                    <td>Mayo/15/2016
                                                    <td class="center">.txt
                                                    <td class="center">2.5MB
                        <div class="col-lg-3">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-bell fa-fw">
                                    Notifications Panel
                                <div class="panel-body">
                                    <div class="list-group">
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-tasks fa-fw">
                                            Detalles
                                            <span class="pull-right text-muted small">
                                                <em>
                                        <a href="#" class="list-group-item">
                                            <i class="fa fa-upload fa-fw">
                                            Subido
                                            <span class="pull-right text-muted small">
                                                <em>
                                                    11:32 AM
                                    <a href="#" class="btn btn-default btn-block">
                                        Ver más detalles
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <i class="fa fa-comments fa-5x">
                                        <div class="col-xs-9 text-right">
                                            <div class="huge">
                                                26
                                            <div>
                                                Comentarios
                                <a href="#">
                                    <div class="panel-footer">
                                        <span class="pull-left">
                                            Ver comentarios
                                        <span class="pull-right">
                                            <i class="fa fa-arrow-circle-right">
                                        <div class="clearfix">
                    <div class="row hide">
                        <div class="col-lg-8">
                            <div class="panel panel-default">   
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div id="morris-area-chart">
                                <!-- /.panel-body -->
                            <!-- /.panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-bar-chart-o fa-fw">
                                    Bar Chart Example
                                    <div class="pull-right">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                                Actions
                                                <span class="caret">
                                            <ul class="dropdown-menu pull-right" role="menu">
                                                <li>
                                                    <a href="#">
                                                        Action
                                                <li>
                                                    <a href="#">
                                                        Another action
                                                <li>
                                                    <a href="#">
                                                        Something else here
                                                <li class="divider">
                                                <li>
                                                    <a href="#">
                                                        Separated link
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-4">
                                            <!-- /.table-responsive -->
                                        <!-- /.col-lg-4 (nested) -->
                                        <div class="col-lg-8">
                                            <div id="morris-bar-chart">
                                        <!-- /.col-lg-8 (nested) -->
                                    <!-- /.row -->
                                <!-- /.panel-body -->
                            <!-- /.panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-clock-o fa-fw">
                                    Responsive Timeline
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                <!-- /.panel-body -->
                            <!-- /.panel -->
                        <!-- /.col-lg-8 -->
                        <div class="col-lg-4 hide">
                            <!-- /.panel -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-bar-chart-o fa-fw">
                                    Donut Chart Example
                                <div class="panel-body">
                                    <div id="morris-donut-chart">
                                <!-- /.panel-body -->
                            <!-- /.panel -->
                            <div class="chat-panel panel panel-default">
                                <div class="panel-heading">
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                <!-- /.panel-body -->
                                <div class="panel-footer">
                                    <div class="input-group">
                                        <input id="btn-input" type="text" class="form-control input-sm" placeholder="Type your message here..." />
                                        <span class="input-group-btn">
                                            <button class="btn btn-warning btn-sm" id="btn-chat">
                                                Send
                                <!-- /.panel-footer -->
                            <!-- /.panel .chat-panel -->
                        <!-- /.col-lg-4 -->
                    <!-- /.row -->
                <!-- /#page-wrapper -->
            |]
        [whamlet|<h2>Here's another |]
        toWidgetBody
            [julius|
                alert("This is included in the body itself");
            |]
        $(widgetFile "files")