public class BuildArray {
    public int[] buildArray(int[] nums) {
        if (nums.length == 0) {
            return new int[0];
        }

        int index = nums.length;

        int[] ans = new int[index];

        for (int i = 0; i < nums.length; i++) {
            ans[i] = nums[nums[i]];
        }
        return ans;
    }
}
