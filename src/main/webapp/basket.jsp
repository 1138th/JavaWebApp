<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Ansars project</title>
    </head>

    <body>
        <%@ include file="parts/header.jsp" %>
        <%@ include file="parts/payment.jsp" %>
        <div class="bd-content container-xxl">
            <h3 class="text-body-tertiary" style="padding-top: 15px;">Корзина</h3>
            <div class="row">
                <% if ((Integer) request.getAttribute("shirtsAmount") > 0) { %>
                    <div class="col-sm-6 col-md-3 mb-3">
                        <p class="d-block link-offset-1 text-body-tertiary">
                            <img class="img-thumbnail mb-3"
                                src="https://bettercallsaulmerch.com/wp-content/uploads/2022/08/ssrcoclassic_teewomens10101001c5ca27c6front_altsquare_product600x600-1.jpg"
                                alt="" width="300" height="300" loading="lazy">
                            <div class="price-wrap">
                                <p class="text-body-tertiary">${shirtsAmount} x 2500₸</p>
                            </div>
                            <h4 class="text-body-tertiary h5 mb-1">Футболка Сол Гудман (Saul Goodman)</h3>
                        </p>
                    </div>
                <% } %>
                <% if ((Boolean) request.getAttribute("englishCoursesBought")) { %>
                    <div class="col-sm-6 col-md-3 mb-3">
                        <p class="d-block link-offset-1 text-body-tertiary">
                            <img class="img-thumbnail mb-3"
                                src="https://junipercustom.com/cdn/shop/files/BFLG8-2-1200-Angle_2048x.jpg"
                                alt="" width="300" height="300" loading="lazy">
                            <div class="price-wrap">
                                <p class="text-body-tertiary">1 x 156665₸</p>
                            </div>
                            <h4 class="text-body-tertiary h5 mb-1">Курсы Английского Языка от Vive La Science! (5 месяцев)</h3>
                        </p>
                    </div>
                <% } %>
                <div class="col-sm-6 col-md-3 mb-3 navbar-nav ms-md-auto">
                    <p class="d-block link-offset-1 text-body-tertiary">
                        <div class="price-wrap">
                            <p class="text-body-tertiary">${finalPrice}₸</p>
                        </div>
                    </p>
                    <a class="btn btn-bd-primary nav-link py-2 px-lg-2" style="color: hsl(0deg 0% 100% / 55%); background-color: hsla(50, 33%, 25%, .75);" data-bs-toggle="modal" data-bs-target="#paymentModal">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-currency-dollar" viewBox="0 0 16 16">
                            <path d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73z"/>
                        </svg>
                        Оплатить
                    </a>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>