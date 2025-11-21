import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        // DuplicatesSolution DS = new DuplicatesSolution();
        BuildArray BA = new BuildArray();

        /*
        //  * Duplicate Number Problem
         * int[] nums = {1,1,2,3,3,3,4,};
         * 
         * int k = DS.removeDuplicates(nums);
         * System.out.println("Number of unique elements: " + k);
         * System.out.print("Array after removing duplicates: ");
         * 
         * for (int i = 0; i < k; i++) {
         * System.out.print(nums[i] + " ");
         * }
         */

        int[] nums = { 0, 2, 1, 5, 3, 4 };
        int[] result = BA.buildArray(nums);

        System.out.println("Original array: " + Arrays.toString(nums));
        System.out.println("Built array: " + Arrays.toString(result));
    }
}