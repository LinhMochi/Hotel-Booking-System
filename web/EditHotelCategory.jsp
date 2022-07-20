<%-- 
    Document   : EditHotelCategory
    Created on : 15-Jul-2022, 06:48:47
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet" />
    <style>
        * {
            font-family: "Roboto", sans-serif;
        }
        
        h3 {
            font-weight: 500;
            font-size: 30px;
            color: #5b7db1;
        }
        
        p {
            font-weight: 300;
        }
        
        a {
            text-decoration: none;
        }
        
        tr {
            border-style: none !important;
        }
        
        th th {
            font-weight: 500;
        }
        
        .card {
            border: none;
        }
        
        i {
            font-size: 20px;
        }
    </style>
</head>

<body>
    <div class="container mt-5 p-4 mx-auto card border-none shadow-lg overflow-hidden">
        <div class="mt-4 mx-4 d-flex justify-content-between">
            <h3>Edit RoomTypes</h3>
        </div>
        <div class="mt-4 mx-4">
            <form action="EditHotelCategory" method="post">
                <label for="id" class="form-label fw-bold mt-2">ID : </label>
                <input type="text" class="form-control" name="id" readonly id="id" value="${room.id}" />

                <label for="imageUrl" class="form-label fw-bold mt-2">Image : </label>
                <input type="text" class="form-control" name="image" id="imageUrl" value="${room.image}" />
                <img src="${room.image}" alt="" class="image mt-2 rounded" style="width: 300px; height: auto; object-fit: cover" />
                <br />
                <label for="roomType" class="form-label fw-bold mt-2">RoomType :
          </label>
                <input type="text" class="form-control" name="roomType" id="roomType" value="${room.roomType}" />

                <label for="quantity" class="form-label fw-bold mt-2">quantity :
          </label>
                <input type="text" class="form-control" name="quantity" id="id" value="${room.quantity}" />

                <label for="price" class="form-label fw-bold mt-2">price : </label>
                <input type="text" class="form-control" name="price" id="price" value="${room.price}" />

                <label for="maxAdult" class="form-label fw-bold mt-2">maxAdult :
          </label>
                <input type="text" class="form-control" name="maxAdult" id="maxAdult" value="${room.maxAdult}" />

                <label for="maxChild" class="form-label fw-bold mt-2">maxChild :
          </label>
                <input type="text" class="form-control" name="maxChild" id="maxChild" value="${room.maxChild}" />

                <label for="area" class="form-label fw-bold mt-2">area : </label>
                <input type="text" class="form-control" name="area" id="area" value="${room.area}" />

                <label for="description" class="form-label fw-bold mt-2">description :
          </label>
                <input type="text" class="form-control" name="description" id="description" value="${room.price}" />

                <label for="hotelId" class="form-label fw-bold mt-2">hotelId :
          </label>
                <input type="text" class="form-control" name="hotelId" id="hotelId" value="${room.hotelId}" />

                <div class="mt-3 d-flex justify-content-end">
                    <button type="submit" class="btn btn-primary btn-md px-4 py-2">
              Edit
            </button>
                </div>
            </form>
        </div>
    </div>

    <script>
        const imageUrl = document.querySelector("#imageUrl");
        const image = document.querySelector(".image");
        imageUrl.addEventListener("change", () => {
            image.src = imageUrl.value;
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>

</html>