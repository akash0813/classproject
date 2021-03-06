<!DOCTYPE html>
<html>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>

<h3>Register student</h3>

<div>
  <form action="/register.php">
    <label for="fname">First Name</label>
    <input type="text" id="fname" name="firstname" placeholder="Your name..">

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lastname" placeholder="Your last name..">

    <label for="country">Gender</label>
    <select id="country" name="country">
      <option value="australia">Male</option>
      <option value="canada">Female</option>
      <option value="usa">Other</option>
    </select>
      
      <label for="lname">Student id</label>
    <input type="text" id="lname" name="lastname">
      
      <label for="lname">Password</label>
    <input type="text" id="lname" name="lastname" >
      
      <label for="lname">Confirm Password</label>
    <input type="text" id="lname" name="lastname">
  
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
