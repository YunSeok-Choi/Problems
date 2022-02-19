package implement;

import java.io.*;

public class 단어공부 {

	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String word = br.readLine();
		char[] c = new char[word.length()];
		int[] a = new int[26];
		int sum = 0, max = 0, j = 0;
		word = word.toUpperCase();

		for (int i = 0; i < word.length(); i++) {
			c[i] = word.charAt(i);
			a[c[i] - 65]++;

		}

		for (int i = 0; i < 26; i++) {
			if (sum == a[i]) {
				sum = a[i];
				max = sum;
				j = i;
				continue;
			}
			if (sum < a[i]) {
				sum = a[i];
				j = i;
			}
		}
		if (max == sum && word.length() != 1)
			System.out.println("?");
		else
			System.out.println(Character.toChars(j + 65));

	}

}
