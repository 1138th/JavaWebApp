import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/basket")
public class BasketServlet extends MainServlet {

    private static final String ENGLISH_COURSES_BOUGHT = "englishCoursesBought";
    private static final String SHIRTS_AMOUNT = "shirtsAmount";
    private static final String FINAL_PRICE = "finalPrice";
    private static final String BASKET_PAGE = "basket.jsp";
    private static final int COURSE_PRICE = 156665;
    private static final int SHIRT_PRICE = 2500;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int finalPrice = MainServlet.isCoursesBought != null && MainServlet.isCoursesBought ? COURSE_PRICE : 0;
        finalPrice += SHIRT_PRICE * MainServlet.shirtsAmount;

        request.setAttribute(ENGLISH_COURSES_BOUGHT, MainServlet.isCoursesBought != null && MainServlet.isCoursesBought);
        request.setAttribute(SHIRTS_AMOUNT, MainServlet.shirtsAmount);
        request.setAttribute(FINAL_PRICE, finalPrice);
        request.getRequestDispatcher(BASKET_PAGE).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doPost(request, response);
    }
}
