﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User2/admin_master.Master" AutoEventWireup="true" CodeBehind="admin_addDiesel.aspx.cs" Inherits="TestAmmy.User2.admin_addDiesel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head_title" runat="server">
    Add Diesel Data
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head_css" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_title" runat="server">
    Diesel
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="title_description" runat="server">
    Daily Diesel Consumption Details

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="breadcrumb" runat="server">
        <li class="active">ENERGY DATA</li>
    <li class="active">Diesel</li>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="main_content" runat="server">
    <div class="row">
        <div class="col-md-12">
            <%------------%>
            <div id="datePopup"></div>
            <%--<div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">Preview lasted data</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>

                    </div>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <table id="example" class="display">
                                <thead>
                                    <tr>
                                        <th>date</th>
                                        <th>current</th>

                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>date</th>
                                        <th>current</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>

            </div>--%>
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title"></h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="row">

                        <!-- /.input group -->
                        <div class="col-sm-4">
                            <!-- /.form-group -->
                            <div class="form-group">
                                <label>Asset Name:</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa fa-building"></i>
                                    </div>
                                    <asp:DropDownList ID="ddl_building" class="form-control select2" runat="server" >
                                        <asp:ListItem Text="No Building" Value="" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                         <div class="col-sm-5"></div>
                        <div class="col-sm-3">
                            <!-- /.form-group -->
                             <div class="form-group">
                                <label>Factor (Price/Unit)</label>
                                <div class="input-group">
                                    <div class="input-group-addon">
                                        <i class="fa   fa-money"></i>
                                    </div>
                                    <input type="number" step="0.05" runat="server" class="form-control" id='factor' min="0" placeholder='eg. 7.00' />
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col-sm-10 col-sm-offset-1">
                                <div class="nav-tabs-custom">
                                    <ul class="nav nav-tabs" id="myTab">

                                        <li class="active"><a href="#profile" data-toggle="tab"><strong>Diesel Consumption</strong></a></li>
                                    </ul>


                                    <div class="tab-content">
                                        <div class="tab-pane active" id="profile">


                                            <table class="table table-bordered table-hover" id="tab_logics">
                                                <thead>
                                                    <tr>
                                                        <th class="text-center col-xs-2" rowspan="2">Date   
                                                        </th>
                                                        <th class="text-center" rowspan="2">Purchased (liter)

                                                        </th>
                                                        <th class="text-center" colspan="3">Diesel Consumed (liter)

                                                        </th>
                                                        <th class="text-center" rowspan="2">Running time of DG set (Minutes)

                                                        </th>
                                                        <th class="text-center col-xs-3" rowspan="2">Tools</th>

                                                    </tr>
                                                    <tr>
                                                        <th class="text-center">DG Set Consumed
                                        
                                                        </th>
                                                        <th class="text-center">Vehicle Consumed
                                        
                                                        </th>
                                                        <th class="text-center">Other Purpose Consumed
                                        
                                                        </th>
                                                    </tr>

                                                </thead>
                                                <tbody>
                                                    <tr id='addrs0'>
                                                        <td>
                                                            <input type="text" name='date' placeholder='select date' class="form-control datepicker" />
                                                        </td>
                                                        <td>
                                                            <input type="text" name='purchased' placeholder='eg. 30' class="form-control" />
                                                        </td>
                                                        <td>
                                                            <input type="text" name='dg_con' placeholder='eg. 10' class="form-control" />
                                                        </td>
                                                        <td>
                                                            <input type="text" name='v_con' placeholder='eg. 10' class="form-control" />
                                                        </td>
                                                        <td>
                                                            <input type="text" name='o_con' placeholder='eg. 10' class="form-control" />
                                                        </td>
                                                        <td>
                                                            <input type="text" name='time' placeholder='eg. 15' class="form-control" />
                                                        </td>
                                                        <td class="text-center">
                                                            <button type="button" class="btn btn-success btn-xs glyphicon glyphicon-floppy-disk"></button>
                                                            <button type="button" class="btn btn-warning btn-xs glyphicon glyphicon-pencil"></button>
                                                            <button type="button" class="btn btn-danger btn-xs glyphicon glyphicon-trash" onclick="dels(0)"></button>
                                                        </td>
                                                    </tr>
                                                    <tr id='addrs1'></tr>
                                                </tbody>
                                            </table>
                                            <a id="add_rows" class=" btn btn-success  pull-right glyphicon glyphicon-plus"></a>

                                            <asp:Button ID="Button1" runat="server" Text="Add Data" class="btn btn-success center-block" OnClick="Button1_Click" />

                                        </div>
                                        <%--end tab1--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="for_script" runat="server">
    <script src="javascripts/add_diesel.js"></script>
   
    <script>$('#example').dataTable();</script>
</asp:Content>
