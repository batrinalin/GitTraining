using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbCommand cm;
    int executeCommand;
    string oracleCommand;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new OleDbConnection("Provider=MSDAORA;Data Source=ALINPCSTATION;Persist Security Info=True;Password=alin;User ID=alin");

        try
        {
            con.Open();
            con.Close();
        }

        catch (OleDbException ex)
        {
            Console.WriteLine("Conexiune nereusita: " + ex.Message);
        }

    }
    protected void inregistrare(object sender, EventArgs e)
    {
        //var mesaj = Nume.Text;
       // System.Diagnostics.Debug.WriteLine(mesaj);

        var nume = Nume.Text;
        var prenume = Prenume.Text;
        var functie = Functia.Text;


        int salar_negociat = 0;
        int salar_realizat = 0;
        int vechime = 0;
        int spor = 0;
        int premii_brute = 0;
        int compensatie = 0;
        int avans = 0;
        int retineri = 0;

        try
        {
            con.Open();
            try
            {

                salar_negociat = Convert.ToInt16(SalarNegociat.Text);
                salar_realizat = Convert.ToInt16(SalarRealizat.Text);
                vechime = Convert.ToInt16(Vechime.Text);
                spor = Convert.ToInt16(Spor.Text);
                premii_brute = Convert.ToInt16(PremiiBrute.Text);
                compensatie = Convert.ToInt16(Compensatie.Text);
                avans = Convert.ToInt16(Avans.Text);
                retineri = Convert.ToInt16(Retineri.Text);

                if ((salar_realizat < 0 || salar_realizat > 100) || (vechime < 0 || vechime > 100) || (spor < 0) || (spor > 100))
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "Salar realizat, vechime, spor trebuie sa fie cuprinse intre 0 si 100. Salar realizat si spor sunt valori procentuale.";


                }
                else
                {

                    oracleCommand = "INSERT INTO salariati (nume,prenume,functie,salar_negociat,salar_realizat,vechime,spor,premii_brute,compensatie,avans,retineri) values('"
                        + Nume.Text + "'" + ",'" + Prenume.Text + "'" + ",'" + Functia.Text + "'," + SalarNegociat.Text + "," + SalarRealizat.Text
                        + "," + Vechime.Text + "," + Spor.Text + "," + PremiiBrute.Text + "," + Compensatie.Text + "," + Avans.Text + "," + Retineri.Text + ")";
                    Console.WriteLine(oracleCommand);

                    cm = new OleDbCommand(oracleCommand, con);
                    executeCommand = cm.ExecuteNonQuery();
                    
                    //faa in continuare
                    /*
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "100";
                    TextBox6.Text = "0";
                    TextBox7.Text = "0";
                    TextBox8.Text = "0";
                    TextBox9.Text = "0";
                    TextBox10.Text = "0";
                    TextBox11.Text = "0";
                    Label1.ForeColor = Color.Green;
                    Label1.Text = "Adaugare efectuata cu succes -linii afectate:" + executeCommand.ToString();*/
                }
            }
            catch
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "In campurile salar negociat, salar realizat, vechime, spor, premii brute, compensatie,avans retineri trebuie sa treceti numere intregi";
            }
        }
        catch (OleDbException ex)
        {
            Label1.Text = "Conexiunea esuata, date gresit" + ex.Message;
        }
        finally
        {
            if (con.State == ConnectionState.Open)

                con.Close();
        }
    }
}