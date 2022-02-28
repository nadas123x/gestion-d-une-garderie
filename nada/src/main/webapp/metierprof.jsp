<link rel="stylesheet" type="text/css" href="contact.css">

<div class="form-body">
        <div class="row">
            <div class="form-holder">
                <div class="form-content">
                    <div class="form-items">
                        <h3>Postulez et rejoignez nous!</h3>
                        <form class="requires-validation" novalidate>

                            <div class="col-md-12">
                               <input class="form-control" type="text" name="name" placeholder="Nom complet " required>
                            
                            </div>
                            
                            <div class="col-md-12">
                               <input class="form-control" type="text" name="Votre cv" placeholder="Votre cv " required>
                            
                            </div>
                              <div class="col-md-12">
                               <input class="form-control" type="file" name="Votre cv" placeholder="Votre cv " required>
                            
                            </div>
                             
                             <div class="col-md-12">
                             <br><p>Date de naissance  <input class="form-control" type="Date" name="Date" placeholder="date de naissance de l'enfant" required></p>
                              
                            
                            </div>

                            <div class="col-md-12">
                                <input class="form-control" type="email" name="email" placeholder="Adresse email " required>
                              
                            </div>

                           <div class="col-md-12">
                                <select class="form-select mt-3" required>
                                      <option selected disabled value="">Poste que vous desirez</option>
                                     <option value="jweb">Professeur arabe</option>
                                      
                                      <option value="jweb">Professeur mathématique</option>
                                      <option value="sweb">Professeur français</option>
                                                                            <option value="sweb">Professeur anglais</option>
                                      
                               </select>
                               
                           </div>


                           <div class="col-md-12 mt-3">
                            <label class="mb-3 mr-1" for="gender">Genre: </label>

                            <input type="radio" class="btn-check" name="gender" id="male" autocomplete="off" required>
                            <label class="btn btn-sm btn-outline-secondary" for="male">Homme</label>

                            <input type="radio" class="btn-check" name="gender" id="female" autocomplete="off" required>
                            <label class="btn btn-sm btn-outline-secondary" for="female">Femme</label>

                             
                            </div>

                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
                          <label class="form-check-label">Je confirme que les informations saisies sont correctes</label>
                        </div>
                  

                            <div class="form-button mt-3">
                                <button id="submit" type="submit" class="btn btn-primary">Envoyer</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>