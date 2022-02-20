import java.util.*;
import java.io.*;

public class Main {
	public static ArrayList<Integer> stack = new ArrayList<>();
	public static int k = 0;

	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		int n = Integer.parseInt(br.readLine());

		for (int i = 0; i < n; i++) {
			String a[] = br.readLine().split(" ");
			switch (a[0]) {
			case "push":
				push(a[1]);
				break;
			case "pop":
				System.out.println(pop());
				break;
			case "size":
				System.out.println(size());
				break;
			case "empty":
				System.out.println(empty());
				break;
			case "top":
				System.out.println(top());
				break;
			}
		}

	}

	public static void push(String x) {
		stack.add(Integer.parseInt(x));
	}

	public static int pop() {
		if (stack.size() == 0)
			return -1;
		int x = stack.get(stack.size() - 1);
		stack.remove(stack.size() - 1);
		return x;
	}

	public static int size() {
		return stack.size();
	}

	public static int empty() {
		if (stack.isEmpty())
			return 1;
		else
			return 0;
	}

	public static int top() {
		if (stack.isEmpty())
			return -1;
		else
			return stack.get(stack.size() - 1);
	}
}
