package implement;

import java.util.*;

public class 로봇청소기 {
	public static int[][] map;
	public static int[] dy = { -1, 0, 1, 0 };
	public static int[] dx = { 0, 1, 0, -1 };
	public static int n, m, d, botX, botY, sum = 1;

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		n = sc.nextInt();
		m = sc.nextInt();
		botY = sc.nextInt();
		botX = sc.nextInt();
		d = sc.nextInt();

		map = new int[n][m];

		for (int i = 0; i < n; i++)
			for (int j = 0; j < m; j++)
				map[i][j] = sc.nextInt();

		dfs(botY, botX, d);
		System.out.println(sum);
	}

	public static void dfs(int y, int x, int d) {
		map[y][x] = -1;

		for (int i = 0; i < 4; i++) {
			if (d == 0)
				d = 3;
			else
				d -= 1;

			int ny = y + dy[d];
			int nx = x + dx[d];

			if (nx >= 0 && ny >= 0 && nx < m && ny < n && map[ny][nx] == 0) {
				sum++;
				dfs(ny, nx, d);
				return;
			}
		}

		int by = y + dy[d];
		int bx = x + dx[d];

		if (by >= 0 && bx >= 0 && by < n && bx < m && map[by][bx] != 1)
			dfs(by, bx, d);
	}
}
