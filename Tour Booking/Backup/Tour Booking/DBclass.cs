using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
namespace Site
{
    public class DBclass 
    {
        public static SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\STUD\Documents\Tour.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
    }
}