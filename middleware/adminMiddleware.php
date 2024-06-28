<?php

include('../functions/myfunction.php');

if (isset($_SESSION['auth'])) {
    // User is logged in, check role
    if ($_SESSION['role_as'] != 1) {
        // Redirect to another page (e.g., index.php or a restricted area page)
        redirect("../index.php", "You are not authorized to access this page");
    } else {
        // User is an admin, proceed as usual
        // ... your admin code here ...
    }
} else {
    // User is not logged in, redirect to login
    redirect("../login.php", "Login to continue");
}
