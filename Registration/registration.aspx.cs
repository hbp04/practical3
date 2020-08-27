using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string error;
                if (FileUploadProfile.HasFile)
                {

                    string fileExtention = System.IO.Path.GetExtension(FileUploadProfile.FileName);

                    if (fileExtention.ToLower() != ".jpg" && fileExtention.ToLower() != ".jpeg" &&
                            fileExtention.ToLower() != ".png")
                    {
                        error = "you are uploading " + fileExtention + ", " +
                            "which is not allowed.Please enter file with extention .jpg,.jpeg or .png";
                    }
                    else
                    {
                        int filesize = FileUploadProfile.PostedFile.ContentLength;
                        if (filesize > 2097152)
                        {
                            error = "Maximum File size(2 MB) exceeded.";
                        }
                        else
                        {
                            FileUploadProfile.SaveAs(Server.MapPath("~/upload/" + FileUploadProfile.FileName));
                            error = "File Uploaded";
                            lblFirstName.Text = txtFirstName.Text.ToString();
                            lblLastName.Text = txtLastName.Text.ToString();
                            lblEmail.Text = txtEmail.Text.ToString();
                            lblMobile.Text = txtMobile.Text.ToString();
                            lblGender.Text = RadioButtonListGender.SelectedItem.ToString();
                            lblDOB.Text = txtDOB.Text.ToString();
                            lblCourse.Text = ddlCourse.SelectedValue;

                            if (cbIndian.Checked)
                            {
                                lblNation.Text = cbIndian.Text;
                            }
                            else
                            {
                                lblNation.Text = cbOther.Text;
                            }

                            ImageProfile.ImageUrl = "~/upload/" + FileUploadProfile.FileName;

                            reset();
                        }

                    }
                    
                }
                else
                {
                    error = "Please select a file to upload.";
                }
                if (error != "")
                {
                    Response.Write("<script language='javascript'>alert('" + error + "');</script>");
                }

            }
            else
            {
                Response.Write("<script language='javascript'>alert('Validation Failed!Data Not Saved');</script>");
            }
        }

        void reset()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            txtMobile.Text = "";
            txtDOB.Text = "";
            RadioButtonListGender.SelectedIndex = -1;
            cbIndian.Checked = false;
            cbOther.Checked = false;
            ddlCourse.SelectedIndex = -1;
           
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            reset();
        }
    }
}