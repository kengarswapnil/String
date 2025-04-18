import java.util.*;

public class FirstNonRepeatingElement {

    public static int firstNonRepeating(int[] arr) {
        Map<Integer, Integer> frequencyMap = new LinkedHashMap<>();

        // Count the frequency of each element
        for (int num : arr) {
            frequencyMap.put(num, frequencyMap.getOrDefault(num, 0) + 1);
        }

        // Find the first element with frequency 1
        for (Map.Entry<Integer, Integer> entry : frequencyMap.entrySet()) {
            if (entry.getValue() == 1) {
                return entry.getKey();
            }
        }

        // If no non-repeating element is found
        return -1;
    }

    public static void main(String[] args) {
        int[] arr = {4, 5, 1, 2, 0, 4};

        int result = firstNonRepeating(arr);
        if (result != -1) {
            System.out.println("First non-repeating element is: " + result);
        } else {
            System.out.println("No non-repeating elements found.");
        }
    }
}