<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.io.*, java.util.Date, java.text.SimpleDateFormat" %> 
        <%
        	Connection con;
	        String url = "jdbc:mysql://127.0.0.1:3306/portafolio";
	        String Driver = "com.mysql.jdbc.Driver";
	        String user = "root";
	        String clave = "";
	        Class.forName(Driver);
	        con = DriverManager.getConnection(url, user, clave);
	        PreparedStatement ps;
        %>   
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>0xWorld</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />        
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" ></script>        
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />        
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">        
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
                <span class="d-block d-lg-none">OxWorld</span>
                <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="assets/img/gato-lentes.png" alt="" /></span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Acerca de mi</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Experiencia</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Educación</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Habilidades</a></li>                    
                </ul>
            </div>
        </nav>        
        <div class="container-fluid p-0">
                    
            <section class="resume-section" id="about">
                <div class="resume-section-content">
                    <h1 class="mb-0">
                        0x
                        <span class="text-primary">World</span>
                    </h1>
                    <div class="subheading mb-5">
                        Programador web
                        <a href="mailto:name@email.com">oxworld@gmail.com</a>
                    </div>
                    <p class="lead mb-5">Experto en programación de aplicaciones Java para web, con amplia experiencia en universidades prestigiosas como UTP. Licenciado en Ingeniería de Software y con máster en Programación Java. Gran capacidad de trabajo en equipo y plenos conocimientos del lenguaje de programación Java y otros.</p>
                    <div class="social-icons">                        
                        <a class="social-icon" href="https://github.com/0xWorld" target="_blank"><i class="fab fa-github"></i></a>
                        <a class="social-icon" href="https://github.com/0xWorld" target="_blank"><i class="fab fa-instagram"></i></a>
                        <a class="social-icon" href="https://github.com/0xWorld" target="_blank"><i class="fab fa-facebook-f"></i></a>
                    </div>
                </div>
            </section>
            
            <hr class="m-0" />            
            
            <section class="resume-section" id="experience">
                <div class="resume-section-content">
                    <h2 class="mb-5">Experience</h2>
                    <%
                    Statement smt;
        	        ResultSet rs;
        	        smt = con.createStatement();
        	        rs = smt.executeQuery("select * from iam where tipo='EXPE'");
        	        
                    while(rs.next()){
                    %>
                     <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                            <h3 class="mb-0"><%=rs.getString("titulo")%></h3>
                            <div class="subheading mb-3"><%=rs.getString("subtitulo")%></div>
                            <p><%=rs.getString("contenido")%></p>
                        </div>
                        <%                                                
                        String fini,ffin;

                        SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
                        Date dfini = date.parse(rs.getString("fecini"));
                        date.applyPattern("dd/mm/yyyy");
                        fini = date.format(dfini);
                        
                        SimpleDateFormat date2 = new SimpleDateFormat("yyyy-mm-dd");
                        Date dfin = date2.parse(rs.getString("fecini"));
                        date2.applyPattern("dd/mm/yyyy");
                        ffin = date2.format(dfin);                     
                        %>
                        
                        <div class="flex-shrink-0"><span class="text-primary"><%=fini %> - <%=ffin %></span></div>
                    </div>
                    <%                   
                    }                	   
                    %>                                       
                </div>
            </section>
            
            <hr class="m-0" />
            
            
            <section class="resume-section" id="education">
                <div class="resume-section-content">
                    <h2 class="mb-5">Educación</h2>
                    <%                    
        	        smt = con.createStatement();
        	        rs = smt.executeQuery("select * from iam where tipo='EDUC'");        	        
                    while(rs.next()){
                   	%>
                      <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
                        <div class="flex-grow-1">
                            <h3 class="mb-0"><%=rs.getString("titulo")%></h3>
                            <div class="subheading mb-3"><%=rs.getString("subtitulo")%></div>
                            <div>Ingenieria de Software</div>                            
                        </div>
                        <%                                                
                        String fini,ffin;
	                        SimpleDateFormat date = new SimpleDateFormat("yyyy-mm-dd");
	                        Date dfini = date.parse(rs.getString("fecini"));
	                        date.applyPattern("dd/mm/yyyy");
	                        fini = date.format(dfini);
	                        
	                        SimpleDateFormat date2 = new SimpleDateFormat("yyyy-mm-dd");
	                        Date dfin = date2.parse(rs.getString("fecini"));
	                        date2.applyPattern("dd/mm/yyyy");
	                        ffin = date2.format(dfin);                     
                        %>
                        <div class="flex-shrink-0"><span class="text-primary"><%=fini %> - <%=ffin %></span></div>
                    </div>                 	
                   	
                   	<%
                    }
                    %>
                </div>
            </section>
            
            <hr class="m-0" />
            
            <section class="resume-section" id="skills">
                <div class="resume-section-content">
                    <h2 class="mb-5">Habilidades</h2>
                    <div class="subheading mb-3">Lenguajes de Programación y herramientas</div>
                    <ul class="list-inline dev-icons">
                        <li class="list-inline-item"><i class="fab fa-html5"></i></li>
                        <li class="list-inline-item"><i class="fab fa-css3-alt"></i></li>
                        <li class="list-inline-item"><i class="fab fa-js-square"></i></li>
                        <li class="list-inline-item"><i class="fab fa-angular"></i></li>
                        <li class="list-inline-item"><i class="fab fa-react"></i></li>
                        <li class="list-inline-item"><i class="fab fa-node-js"></i></li>
                        <li class="list-inline-item"><i class="fab fa-sass"></i></li>
                        <li class="list-inline-item"><i class="fab fa-less"></i></li>
                        <li class="list-inline-item"><i class="fab fa-wordpress"></i></li>
                        <li class="list-inline-item"><i class="fab fa-gulp"></i></li>
                        <li class="list-inline-item"><i class="fab fa-grunt"></i></li>
                        <li class="list-inline-item"><i class="fab fa-java"></i></li>
                    </ul>
                    <div class="subheading mb-3">FLUJO DE TRABAJO</div>
                    <ul class="fa-ul mb-0">
                        <li>
                            <span class="fa-li"><i class="fas fa-check"></i></span>
                            Diseño Responsivo
                        </li>
                        <li>
                            <span class="fa-li"><i class="fas fa-check"></i></span>                            
							Pruebas y depuración de navegadores cruzados
                        </li>
                        <li>
                            <span class="fa-li"><i class="fas fa-check"></i></span>
                            Equipos multifuncionales
                        </li>
                        <li>
                            <span class="fa-li"><i class="fas fa-check"></i></span>
                            Desarrollo ágil y Scrum
                        </li>
                    </ul>
                </div>
            </section>
        </div>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>        
        <script src="js/scripts.js"></script>
    </body>
</html>