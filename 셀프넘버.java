package implement;

import java.io.*;

public class 셀프넘버 {

	public static void main(String[] args) throws IOException {

		System.out.println(1);
		String c = "2";
		int n = Integer.parseInt(c);

		int[] dp = new int[10001];
		dp[n] = 1;

		while (n <= 10001) {
			if (c.length() == 1) {
				n += n;
				dp[n] = 1;
				c = String.valueOf(n);
			} else if (c.length() == 2) {
				String[] k = c.split("");
				n += Integer.parseInt(k[0]) + Integer.parseInt(k[1]);
				dp[n] = 1;
				c = String.valueOf(n);
			} else if (c.length() == 3) {
				String[] k = c.split("");
				n += Integer.parseInt(k[0]) + Integer.parseInt(k[1]) + Integer.parseInt(k[2]);
				dp[n] = 1;
				c = String.valueOf(n);
			} else if (c.length() == 4) {
				String[] k = c.split("");
				n += Integer.parseInt(k[0]) + Integer.parseInt(k[1]) + Integer.parseInt(k[2]) + Integer.parseInt(k[3]);
				if (n > 10000)
					break;
				dp[n] = 1;
				c = String.valueOf(n);
			}
		}

		for (int i = 2; i < dp.length; i++) {
			if (dp[i] != 1)
				System.out.println(i);

		}
	}

}
