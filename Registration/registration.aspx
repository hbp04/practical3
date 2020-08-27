<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="registration.aspx.cs"
    Inherits="Registration.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap/js/jquery-3.5.1.slim.min.js"></script>
    <script src="bootstrap/js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>

</head>
<body style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; font-size: large; font: 600">
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row">
                <div class="col-6 col-lg-6 col-md-6 col-sm-12">
                    <div class="card">
                        <div class="card-header text-center">
                            <h2>Registration Form</h2>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <div class="mb-3">
                                    First Name:
                            <asp:TextBox ID="txtFirstName"
                                CssClass="form-control" runat="server">
                            </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server"
                                        ErrorMessage="First Name is Required."
                                        ControlToValidate="txtFirstName" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3">
                                    Last Name:
                            <asp:TextBox ID="txtLastName"
                                CssClass="form-control" runat="server">
                            </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server"
                                        ErrorMessage="Last Name is Required."
                                        ControlToValidate="txtLastName" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3">
                                    Email:
                            <asp:TextBox ID="txtEmail"
                                CssClass="form-control" TextMode="Email" runat="server">
                            </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server"
                                        ErrorMessage="Email is Required."
                                        ControlToValidate="txtEmail" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail"
                                        runat="server" ErrorMessage="Invalid Email"
                                        ControlToValidate="txtEmail"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>

                                <div class="mb-3">
                                    Password:
                            <asp:TextBox ID="txtPassword"
                                TextMode="Password"
                                CssClass="form-control" runat="server">
                            </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server"
                                        ErrorMessage="Password is Required."
                                        ControlToValidate="txtPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3">
                                    Confirm Password:
                            <asp:TextBox ID="txtConfirmPassword"
                                CssClass="form-control"
                                TextMode="Password" runat="server">
                            </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCPassword" runat="server"
                                        ErrorMessage="Confirm Password is Required."
                                        ControlToValidate="txtConfirmPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidatorPassword" runat="server"
                                        ErrorMessage="Password and Confirm Password should be match"
                                        ControlToValidate="txtConfirmPassword"
                                        ControlToCompare="txtPassword"
                                        Type="String"
                                        Operator="Equal" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                                </div>

                                <div class="mb-3">
                                    Mobile Number:
                            <asp:TextBox ID="txtMobile"
                                CssClass="form-control" TextMode="Phone" runat="server">
                            </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobileNumber" runat="server"
                                        ErrorMessage="Mobile Number is Required."
                                        ControlToValidate="txtMobile" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobileNumber" runat="server"
                                        ErrorMessage="Mobile Number Must be 10 digits."
                                        ForeColor="Red" ValidationExpression="[0-9]{10}"
                                        ControlToValidate="txtMobile" Display="Dynamic"></asp:RegularExpressionValidator>
                                </div>

                                <div class="mb-3">
                                    Gender:
                            <div>

                                <asp:RadioButtonList ID="RadioButtonListGender" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server"
                                        ErrorMessage="Gender is Required."
                                        ControlToValidate="RadioButtonListGender" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3">
                                    Date Of Birth:
                            <asp:TextBox ID="txtDOB"
                                CssClass="form-control" TextMode="Date" runat="server">
                            </asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server"
                                        ErrorMessage="Date Of Birth is Required."
                                        ControlToValidate="txtDOB" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <%--<asp:CompareValidator ID="CompareValidatorDOB" runat="server"
                                        ErrorMessage="Birth Year must be greater than 1998"
                                        ControlToValidate="txtDOB"
                                        ValueToCompare="12/31/1998"
                                        Type="Date"
                                        Operator="GreaterThan" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>--%>
                                    <asp:RangeValidator ID="RangeValidatorDOB" runat="server"
                                        ErrorMessage="DOB Must be between 01/01/1997 to 12/31/2003"
                                        ControlToValidate="txtDOB"
                                        MinimumValue="01/01/1997"
                                        MaximumValue="12/31/2003"
                                        Type="Date"
                                        Display="Dynamic" ForeColor="Red">

                                    </asp:RangeValidator>
                                </div>

                                <div class="mb-3">
                                    Course:
                            <asp:DropDownList ID="ddlCourse"
                                runat="server" CssClass="form-control">
                                <asp:ListItem Value="-1">Select Course</asp:ListItem>
                                <asp:ListItem Value="BCA">BCA</asp:ListItem>
                                <asp:ListItem Value="MCA">MCA</asp:ListItem>
                                <asp:ListItem Value="B.Sc.(CA&amp;IT)">B.Sc.(CA&amp;IT)</asp:ListItem>
                                <asp:ListItem Value="M.Sc.(CA&amp;IT)">M.Sc.(CA&amp;IT)</asp:ListItem>
                                <asp:ListItem Value="M.Sc.(IT) CS">M.Sc.(IT) CS</asp:ListItem>
                                <asp:ListItem Value="B.Sc.(IT) CS">B.Sc.(IT) CS</asp:ListItem>
                                <asp:ListItem Value="B.Sc.(CS)">B.Sc.(CS)</asp:ListItem>
                                <asp:ListItem Value="M.Sc.(CS)">M.Sc.(CS)</asp:ListItem>
                            </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCourse" runat="server"
                                        ErrorMessage="Course is Required."
                                        ControlToValidate="ddlCourse"
                                        InitialValue="-1" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                </div>

                                <div class="mb-3">
                                    Nationality:
                            <div>
                                <asp:CheckBox ID="cbIndian" runat="server" Text="Indian" />
                                <asp:CheckBox ID="cbOther" runat="server" Text="Other" />
                            </div>

                                </div>

                                <div class="mb-3">
                                    Profile Photo:
                            <asp:FileUpload ID="FileUploadProfile" CssClass="form-control-file" runat="server" />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorProfile" runat="server"
                                        ErrorMessage="Profile is Required."
                                        ControlToValidate="FileUploadProfile" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <img src="download.png" runat="server" id="imgProfile"
                                        height="70"
                                        width="70" />
                                </div>

                                <div>
                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                                        CssClass="btn btn-block btn-info" OnClick="btnSubmit_Click" />
                                    <asp:Button ID="btnReset" runat="server" Text="Reset"
                                        CssClass="btn btn-block btn-outline-secondary" OnClick="btnReset_Click" />
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-6 col-lg-6 col-md-6 col-sm-12">
                    <table class="table table-hover table-borderless">
                        <tr>
                            <td colspan="2">
                                <h2>Student Information</h2>
                            </td>
                        </tr>
                        <tr>
                            <td>First Name:</td>
                            <td>
                                <asp:Label ID="lblFirstName" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td>
                                <asp:Label ID="lblLastName" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td>
                                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Mobile Number:</td>
                            <td>
                                <asp:Label ID="lblMobile" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Gender:</td>
                            <td>
                                <asp:Label ID="lblGender" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>DOB:</td>
                            <td>
                                <asp:Label ID="lblDOB" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Course:</td>
                            <td>
                                <asp:Label ID="lblCourse" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Nationality:</td>
                            <td>
                                <asp:Label ID="lblNation" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>Profile Image:</td>
                            <td>
                                <asp:Image ID="ImageProfile" runat="server" Height="100" Width="100"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

        </div>

    </form>
</body>
</html>
