<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
// variables qui contiendront le numéro de la question en cours, les questions et possibilitées de réponses du questionnaire
    int numQuestion= (int)request.getAttribute("numQuestion");
    String question;
    String reponseA;
    String reponseB;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>Questionnaire</title>
    </head>
    <body>
        <center>Questionnaire</center>
        <form name="frmImpots" action="/QCM/QCM" method="POST">
                <table>
                    <tr>Question n° <%= numQuestion %> <!--    numQuestion    requete pour avoir le numero de la question--></tr>
                    <tr>
                        <td> <!--   question        requete pour avoir la question corresponante--></td>
                        <td>
                            <input type="radio" name="reponseButtonRadio" value="0"/> <p> <!--      reponseA    requete pour avoir la reponseA correspondante--></p>
                            <input type="radio" name="reponseButtonRadio" value="1"/> <p> <!--      reponseB    requete pour avoir la reponseB correspondante--></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="suivant"/>
                        </td>
                    </tr>
                </table>
            </form>        
    </body>
</html>



<!-- Tronche que ca doit avoir

                Questionnaire
                
    Question n°X
    
    Question................................ ?
    O   Reponse A
    O   Reponse B
    
    <> OK    

-->