package algorithms.programmers.coding_highscore_kit.sort;

import java.util.Arrays;

public class K번째수 {

    public int[] solution(int[] array, int[][] commands) {

        int[] answer = new int[commands.length];

        for (int i = 0; i < commands.length; i++) {

            int[] temp = Arrays.copyOfRange(array, commands[i][0] - 1, commands[i][1]);

            Arrays.sort(temp);
            answer[i] = temp[commands[i][2] - 1];
        }

        return answer;
    }

    public static void main(String[] args) {

        K번째수 k = new K번째수();

        int[] array = {1, 5, 2, 6, 3, 7, 4};
        int[][] commands = {{2, 5, 3}, {4, 4, 1}, {1, 7, 3}};

        System.out.println("Result : " + Arrays.toString(k.solution(array, commands)));
    }
}
