using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{
    private ratingBAL ratingbal = new ratingBAL();
    private Int64 mpidval, guId;
    protected void Page_Load(object sender, EventArgs e)
    {
        mpidval = 3;
        guId = 1;
        loadRating();
    }
    /**********************************      RATING            ****************************/
    private void loadRating()
    {      /** Current user rating **/
        DataTable dt = ratingbal.getrating(mpidval, 0, guId);
        if (dt.Rows.Count >= 3)
        {
            Rating1.CurrentRating = Convert.ToInt32(dt.Rows[0]["rating"]);
            Rating2.CurrentRating = Convert.ToInt32(dt.Rows[1]["rating"]);
            Rating3.CurrentRating = Convert.ToInt32(dt.Rows[2]["rating"]);
        }
        loadAvgRating();
    }
    private void loadAvgRating()
    {   /** avg rating **/
        DataTable dt = new DataTable();
        dt = ratingbal.getrating(mpidval);
        if (dt.Rows.Count >= 3)
        {
            LBLrating1.Text = dt.Rows[0]["avgRAte"].ToString();
            LBLrating2.Text = dt.Rows[1]["avgRAte"].ToString();
            LBLrating3.Text = dt.Rows[2]["avgRAte"].ToString();
        }

    }
    protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        DataTable dt = ratingbal.getrating(mpidval, 1, guId, Convert.ToInt16(e.Value));
        Rating1.CurrentRating = Convert.ToInt32(dt.Rows[0]["rating"]);
        LBLrating1.Text = dt.Rows[0]["avgRAte"].ToString();
    }

    protected void Rating2_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        DataTable dt = ratingbal.getrating(mpidval, 2, guId, Convert.ToInt16(e.Value));
        Rating2.CurrentRating = Convert.ToInt32(dt.Rows[0]["rating"]);
        LBLrating2.Text = dt.Rows[0]["avgRAte"].ToString();
    }
    protected void Rating3_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        DataTable dt = ratingbal.getrating(mpidval, 3, guId, Convert.ToInt16(e.Value));
        Rating3.CurrentRating = Convert.ToInt32(dt.Rows[0]["rating"]);
        LBLrating3.Text = dt.Rows[0]["avgRAte"].ToString();
    }
    
}