class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        #edge cases
        if numRows == 0:
            return []
        elif numRows == 1:
            return [[1]]
        elif numRows == 2:
            return [[1], [1, 1]]

        counter = 3
        ans = [[1], [1, 1]]
        prev = [1, 1]

        while (len(ans) < numRows):
            row = [1] * counter
            for i in range(1, len(row) - 1):
                row[i] = prev[i - 1] + prev[i]
            ans.append(row)
            prev = row
            counter += 1
        return ans
