using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

public partial class Requests_Consultation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ClearFields(Page);
        //if (!IsPostBack)
        //{
        //    BindDropdownlists();
        //}
    }

  

    protected void DonateMaterialsPanelLink_Click(object sender, EventArgs e)
    {
        DonateMaterialsPanel.Visible = true;
        MakeAGiftPanel.Visible = false;
        BecomeAFriendOfMilnePanel.Visible = false;
    }

    protected void MakeAGiftPanelLink_Click(object sender, EventArgs e)
    {
        DonateMaterialsPanel.Visible = false;
        MakeAGiftPanel.Visible = true;
        BecomeAFriendOfMilnePanel.Visible = false;
    }

    protected void BecomeAFriendOfMilnePanelLink_Click(object sender, EventArgs e)
    {
        DonateMaterialsPanel.Visible = false;
        MakeAGiftPanel.Visible = false;
        BecomeAFriendOfMilnePanel.Visible = true;
    }


    protected void ClearFields(Control p1)
    {
        foreach (Control ctrl in p1.Controls)
        {
            if (ctrl is TextBox)
            {
                TextBox t = ctrl as TextBox;

                if (t != null)
                {
                    t.Text = String.Empty;
                }
            }
            else if (ctrl is DropDownList)
            {
                DropDownList t = ctrl as DropDownList;

                if (t != null)
                {
                    t.SelectedIndex = -1;
                }
            }
            else
            {
                if (ctrl.Controls.Count > 0)
                {
                    ClearFields(ctrl);
                }
            }
        }
        DonateMaterialsPanel.Visible = false;
        MakeAGiftPanel.Visible = false;
        BecomeAFriendOfMilnePanel.Visible = false;

    }


    protected void DonateMaterialsClosePanel_Click(object sender, EventArgs e)
    {
        DonateMaterialsPanel.Visible = false;
    }

    protected void MakeAGiftClosePanel_Click(object sender, EventArgs e)
    {
        MakeAGiftPanel.Visible = false;
    }

    protected void BecomeAFriendOfMilnePanelClosePanel_Click(object sender, EventArgs e)
    {
        BecomeAFriendOfMilnePanel.Visible = false;
    }


    protected void btnReset_Click(object sender, EventArgs e)
    {
        ClearFields(Page);

    }
    
}