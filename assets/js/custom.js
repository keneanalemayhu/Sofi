$(document).ready(function () {
    // Increment button
    $(document).on('click', '.increment-btn', function (e) {
        e.preventDefault();

        var qty = $(this).closest(".product_data").find(".input-qty").val();
        var value = parseInt(qty, 10);
        value = isNaN(value) ? 0 : value;
        if (value < 10) {
            value++;
            $(this).closest(".product_data").find(".input-qty").val(value);
        }
    });

    // Decrement button
    $(document).on('click', '.decrement-btn', function (e) {
        e.preventDefault();

        var qty = $(this).closest(".product_data").find(".input-qty").val();
        var value = parseInt(qty, 10);
        value = isNaN(value) ? 0 : value;
        if (value > 1) {
            value--;
            $(this).closest(".product_data").find(".input-qty").val(value);
        }
    });

    $(document).on('click', '.addToCartBtn', function (e) {
        e.preventDefault();
        var qty = $(this).closest(".product_data").find(".input-qty").val();
        var prod_id = $(this).val();

        $.ajax({
            method: "POST",
            url: "functions/handlecart.php",
            data: {
                "prod_id": prod_id,
                "prod_qty": qty,
                "scope": "add"
            },
            success: function (response) {
                if (response.trim() === "201") {
                    alertify.success("Product added to cart!");
                } else if (response.trim() === "Product already in cart!") {
                    alertify.error("Product already in cart!");
                } else if (response.trim() === "401") {
                    alertify.error("Login to Continue");
                } else if (response.trim() === "500") {
                    alertify.error("Something went wrong!");
                } else {
                    // Default error message for unexpected responses
                    alertify.error(response.trim());
                }
            }
        });
    });

    $(document).on('click', '.updateQty', function () {
        var qty = $(this).closest(".product_data").find(".input-qty").val();
        var prod_id = $(this).closest(".product_data").find(".prodId").val();

        $.ajax({
            method: "POST",
            url: "functions/handlecart.php",
            data: {
                "prod_id": prod_id,
                "prod_qty": qty,
                "scope": "update"
            },
            datatype: "",
            success: function (response) {
                // alert(response);
            },
        });
    });

    $(document).on('click', '.deleteItem', function () {
        var cart_id = $(this).val();
        // alert(cart_id);

        $.ajax({
            method: "POST",
            url: "functions/handlecart.php",
            data: {
                "cart_id": cart_id,
                "scope": "delete"
            },
            success: function (response) {
                // alert(response);
                if (response.trim() === "200") {
                    alertify.success("Item deleted successfully!");
                    // Remove the item from the DOM
                    $(this).closest(".product_data").remove();
                    // Refresh the cart contents
                    $('#mycart').load(location.href + " #mycart > *");
                } else {
                    alertify.success(response);
                }
            }.bind(this), // Ensure `this` refers to the button
        });
    });
});