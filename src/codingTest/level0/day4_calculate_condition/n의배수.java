package codingTest.level0.day4_calculate_condition;

public class n의배수 {

    public int solution_my(int num, int n) {

        int answer = num % n;

        if (answer == 0) {
            return 1;
        } else {
            return 0;
        }
    }

    public int solution_best(int num, int n) {

        int answer = num % n == 0 ? 1 : 0;

        return answer;
    }

    public static void main(String[] args) {

        n의배수 result = new n의배수();

        System.out.println("Result : " + result.solution_my(98, 2));
        System.out.println("Result : " + result.solution_my(34, 3));
        System.out.println("======================================");

        System.out.println("Result : " + result.solution_best(98, 2));
        System.out.println("Result : " + result.solution_best(34, 3));
    }
}
