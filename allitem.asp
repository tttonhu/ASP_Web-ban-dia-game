<!--#include file ="connect.asp"-->
<%
If(Request.ServerVariables("REQUEST_METHOD")="POST")THEN
    nameitem = Request.QueryString("nameitem")
    genre = Request.QueryString("type")
    introduction = Request.QueryString("introduce")
    price =Request.QueryString("price")
    amountleft=Request.QueryString("howmany")
    picm = Request.QueryString("picture")
    pic1 = Request.QueryString("image1")
    pic2 = Request.QueryString("image2")
    pic3 = Request.QueryString("image3")
    pic4 = Request.QueryString("image4")
    pic5 = Request.QueryString("image5")
    pict = Request.QueryString("imaget")
    picb = Request.QueryString("imageb") 
    
    Dim resultt 
    Set resultt = cmdPrep.excute()
    session("nameitem") = nameitem
End if
%>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://static.thenounproject.com/png/2050059-200.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="company.css">
    <link rel="stylesheet" href="header.css">
    <link rel="stylesheet" href="sallitem.css">
    <title>All Item</title>
</head>
<body>

    <%
        Dim nameitem,genre,introduction,price,amountleft,picm,pic1,pic2,pic3,pic4,pic5,pict,picb
        Dim cmdPrep

            Set cmdPrep = Server.CreateObject("ADODB.Command")
            connDB.Open()
            cmdPrep.ActiveConnection = connDB      
            cmdPrep.CommandType = 1
            cmdPrep.Prepared = True
            cmdPrep.CommandText ="SELECT * FROM Item"
            Dim Result, rs
            Set Result = cmdPrep.execute()
    %>
    <div class="con">
        <button class="tit" type="button">Genre Filter</button>
        <div class="search">
            <input type="text" list="search" placeholder="search . . . " reuired>
            <datalist id="search">
                <option>Hogwarts Legacy</option>
                <option>Call of Duty®</option>
                <option>God of War™</option>
                <option>Dead Land 2</option>
                <option>Resident Evil 4</option>
            </datalist>
            <label for="search">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search"
                    viewBox="0 0 16 16">
                    <path
                        d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                </svg>
                </label>
        </div>
        <div class="ani">
            <a class="ani" href="addproduct.asp">
                <label>Add New Item</label>
            </a>
        </div>
        <div class="trap">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                    </li>
                    <li class="page-item disabled">
                        <a class="page-link" href="#" tabindex="-1">1</a>
                    </li>
                    <li class="page-item"><a class="page-link" style="color:rgb(255, 178, 85); " href="#">2</a></li>
                    <li class="page-item"><a class="page-link" style="color:rgb(255, 178, 85); " href="#">3</a></li>
                    <li class="page-item"><a class="page-link" style="color:rgb(255, 178, 85); " href="#">4</a></li>
                    <li class="page-item"><a class="page-link" style="color:rgb(255, 178, 85); " href="#">...</a></li>
                    <li class="page-item"><a class="page-link" style="color:rgb(255, 178, 85); " href="#">Next</a></li>
                </ul>
            </nav>
        </div>
    </div>
    &nbsp;
    <div class="main">
        <div class="loc">
            <ul class="fil">
                <h3>Genre</h3>
                <p>
                    <input type="checkbox" id="genre1" name="genre">
                    <label for="genre1">Action</label>
                </p>
                <p>
                    <input type="checkbox" id="genre2" name="genre">
                    <label for="genre2">Adventure</label>
                </p>
                <p>
                    <input type="checkbox" id="genre3" name="genre">
                    <label for="genre3">Shooter</label>
                </p>
                <p>
                    <input type="checkbox" id="genre4" name="genre">
                    <label for="genre4">Horror</label>
                </p>
                <p>
                    <input type="checkbox" id="genre5" name="genre">
                    <label for="genre5">RBG</label>
                </p>
                <p>
                    <input type="checkbox" id="genre6" name="genre">
                    <label for="genre6">Family</label>
                </p>
                <p>
                    <input type="checkbox" id="genre7" name="genre">
                    <label for="genre7">Puzzle</label>
                </p>
                <p>
                    <input type="checkbox" id="genre8" name="genre">
                    <label for="genre8">Racing</label>
                </p>
                <p>
                    <input type="checkbox" id="genre9" name="genre">
                    <label for="genre9">Simulation</label>
                </p>
            </ul>
            <ul class="fil">
                <h3>Playable Device</h3>
                <p>
                    <input type="checkbox" id="ps1" name="ps">
                    <label for="ps1">PS 4</label>
                </p>
                <p>
                    <input type="checkbox" id="ps2" name="ps">
                    <label for="ps2">PS 5</label>
                </p>
            </ul>
            <ul class="fil">
                <h3>Player</h3>
                <p>
                    <input type="checkbox" id="pl1" name="player">
                    <label for="pl1">1 player </label>
                </p>
                <p>
                    <input type="checkbox" id="pl2" name="player">
                    <label for="pl2">2 player </label>
                </p>
                <p>
                    <input type="checkbox" id="pl3" name="player">
                    <label for="pl3">Offline player </label>
                </p>
                <p>
                    <input type="checkbox" id="pl4" name="player">
                    <label for="pl4">Online player </label>
                </p>
            </ul>
            <ul class="fil">
                <h3>Price</h3>
                <p>
                    <input type="radio" id="price1" name="price">
                    <label for="price1">0 - 25 $</label>
                </p>
                <p>
                    <input type="radio" id="price2" name="price">
                    <label for="price2">25 - 50 $</label>
                </p>
                <p>
                    <input type="radio" id="price3" name="price">
                    <label for="price3">50 - 75 $</label>
                </p>
                <p>
                    <input type="radio" id="price4" name="price">
                    <label for="price4">75 - 100 $</label>
                </p>
            </ul>
            <div class="vibe">

            </div>
        </div>
        <div class="line"></div>
        <div class="sp">


    <%
    
   If Not Result Is Nothing Then
    While Not Result.EOF
    %>
            <div class="item">
                <a href="/edit.asp/<%= Result.Fields("nameitem").Value %>">
                    <div class="picitem">
                        <img src="https://gmedia.playstation.com/is/image/SIEPDC/hogwarts-packshot-thumb-01-en-12jan21.jpg?$1200px$"
                            alt="product">
                    </div>
                    <div class="center">
                        <div class="inf">
                            1 player, Action
                        </div>
                        <div class="pri"><%= Result ("price").Value %> $</div>
                    </div>
                    <div class="inff">
                        Hogwarts Legacy is an immersive, open-world action RPG set in the world first introduced in
                        the
                        Harry Potter books.

                        Embark on a journey through familiar and new locations as you explore and discover magical
                        beasts,
                        customise your character and craft potions, master spell casting, upgrade talents and become
                        the
                        wizard you want to be.

                        Experience Hogwarts in the 1800s. Your character is a student who holds the key to an
                        ancient secret
                        that threatens to tear the wizarding world apart. Discover the feeling of living at Hogwarts
                        as you
                        make allies, battle Dark Wizards and ultimately decide the fate of the wizarding world.

                        Your legacy is what you make of it. Live the Unwritten.

                        PS5 version available now. PS4 version available from May 5, 2023.
                    </div>
                </a>
                <div class="addcart">
                <form method ="get" action ="edit.asp">
                    <button type="submit" class="buted">
                        <a href='./edit.asp?nameitem=<%= Result("nameitem")%>'>Edit</a>
                    </button>
                </form>  
                <form method = "get" action ="delete.asp">
                    <button type="submit" class="butde">
                        <a href='./delete.asp?nameitem=<%= Result("nameitem")%>'>Delete</a>
                    </button>
                </form>    
                </div>
            </div>
        <%
        Result.MoveNext
        Wend
        End If 
    %>


     </div>
    </div>
    <div class="bt">
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                </li>
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">1</a>
                </li>
                <li class="page-item"><a class="page-link" style="color:rgb(255, 178, 85); " href="#">2</a></li>
                <li class="page-item"><a class="page-link" style="color:rgb(255, 178, 85); " href="#">3</a></li>
                <li class="page-item"><a class="page-link" style="color:rgb(255, 178, 85); " href="#">4</a></li>
                <li class="page-item"><a class="page-link" style="color:rgb(255, 178, 85); " href="#">...</a></li>
                <li class="page-item"><a class="page-link" style="color:rgb(255, 178, 85); " href="#">Next</a></li>
            </ul>
        </nav>
    </div>
    <div class="dr">
        <div class="Company">
            <div class="namelogo">
                <ul>
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                        class="bi bi-playstation" viewBox="0 0 16 16">
                        <path
                            d="M15.858 11.451c-.313.395-1.079.676-1.079.676l-5.696 2.046v-1.509l4.192-1.493c.476-.17.549-.412.162-.538-.386-.127-1.085-.09-1.56.08l-2.794.984v-1.566l.161-.054s.807-.286 1.942-.412c1.135-.125 2.525.017 3.616.43 1.23.39 1.368.962 1.056 1.356ZM9.625 8.883v-3.86c0-.453-.083-.87-.508-.988-.326-.105-.528.198-.528.65v9.664l-2.606-.827V2c1.108.206 2.722.692 3.59.985 2.207.757 2.955 1.7 2.955 3.825 0 2.071-1.278 2.856-2.903 2.072Zm-8.424 3.625C-.061 12.15-.271 11.41.304 10.984c.532-.394 1.436-.69 1.436-.69l3.737-1.33v1.515l-2.69.963c-.474.17-.547.411-.161.538.386.126 1.085.09 1.56-.08l1.29-.469v1.356l-.257.043a8.454 8.454 0 0 1-4.018-.323Z" />
                    </svg>
                </ul>
                <div class="name">PS Weed</div>
            </div>
            <div class="la">
                <h4>Connect to us :</h4>
                <div class="connect">
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-instagram"
                            viewBox="0 0 16 16">
                            <path
                                d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                        </svg>
                    </a>
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-twitter"
                            viewBox="0 0 16 16">
                            <path
                                d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z" />
                        </svg>
                    </a>
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-youtube" viewBox="0 0 16 16">
                            <path
                                d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z" />
                        </svg>
                    </a>
                    <a href="#">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                            class="bi bi-facebook" viewBox="0 0 16 16">
                            <path
                                d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                        </svg>
                    </a>
                </div>
                <h6>IOS app</h6>
                <h6>Androi app</h6>
            </div>
        </div>
        <div class="ver"></div>
        <div class="aboutcompany">
            <div class="infoleft">
                <div class="aboutus">
                    <h3 class="titleinfo">About Us</h3><br>
                    <a href="#">Company</a><br>
                    <a href="#">Leader</a><br>
                </div>
                <div class="aboutus">
                    <h3 class="titleinfo">Terms & Policies</h3><br>
                    <a href="#">PS Direct Terms of Purchase </a><br>
                    <a href="#">Website Terms of Use </a><br>
                    <a href="#">Software Usage Terms </a><br>
                    <a href="#">PS Direct Return</a><br>
                    <a href="#">Health Warning </a><br>
                    <a href="#">About Ratings </a><br>
                </div>
                <div class="aboutus">
                    <h3 class="titleinfo">Help & Support</h3><br>
                    <a href="#">Order Status </a><br>
                    <a href="#">FAQs </a><br>
                    <a href="#">Billing & Payments </a><br>
                    <a href="#">Delivery & Tracking </a><br>
                    <a href="#">Support </a><br>
                </div>
                <div class="aboutus">
                    <h3 class="titleinfo">Values</h3><br>
                    <a href="#">Environment</a><br>
                    <a href="#">Accessibility</a><br>
                </div>
            </div>
            <div class="introduce">
                <p>Are you looking for a great way to save money on your favorite video games? If so, then youll be
                    thrilled to know that the shop sale disc game is now available! This amazing deal allows gamers
                    to
                    purchase their favorite titles at discounted prices. With discounts of up to 50% off retail
                    price,
                    this is an opportunity too good for any gamer not take advantage of. </p>
                <p>The shop PS Weed offers a huge selection of titles from all the major gaming platforms
                    including Playstation 5, PlayStation 4 and Nintendo Switch. Whether you're looking for classic
                    favorites
                    or brand new releases there will be something here just right for everyone in your family. The
                    best
                    part about this offer is that it doesn't end with just games, accessories like controllers and
                    headsets are also included in the promotion as well! </p>
                <p>So don't wait another minute - head over now and start saving big on some awesome video games
                    today
                    thanks to Shop PS Weed's unbeatable deals !</p>
            </div>
        </div>
        <div class="ver"></div>
        <div class="last">© 2023 Company, Inc</div>
    </div>
</body>

</html>