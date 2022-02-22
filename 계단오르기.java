package dp;

import java.util.*;

public class 계단오르기 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();

		int[] s = new int[n + 1];
		int[] dp = new int[n + 1];

		for (int i = 1; i <= n; i++)
			s[i] = sc.nextInt();

		dp[1] = s[1];

		if (n >= 2)
			dp[2] = s[1] + s[2];

		for (int i = 3; i <= n; i++)
			dp[i] = Math.max(dp[i - 2], dp[i - 3] + s[i - 1]) + s[i];

		System.out.println(dp[n]);

	}

}
