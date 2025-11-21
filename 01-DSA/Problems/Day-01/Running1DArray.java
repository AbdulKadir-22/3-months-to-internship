public class Running1DArray {
    public int[] runningSum(int[] nums) {
        if(nums.length == 0){
            return new int[0];
        }
        int[] ans= new int[nums.length];
        ans[0] = nums[0];
        for(int i = 1; i< nums.length; i++){
            ans[i] = nums[i] + ans[i-1];
        }
        return ans;
    }
}
