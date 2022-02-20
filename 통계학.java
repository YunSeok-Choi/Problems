package implement;

import java.io.*;
import java.util.Arrays;

public class 통계학 {
	public static int[] c;
	public static int[] a;

	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		int n = Integer.parseInt(br.readLine());
		a = new int[n];
		c = new int[n];

		for (int i = 0; i < n; i++)
			a[i] = Integer.parseInt(br.readLine());

		merge_sort(a, 0, a.length - 1);

		for (int i : a)
			System.out.println(i);

		mid(a);

	}

	public static int avr(int[] a) {
		int sum = 0;
		for (int i = 0; i < a.length; i++)
			sum += a[i];
		sum /= a.length;

		return sum;
	}

	public static int mid(int[] a) {
		int re = a[a.length / 2];

		return re;
	}

	public static int man(int[] a) {

		return 0;
	}

	public static int range(int[] a) {
		return 0;
	}

	public static void merge_sort(int[] a, int l, int r) {
		if (l < r) {
			int m = (r + l) / 2;

			merge_sort(a, l, m);
			merge_sort(a, m + 1, r);

			merge(a, l, r, m);
		}
	}

	public static void merge(int[] a, int l, int r, int m) {
		int s = l, j = m + 1, k = l;

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

		for (int i = 0; i < a.length; i++)
			a[i] = c[i];

	}

}
