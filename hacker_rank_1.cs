using System;
using System.Collections.Generic;

class HackerRank
{
    public static void miniMaxSum(List<int> arr)
    {
        int max, min, length;
        long maxSum, minSum;


        max = arr[0];
        min = arr[0];

        maxSum = 0;
        minSum = 0;

        length = arr.Count;

        for (int i = 0; i < length; i++)
        {
            if (arr[i] > max || arr[i] == max)
            {
                max = arr[i];
            } 

            if (arr[i] < min || arr[i] == min)
            {
                min = arr[i];
            }
    
        }
        for (int i = 0; i < length; i++)
        {
            maxSum += arr[i];
                    
            minSum += arr[i];
        }

        Console.WriteLine("{0} {1}", maxSum - max, minSum - min);
    }

    public static void Main(string[] args){
        var bigCities = new List<int>()
                    {
                        5,5,5,5,5             
                    };
        miniMaxSum(bigCities);
    }
}