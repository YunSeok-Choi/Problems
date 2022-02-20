package implement;

import java.util.*;

public class 로프 {
	public static int[] c;

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int[] lope = new int[n];
		c = new int[n];

		for (int i = 0; i < n; i++)
			lope[i] = sc.nextInt();

		merge_sort(lope, 0, n - 1);

		int sum = lope[0] * n;

		for (int i = 1; i < n; i++) {
			int m = lope[i] * (n - i);
			if (sum < m)
				sum = m;
		}
		System.out.println(sum);

	}

	public static void merge_sort(int[] a, int l, int r) {
		if (l < r) {
			int m = (l + r) / 2;

			merge_sort(a, l, m);
			merge_sort(a, m + 1, r);

			merge(a, l, m, r);
		}
	}

	public static void merge(int[] a, int l, int m, int r) {
		int k = l, s = l, j = m + 1;

		while (s <= m && j <= r) {
			if (a[s] <= a[j]) {
				c[k] = a[s];
				s++;
			} else {
				c[k] = a[j];
				j++;
			}
			k++;
		}

		if (s > m) {
			for (int i = j; i <= r; i++) {
				c[k] = a[i];
				k++;
			}
		} else {
			for (int i = s; i <= m; i++) {
				c[k] = a[i];
				k++;
			}
		}

		for (int i = l; i <= r; i++) {
			a[i] = c[i];
		}
	}

}
