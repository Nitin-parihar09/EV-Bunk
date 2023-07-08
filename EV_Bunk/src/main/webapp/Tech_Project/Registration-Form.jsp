<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <scrip
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"></script>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <title>Registration Form</title>
  </head>


<body>
    <section class="vh-100 bg-image"
      style="background-image:images/logo.png;">
      
      
      <div class="mask d-flex align-items-center h-100 gradient-custom-3">
        <div class="container h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-9 col-lg-7 col-xl-6">
              <div class="card" style="border-radius: 15px;">
                <div class="card-body p-5">
                  <h2 class="text-uppercase text-center mb-5">Own a Bunk? Create an account</h2>

                  <form action="Add_admin.jsp" method="get">

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example1cg">Enter Owner Name</label>
                      <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="name" placeholder="Enter Your Name" /> 
                    </div>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example1cg">Bunk's Address</label>
                      <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="address" placeholder="Enter Bunk's Address" /> 
                    </div>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example1cg">Area/Landmark</label>
                      <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="areas" placeholder="Street name, Area, landmark etc." /> 
                    </div>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example1cg">State</label>
                      <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="state" placeholder="Enter Bunks's State" /> 
                    </div>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example1cg">City</label>
                      <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="city" placeholder="Enter Bunk's City" /> 
                    </div>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example1cg">No. Of Slots</label>
                      <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="slots" placeholder="Enter No. of Slots" /> 
                    </div>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example1cg">User Name</label>
                      <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="username" placeholder="Create Your User Name" /> 
                    </div>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form3Example1cg">Password</label>
                      <input type="text" id="form3Example1cg" class="form-control form-control-lg" name="password" placeholder="Create Password" /> 
                    </div>

                    <div class="form-check d-flex justify-content-center mb-5">
                      <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                      <label class="form-check-label" for="form2Example3g">
                        I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                      </label>
                    </div>

                    <div class="d-flex justify-content-center">
                      <button type="submit"
                        class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
                    </div>

                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
</body>
</html>