package implement;

import java.io.*;

public class 슈퍼마리오 {

	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int[] m = new int[10];
		int l = 0, sum = 0;
		for (int i = 0; i < 10; i++) {
			String a = br.readLine();
			m[i] = Integer.parseInt(a);
			sum += m[i];

			if (sum < 100) {
				l = sum;
			} else {
				int r = 100 - l;
				sum -= 100;
				if (r >= sum) {
					System.out.println(sum + 100);
					break;
				} else if (r < sum) {
					System.out.println(l);
					break;
				}
			}
			if (i == 9)
				System.out.println(sum);
		}
	}

}
