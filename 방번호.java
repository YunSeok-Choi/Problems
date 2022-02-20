package implement;

import java.util.*;

public class 방번호 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int sum = 0;
		int[] number = new int[9];
		String a = sc.next();
		String[] b = new String[a.length()];

		b = a.split("");

		for (int i = 0; i < a.length(); i++) {
			if (b[i].equals("9"))
				number[6]++;
			else
				number[Integer.parseInt(b[i])]++;
		}
		if (number[6] % 2 == 0)
			number[6] /= 2;
		else
			number[6] = (number[6] / 2) + 1;

		for (int i = 0; i < 9; i++) {
			if (number[i] > sum)
				sum = number[i];
		}
		System.out.println(sum);
	}

}
