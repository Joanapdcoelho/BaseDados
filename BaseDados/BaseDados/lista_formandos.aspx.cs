using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration; //permite ir ao webconfig buscar dados
using System.Xml;

namespace BaseDados
{
    public partial class lista_formandos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            string query = "";

            if(!Page.IsPostBack || ddl_Curso.SelectedItem.ToString() == "Todos")
            {
                //ddl_Curso.Items.Clear();
                if (ddl_Curso.Items.Count == 0 || ddl_Curso.Items[0].Value != "Todos")
                {
                    ddl_Curso.Items.Add("Todos");
                }

                // Query que se quer executar
                query = "SELECT formandos.num_formando, formandos.nome, formandos.morada, formandos.email, formandos.telemovel, cursos.curso FROM cursos INNER JOIN formandos ON cursos.cod_curso = formandos.cod_curso";                

            }
            else
            {
                // Query que se quer executar
                query = "SELECT formandos.num_formando, formandos.nome, formandos.morada, formandos.email, formandos.telemovel, cursos.curso FROM cursos INNER JOIN formandos ON cursos.cod_curso = formandos.cod_curso where cursos.cod_curso = " + ddl_Curso.SelectedValue;
            }           

            // Conexão (ligação) à base de dados
            SqlConnection myConn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionStringCET74"].ConnectionString);

            // Trazer dados da base de dados
            SqlCommand mycommand = new SqlCommand(query, myConn);

            // Trazer os dados e guardar no myadapter
            SqlDataAdapter myAdapter = new SqlDataAdapter(mycommand);

            //criar uma nova instância da classe DataSet
            DataSet myDataset = new DataSet();

            // Preencher o dataset com os dados da base de dados
            myAdapter.Fill(myDataset);          


            // Carregar o XML no controle Xml
            Xml1.DocumentContent = myDataset.GetXml();

        }


    }
}