  <link rel="stylesheet" type="text/css" href="contact.css">

<div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Aidez les enfants avec un petit don!</h3>
                        <p>Veuillez remplir ce formulaire</p>
                        
                        <form action="VetementServlet" method="post">
                        
                      

                            <div class="col-md-12">
                               <input class="form-control" type="text" name="nom" placeholder="Votre nom complet" required>
                            
                            </div>

                            <div class="col-md-12">
                                <input class="form-control" type="Text" name="adresse" placeholder="Votre adresse" required>
                              
                            </div>



                           <div class="col-md-12">
                              <input class="form-control" type="Email" name="email" placeholder="Votre email" required>
                               
                           </div>
                           <div class="col-md-12">
                              <input class="form-control" type="Text" name="type" placeholder="Type de vêtements(Tricot/pantalon/chaussures..)" required>
                               
                           </div>

  <div class="col-md-12">
                              <input class="form-control" type="text" name="quantite" placeholder="Nombre de pièces" required>
                               
                           </div>


                          

                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                          <label class="form-check-label">Je confirme que les informations saisies sont correctes</label>
                        </div>
                  

                            <div class="form-button mt-3">
                                <button id="submit" type="submit" class="btn btn-primary">Envoyez</button>
                            </div>
                        </form>
                                             
                    </div>
                </div>
            </div>
        </div>
    </div>