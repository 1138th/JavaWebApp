import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

@WebServlet("/")
public class MainServlet extends HttpServlet {

    private static final String ENGLISH_COURSES_BOUGHT = "englishCoursesBought";
    private static final String SHIRTS_AMOUNT = "shirtsAmount";
    private static final String MAIN_PAGE = "index.jsp";

    /**
     * I had no time to implement DB connection, so @isCourseBought and @shirtsCount were created as
     * a DB connection mock to store a state of user's orders somewhere
     */
    public static Boolean isCoursesBought = null;
    public static int shirtsAmount = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (isCoursesBought != null && isCoursesBought) {
            request.setAttribute(ENGLISH_COURSES_BOUGHT, true);
        }
        if (request.getAttribute(ENGLISH_COURSES_BOUGHT) == null) {
            request.setAttribute(ENGLISH_COURSES_BOUGHT, false);
            isCoursesBought = false;
        }

        request.getRequestDispatcher(MAIN_PAGE).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dataToProcess = request.getReader().lines().collect(Collectors.joining(System.lineSeparator()));
        processEnglishBuying(request, dataToProcess);
        processShirtsBuying(dataToProcess);

        doGet(request, response);
    }

    public static void processEnglishBuying(HttpServletRequest request, String data) throws ServletException, IOException {
        Matcher isEnglishBought = Pattern.compile(String.format("%s\\W+true", ENGLISH_COURSES_BOUGHT))
                .matcher(data);
        if (isEnglishBought.find()) {
            request.setAttribute(ENGLISH_COURSES_BOUGHT, true);
            isCoursesBought = true;
        }
    }

    public static void processShirtsBuying(String data) throws ServletException, IOException {
        Matcher isEnglishBought = Pattern.compile(String.format("%s\\W+(?=\\d+)(?=[^0])", SHIRTS_AMOUNT))
                .matcher(data);
        if (isEnglishBought.find()) {
            Matcher shirtsAmountMatches = Pattern.compile("\\d+").matcher(data);
            shirtsAmountMatches.find();
            shirtsAmount = Integer.parseInt(shirtsAmountMatches.group());
        }
    }
}
