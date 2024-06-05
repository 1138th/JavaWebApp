<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Ansars project</title>
        <script type="text/javascript">
            function buyEnglishCourse() {
                fetch('/', {
                    method: 'POST',
                    headers: {'Content-Type': 'application/json'},
                    body: JSON.stringify({"englishCoursesBought": 'true'})
                })
                .then(res => res.json())
                .then(data => console.log('Success:', data))
                .catch(error => console.error('Error:', error));
            }
        </script>
    </head>

    <body>
        <%@ include file="parts/header.jsp" %>
        <%@ include file="parts/buyShirtModal.jsp" %>
        <div class="bd-content container-xxl">
            <h3 class="text-body-tertiary" style="padding-top: 15px;">Товары и услуги</h3>
            <div class="row">
                <div class="col-sm-6 col-md-3 mb-3">
                    <a class="d-block link-offset-1 text-body-tertiary" href="/basket" onclick="buyShirts(1);">
                        <img class="img-thumbnail mb-3"
                            src="https://bettercallsaulmerch.com/wp-content/uploads/2022/08/ssrcoclassic_teewomens10101001c5ca27c6front_altsquare_product600x600-1.jpg"
                            alt="" width="300" height="300" loading="lazy">
                        <div class="price-wrap">
                            <p>
                                <ins>2500₸</ins>
                                <del>19999₸</del>
                            </p>
                        </div>

                        <h3 class="h5 mb-1">Футболка Сол Гудман (Saul Goodman)</h3>
                    </a>
                    <p class="text-body-secondary">Футболка хлопковая унисекс с принтом героя Сола Гудмана из американского криминально-драматического телесериала <q>Better Call Saul</q>, повествующего о жизни адвоката из провинциального городка Альбукерке.</p>
                    <a class="btn btn-bd-primary nav-link py-2 px-0 px-lg-2" style="color: hsl(0deg 0% 100% / 55%); background-color: hsla(50, 33%, 25%, .75);" data-bs-toggle="modal" data-bs-target="#exampleModalShirt">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                            <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l.5 2H5V5zM6 5v2h2V5zm3 0v2h2V5zm3 0v2h1.36l.5-2zm1.11 3H12v2h.61zM11 8H9v2h2zM8 8H6v2h2zM5 8H3.89l.5 2H5zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0"/>
                        </svg>
                        В корзину
                    </a>
                </div>
                <div class="col-sm-6 col-md-3 mb-3">
                    <a class="d-block link-offset-1 text-body-tertiary" href="/basket" onclick="buyEnglishCourse();">
                        <img class="img-thumbnail mb-3"
                            src="https://junipercustom.com/cdn/shop/files/BFLG8-2-1200-Angle_2048x.jpg"
                            alt="" width="300" height="300" loading="lazy">
                        <div class="price-wrap">
                            <p>
                                <ins>156665₸</ins>
                                <del>699999₸</del>
                            </p>
                        </div>

                        <h3 class="h5 mb-1">Курсы Английского Языка от Vive La Science! (5 месяцев)</h3>
                    </a>
                    <p class="text-body-secondary">Курсы английского языка от компании <b>с 13-летним</b> стажем на рынке обучения языкам 	&ndash; <q><a class="text-body-tertiary" href="https://hh.kz/">Vive La Science!</a></q>. Мы гарантируем возврат средств, либо смену преподавателя в течение месяца после начала обучения!</p>
                    <% if ((Boolean) request.getAttribute("englishCoursesBought")) { %>
                        <a class="btn btn-bd-primary nav-link py-2 px-0 px-lg-2" style="color: hsl(0deg 0% 100% / 55%); background-color: rgb(120,120,120); pointer-events: none;">
                            Уже в корзине
                        </a>
                    <% } else { %>
                        <a href="/" class="btn btn-bd-primary nav-link py-2 px-0 px-lg-2" onclick="buyEnglishCourse();" style="color: hsl(0deg 0% 100% / 55%); background-color: hsla(50, 33%, 25%, .75);">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
                                <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5M3.14 5l.5 2H5V5zM6 5v2h2V5zm3 0v2h2V5zm3 0v2h1.36l.5-2zm1.11 3H12v2h.61zM11 8H9v2h2zM8 8H6v2h2zM5 8H3.89l.5 2H5zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0m9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0"/>
                            </svg>
                            В корзину
                        </a>
                    <% } %>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>