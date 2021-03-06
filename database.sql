USE [master]
GO
/****** Object:  Database [computer-science-challenge]    Script Date: 2/4/2019 16:00:21 ******/
CREATE DATABASE [computer-science-challenge]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'computer-science-chanllenge', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\computer-science-chanllenge.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'computer-science-chanllenge_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\computer-science-chanllenge_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [computer-science-challenge] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [computer-science-challenge].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [computer-science-challenge] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [computer-science-challenge] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [computer-science-challenge] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [computer-science-challenge] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [computer-science-challenge] SET ARITHABORT OFF 
GO
ALTER DATABASE [computer-science-challenge] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [computer-science-challenge] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [computer-science-challenge] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [computer-science-challenge] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [computer-science-challenge] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [computer-science-challenge] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [computer-science-challenge] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [computer-science-challenge] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [computer-science-challenge] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [computer-science-challenge] SET  DISABLE_BROKER 
GO
ALTER DATABASE [computer-science-challenge] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [computer-science-challenge] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [computer-science-challenge] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [computer-science-challenge] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [computer-science-challenge] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [computer-science-challenge] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [computer-science-challenge] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [computer-science-challenge] SET RECOVERY FULL 
GO
ALTER DATABASE [computer-science-challenge] SET  MULTI_USER 
GO
ALTER DATABASE [computer-science-challenge] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [computer-science-challenge] SET DB_CHAINING OFF 
GO
ALTER DATABASE [computer-science-challenge] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [computer-science-challenge] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [computer-science-challenge] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'computer-science-challenge', N'ON'
GO
ALTER DATABASE [computer-science-challenge] SET QUERY_STORE = OFF
GO
USE [computer-science-challenge]
GO
/****** Object:  User [yanhlau2]    Script Date: 2/4/2019 16:00:21 ******/
CREATE USER [yanhlau2] FOR LOGIN [yanhlau2] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_datareader] ADD MEMBER [yanhlau2]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [yanhlau2]
GO
/****** Object:  Table [dbo].[chapter1_complexity]    Script Date: 2/4/2019 16:00:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter1_complexity](
	[questionNo] [int] NOT NULL,
	[question] [varchar](500) NOT NULL,
	[answerA] [varchar](200) NOT NULL,
	[answerB] [varchar](200) NOT NULL,
	[answerC] [varchar](200) NOT NULL,
	[answerD] [varchar](200) NOT NULL,
	[explanation] [varchar](1000) NOT NULL,
	[correctAnswer] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter2_recursive&binary]    Script Date: 2/4/2019 16:00:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter2_recursive&binary](
	[questionNo] [int] NOT NULL,
	[question] [varchar](500) NOT NULL,
	[answerA] [varchar](200) NOT NULL,
	[answerB] [varchar](200) NOT NULL,
	[answerC] [varchar](200) NOT NULL,
	[answerD] [varchar](200) NOT NULL,
	[explanation] [varchar](500) NOT NULL,
	[correctAnswer] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter3_array&list]    Script Date: 2/4/2019 16:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter3_array&list](
	[questionNo] [int] NOT NULL,
	[question] [varchar](500) NOT NULL,
	[answerA] [varchar](200) NOT NULL,
	[answerB] [varchar](200) NOT NULL,
	[answerC] [varchar](200) NOT NULL,
	[answerD] [varchar](200) NOT NULL,
	[explanation] [varchar](1000) NOT NULL,
	[correctAnswer] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter4_bubble&insertion]    Script Date: 2/4/2019 16:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter4_bubble&insertion](
	[questionNo] [int] NOT NULL,
	[question] [varchar](500) NOT NULL,
	[answerA] [varchar](200) NOT NULL,
	[answerB] [varchar](200) NOT NULL,
	[answerC] [varchar](200) NOT NULL,
	[answerD] [varchar](200) NOT NULL,
	[explanation] [varchar](1000) NOT NULL,
	[correctAnswer] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter5_quick_sort]    Script Date: 2/4/2019 16:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter5_quick_sort](
	[questionNo] [int] NOT NULL,
	[question] [varchar](500) NOT NULL,
	[answerA] [varchar](200) NOT NULL,
	[answerB] [varchar](200) NOT NULL,
	[answerC] [varchar](200) NOT NULL,
	[answerD] [varchar](200) NOT NULL,
	[explanation] [varchar](1000) NOT NULL,
	[correctAnswer] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter6_merge_sort]    Script Date: 2/4/2019 16:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter6_merge_sort](
	[questionNo] [int] NOT NULL,
	[question] [varchar](500) NOT NULL,
	[answerA] [varchar](200) NOT NULL,
	[answerB] [varchar](200) NOT NULL,
	[answerC] [varchar](200) NOT NULL,
	[answerD] [varchar](200) NOT NULL,
	[explanation] [varchar](1000) NOT NULL,
	[correctAnswer] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter7_heap&bucket&radix]    Script Date: 2/4/2019 16:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter7_heap&bucket&radix](
	[questionNo] [int] NOT NULL,
	[question] [varchar](500) NOT NULL,
	[answerA] [varchar](200) NOT NULL,
	[answerB] [varchar](200) NOT NULL,
	[answerC] [varchar](200) NOT NULL,
	[answerD] [varchar](200) NOT NULL,
	[explanation] [varchar](1000) NOT NULL,
	[correctAnswer] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter8_hashTable]    Script Date: 2/4/2019 16:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter8_hashTable](
	[questionNo] [int] NOT NULL,
	[question] [varchar](500) NOT NULL,
	[answerA] [varchar](200) NOT NULL,
	[answerB] [varchar](200) NOT NULL,
	[answerC] [varchar](200) NOT NULL,
	[answerD] [varchar](200) NOT NULL,
	[explanation] [varchar](1000) NOT NULL,
	[correctAnswer] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chapter9_binarySearchTree]    Script Date: 2/4/2019 16:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chapter9_binarySearchTree](
	[questionNo] [int] NOT NULL,
	[question] [varchar](500) NOT NULL,
	[answerA] [varchar](200) NOT NULL,
	[answerB] [varchar](200) NOT NULL,
	[answerC] [varchar](200) NOT NULL,
	[answerD] [varchar](200) NOT NULL,
	[explanation] [varchar](1000) NOT NULL,
	[correctAnswer] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Statistic]    Script Date: 2/4/2019 16:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statistic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userId] [varchar](200) NULL,
	[chapter] [varchar](200) NULL,
	[totalAttempt] [int] NULL,
	[correctCount] [int] NULL,
	[marks] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[chapter1_complexity] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (1, N'In a competition, four different functions are observed. All the functions use a single for loop and within the for loop, same set of statements are executed. Consider the following for loops:', N'for(i = 0; i < n; i++)', N'for(i = 0; i < n; i += 2)', N'for(i = 1; i < n; i *= 2)', N'for(i = n; i > -1; i /= 2)', N'The time complexity of first for loop is O(n). The time complexity of second for loop is O(n/2), equivalent to O(n) in asymptotic analysis. The time complexity of third for loop is O(logn). The fourth for loop doesn''t terminate.', N'c')
INSERT [dbo].[chapter1_complexity] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (2, N'What does it mean when we say that an algorithm X is asymptotically more efficient than Y?', N'X will be a better choice for all inputs', N'X will be a better choice for all inputs except small inputs', N'X will be a better choice for all inputs except large inputs', N'Y will be a better choice for small inputs', N'In asymptotic analysis we consider growth of algorithm in terms of input size. An algorithm X is said to be asymptotically better than Y if X takes smaller time than y for all input sizes n larger than a value n0 where n0 > 0.', N'b')
INSERT [dbo].[chapter1_complexity] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (3, N'What is the time complexity of Floyd–Warshall algorithm to calculate all pair shortest path in a graph with n vertices?', N'O(n^2logn)', N'Theta(n^2logn)', N'Theta(n^4)', N'Theta(n^3)', N'Floyd–Warshall algorithm uses three nested loops to calculate all pair shortest path. So, time complexity is Thete(n^3).', N'd')
INSERT [dbo].[chapter1_complexity] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (4, N'Which of the following sorting algorithms has the lowest worst-case complexity?', N'Merge Sort', N'Bubble Sort', N'Quick Sort', N'Selection Sort', N'Worst case complexities for the above sorting algorithms are as follows: Merge Sort — nLogn Bubble Sort — n^2 Quick Sort — n^2 Selection Sort — n^2', N'a')
INSERT [dbo].[chapter1_complexity] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (5, N'Two matrices M1 and M2 are to be stored in arrays A and B respectively. Each array can be stored either in row-major or column-major order in contiguous memory locations. The time complexity of an algorithm to compute M1 × M2 will be', N'best if A is in row-major, and B is in column- major order', N'best if both are in row-major order', N'best if both are in column-major order', N'independent of the storage scheme', N'This is a trick question. Note that the questions asks about time complexity, not time taken by the program. for time complexity, it doesn''t matter how we store array elements, we always need to access same number of elements of M1 and M2 to multiply the matrices. It is always constant or O(1) time to do element access in arrays, the constants may differ for different schemes, but not the time complexity.', N'd')
INSERT [dbo].[chapter1_complexity] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (6, N'An unordered list contains n distinct elements. The number of comparisons to find an element in this list that is neither maximum nor minimum is', N'Θ(nlogn)', N'Θ(n)', N'Θ(logn)', N'Θ(1)', N'We only need to consider any 3 elements and compare them. So the number of comparisons is constants, that makes time complexity as Θ(1) The catch here is, we need to return any element that is neither maximum not minimum. Let us take an array {10, 20, 15, 7, 90}. Output can be 10 or 15 or 20 Pick any three elements from given liar. Let the three elements be 10, 20 and 7. Using 3 comparisons, we can find that the middle element is 10.', N'd')
INSERT [dbo].[chapter1_complexity] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (7, N'Given A, an array of size n, comprised of an increasing sequence of numbers followed immediately by a decreasing one. What is worst case time complexity of optimal algorithm to determine if a given number x is in the array?', N'Θ(log n)', N'Θ(n)', N'Θ(n^2)', N'Θ(log n)^2', N'This is an application of Binary search, which has time complexity Θ(log n) in worst case. Option (A) is correct.', N'a')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (1, N'The recurrence relation capturing the optimal time of the Tower of Hanoi problem with n discs is. (GATE CS 2012)', N'T(n) = 2T(n – 2) + 2', N'T(n) = 2T(n – 1) + n', N'T(n) = 2T(n/2) + 1', N'T(n) = 2T(n – 1) + 1', N'Following are the steps to follow to solve Tower of Hanoi problem recursively.
Let the three pegs be A, B and C. The goal is to move n pegs from A to C.
To move n discs from peg A to peg C:
    move n-1 discs from A to B. This leaves disc n alone on peg A
    move disc n from A to C
    move n?1 discs from B to C so they sit on disc n
The recurrence function T(n) for time complexity of the above recursive solution can be written as following. T(n) = 2T(n-1) + 1', N'd')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (2, N'In general, in a recursive and non-recursive implementation of a problem (program) :', N'Both time and space complexities are better in recursive than in non-recursive program.', N'Both time and space complexities are better in non-recursive than in recursive program', N'Time complexity is better in recursive version but space complexity is better in non-recursive version of the program.', N'Space complexity is better in recursive version but time complexity is better in non-recursive version of the program.', N'In general, in a recursive and non-recursive implementation of a problem (program) both time and space complexities are better in non-recursive than in recursive program. In some program recursive implementation gives worst case scenario too. So, recursive implementation does not guarantee for best case all the time. So, optipon (B) is correct.', N'b')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (3, N'The solution of the recurrence relation T(m) = T( 3m / 4) + 1 is :', N'θ (lg m)', N'θ (m)', N'θ (mlg m)', N'θ (lglg m)', N'None', N'a')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (4, N'Consider the code fragment written in C below :
void f (int n)
{ 
  if (n <=1)  {
   printf ("%d", n);
  }
  else {
   f (n/2);
   printf ("%d", n%2);
  }
}
Run on IDE
What does f(173) print?', N'010110101', N'010101101', N'10110101', N'10101101', N'(173)2 = 10101101', N'd')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (5, N'Consider the following recursive function fun(x, y). What is the value of fun(4, 3)
int fun(int x, int y) 
{
  if (x == 0)
    return y;
  return fun(x - 1,  x + y);
} 
', N'13', N'12', N'9', N'10', N'The function fun() calculates and returns ((1 + 2 … + x-1 + x) +y) which is x(x+1)/2 + y.', N'a')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (6, N'What does the following function print for n = 25?
void fun(int n)
{
  if (n == 0)
    return;
 
  printf("%d", n%2);
  fun(n/2);
}  ', N'11001', N'10011', N'11111', N'00000', N'The function mainly prints binary representation in reverse order.', N'b')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (7, N'Which of the following is correct recurrence for worst case of Binary Search?', N'T(n) = 2T(n/2) + O(1) and T(1) = T(0) = O(1)', N'T(n) = T(n-1) + O(1) and T(1) = T(0) = O(1)', N'T(n) = T(n/2) + O(1) and T(1) = T(0) = O(1)', N'T(n) = T(n-2) + O(1) and T(1) = T(0) = O(1)', N'Following is typical implementation of Binary Search. In Binary Search, we first compare the given element x with middle of the array. If x matches with middle element, then we return middle index. Otherwise, we either recur for left half of array or right half of array. So recurrence is T(n) = T(n/2) + O(1)', N'c')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (8, N'Given a sorted array of integers, what can be the minimum worst case time complexity to find ceiling of a number x in given array? Ceiling of an element x is the smallest element present in array which is greater than or equal to x. Ceiling is not present if x is greater than the maximum element present in array. For example, if the given array is {12, 67, 90, 100, 300, 399} and x = 95, then output should be 100.', N'O(LogLogn)', N'O(n)', N'O(Logn)', N'O(Logn * Logn)', N'We modify standard binary search to find ceiling. The time complexity T(n) can be written as T(n) <= T(n/2) + O(1) Solution of above recurrence can be obtained by Master Method. It falls in case 2 of Master Method. Solution is O(Logn).', N'c')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (9, N'You are given a list of 5 integers and these integers are in the range from 1 to 6. There are no duplicates in list. One of the integers is missing in the list. Which of the following expression would give the missing number. ^ is bitwise XOR operator. ~ is bitwise NOT operator. Let elements of list can be accessed as list[0], list[1], list[2], list[3], list[4]', N'list[0] ^ list[1] ^ list[2] ^ list[3] ^ list[4]', N'list[0] ^ list[1] ^ list[2] ^ list[3] ^ list[4] ^ 1 ^ 2 ^ 3 ^ 4 ^ 5 ^ 6', N'list[0] ^ list[1] ^ list[2] ^ list[3] ^ list[4] ^ 1 ^ 2 ^ 3 ^ 4 ^ 5', N'~(list[0] ^ list[1] ^ list[2] ^ list[3] ^ list[4])', N'XOR of all list elements and numbers from 1 to 6 gives the missing number.', N'b')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (10, N'Consider a sorted array of n numbers. What would be the time complexity of the best known algorithm to find a pair a and b such that |a-b| = k , k being a positive integer.', N'O(n)', N'O(nlog n)', N'O(n2)', N'O(logn)', N'Just maintain two pointers at the start and accordingly increment one of them depending upon whether difference is less than or greater than k.Just a single pass is required so the answer is O(n).', N'a')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (11, N'The average number of key comparisons done in a successful sequential search in a list of length it is', N'log n', N'(n-1)/2', N'n/2', N'(n+1)/2', N'None', N'd')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (12, N'The recurrence relation that arises in relation with the complexity of binary search is:', N'T(n) = 2T(n/ 2) + k , where k is constant', N'	T(n) = T(n / 2) + k , where k is constant', N'T(n) = T(n / 2) + log n', N'T(n) = T(n / 2) + n', N'Binary Search is a linear searching algorithm and takes O(log n) when array is sorted. Refer: Binary Search T(n) = T(n / 2) + k , where k is constant produces a complexity of O(log n)', N'b')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (13, N'The average number of key comparisons required for a successful search for sequential search on items is', N'n/2', N'(n-1)/2', N'(n+1)/2', N'None of these', N'None', N'c')
INSERT [dbo].[chapter2_recursive&binary] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (14, N'The average case occurs in the Linear Search Algorithm when:', N'The item to be searched is in some where middle of the Array', N'The item to be searched is not in the array', N'The item to be searched is in the last of the array', N'The item to be searched is either in the last or not in the array', N'The average case occurs in the Linear Search Algorithm when the item to be searched is in some where middle of the Array.
The best case occurs in the Linear Search Algorithm when the item to be searched is in starting of the Array.
The worst case occurs in the Linear Search Algorithm when the item to be searched is in end of the Array.
So, option (A) is correct.', N'a')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (1, N'Which of the following points is/are true about Linked List data structure when it is compared with array', N'Arrays have better cache locality that can make them better in terms of performance.', N'Random access is not allowed in a typical implementation of Linked Lists', N'The size of array has to be pre-decided, linked lists can change their size any time.', N'All of the above', N'See http://www.geeksforgeeks.org/linked-list-vs-array/ for explanation.', N'd')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (2, N'Which of the following sorting algorithms can be used to sort a random linked list with minimum time complexity?', N'Insertion Sort', N'Quick Sort', N'Heap Sort', N'Merge Sort', N'Both Merge sort and Insertion sort can be used for linked lists. The slow random-access performance of a linked list makes other algorithms (such as quicksort) perform poorly, and others (such as heapsort) completely impossible. Since worst case time complexity of Merge Sort is O(nLogn) and Insertion sort is O(n^2), merge sort is preferred.', N'd')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (3, N'In the worst case, the number of comparisons needed to search a singly linked list of length n for a given element is ', N'log 2 n', N'n/2', N'log 2 n – 1', N'n', N'In the worst case, the element to be searched has to be compared with all elements of linked list.', N'd')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (4, N'Suppose each set is represented as a linked list with elements in arbitrary order. Which of the operations among union, intersection, membership, cardinality will be the slowest?', N'union only', N'intersection, membership', N'membership, cardinality', N'union, intersection', N'For getting intersection of L1 and L2, search for each element of L1 in L2 and print the elements we find in L2. There can be many ways for getting union of L1 and L2. One of them is as follows a) Print all the nodes of L1 and print only those which are not present in L2. b) Print nodes of L2. All of these methods will require more operations than intersection as we have to process intersection node plus other nodes.', N'd')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (5, N'What are the time complexities of finding 8th element from beginning and 8th element from end in a singly linked list? Let n be the number of nodes in linked list, you may assume that n > 8.', N'O(1) and O(n)', N'O(1) and O(1)', N'O(n) and O(1)', N'O(n) and O(n)', N'Finding 8th element from beginning requires 8 nodes to be traversed which takes constant time. Finding 8th from end requires the complete list to be traversed.', N'a')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (6, N'Is it possible to create a doubly linked list using only one pointer with every node.', N'Not Possible', N'Yes, possible by storing XOR of addresses of previous and next nodes.', N'Yes, possible by storing XOR of current node and next node', N'Yes, possible by storing XOR of current node and previous node', N'https://www.geeksforgeeks.org/xor-linked-list-a-memory-efficient-doubly-linked-list-set-1/', N'b')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (7, N'Given pointer to a node X in a singly linked list. Only one pointer is given, pointer to head node is not given, can we delete the node X from given linked list?', N'Possible if X is not last node. Use following two steps (a) Copy the data of next of X to X. (b) Delete next of X.', N'Possible if size of linked list is even.', N'Possible if size of linked list is odd', N'Possible if X is not first node. Use following two steps (a) Copy the data of next of X to X. (b) Delete next of X.', N'Following are simple steps.
    struct node *temp  = X->next;
    X->data  = temp->data;
    X->next  = temp->next;
    free(temp); ', N'a')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (8, N'You are given pointers to first and last nodes of a singly linked list, which of the following operations are dependent on the length of the linked list?', N'Delete the first element', N'Insert a new element as a first element', N'Delete the last element of the list', N'Add a new element at the end of the list', N'a) Can be done in O(1) time by deleting memory and changing the first pointer. b) Can be done in O(1) time, see push() here c) Delete the last element requires pointer to previous of last, which can only be obtained by traversing the list. d) Can be done in O(1) by changing next of last and then last.', N'c')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (9, N'Let P be a singly linked list. Let Q be the pointer to an intermediate node x in the list. What is the worst-case time complexity of the best known algorithm to delete the node x from the list?', N'O(n)', N'O(log2 n)', N'O(logn)', N'O(1)', N'A simple solution is to traverse the linked list until you find the node you want to delete. But this solution requires pointer to the head node which contradicts the problem statement. Fast solution is to copy the data from the next node to the node to be deleted and delete the next node.Time complexity of this approach is O(1) Refer this for implementation. Note that this approach doesn''t work when node to deleted is last node. Since the question says intermediate node, we can use this approach.', N'd')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (10, N'N items are stored in a sorted doubly linked list. For a delete operation, a pointer is provided to the record to be deleted. For a decrease-key operation, a pointer is provided to the record on which the operation is to be performed. An algorithm performs the following operations on the list in this order: Θ(N) delete, O(log N) insert, O(log N) find, and Θ(N) decrease-key What is the time complexity of all these operations put together', N'O(Log2N)', N'O(N)', N'O(N2)', N'Θ(N2 Log N)', N'The time complexity of decrease-key operation is Θ(1) since we have the pointer to the record where we have to perform the operation. However, we must keep the doubly linked list sorted and after the decrease-key operation we need to find the new location of the key. This step will take Θ(N) time and since there are Θ(N) decrease-key operations, the time complexity becomes O(N2). Note that the other three operations have a lower bound than this one.', N'c')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (11, N'The concatenation of two lists is to be performed in O(1) time. Which of the following implementations of a list should be used?', N'singly linked list', N'doubly linked list', N'circular doubly linked list', N'array implementation of lists', N'Singly linked list cannot be answer because we cannot find last element of a singly linked list in O(1) time. Doubly linked list cannot also not be answer because of the same reason as singly linked list.', N'c')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (12, N'Suppose there are two singly linked lists both of which intersect at some point and become a single linked list. The head or start pointers of both the lists are known, but the intersecting node and lengths of lists are not known. What is worst case time complexity of optimal algorithm to find intersecting node from two intersecting linked lists?', N'Θ(n*m), where m, n are lengths of given lists', N'Θ(n^2), where m>n and m, n are lengths of given lists', N'Θ(m+n), where m, n are lengths of given lists', N'Θ(min(n, m)), where m, n are lengths of given lists', N'This takes Θ(m+n) time and O(1) space in worst case, where M and N are the total length of the linked lists.
Traverse the two linked list to find m and n.
Get back to the heads, then traverse |m ? n| nodes on the longer list.
Now walk in lock step and compare the nodes until you found the common ones.
Option (C) is correct.', N'c')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (15, N'The time required to search an element in a linked list of length n is', N'O (log n)', N'O (n)', N'O (1)', N'O(n2)', N'In the worst case, the element to be searched has to be compared with all elements of linked list. It will take O(n) time to search the element. So, option (B) is correct.', N'b')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (16, N'Which of the following operations is performed more efficiently by doubly linked list than by linear linked list?', N'Deleting a node whose location is given', N'Searching an unsorted list for a given item', N'Inserting a node after the node with a given location', N'Traversing the list to process each node', N'no', N'a')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (13, N'In a doubly linked list, the number of pointers affected for an insertion operation will be', N'4', N'0', N'1', N'None of these', N'This depends on whether we are inserting the new node in the middle of the list (surrounded by two nodes), or at the head or tail of the list. Insertion at the middle node will affect 4 pointers whereas at the head or tail will affect only 2 pointers. So, option (D) is correct.', N'd')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (14, N'Consider an implementation of unsorted single linked list. Suppose it has its representation with a head and a tail pointer (i.e. pointers to the first and last nodes of the linked list). Given the representation, which of the following operation can not be implemented in O(1) time ?', N'Insertion at the front of the linked list.', N'Insertion at the end of the linked list.', N'Deletion of the front node of the linked list.', N'Deletion of the last node of the linked list.', N'Deletion of the last node of the linked list, we need address of second last node of single linked list to make NULL of its next pointer. Since we can not access its previous node in singly linked list, so need to traverse entire linked list to get second last node of linked list. So, option (D) is correct.', N'd')
INSERT [dbo].[chapter3_array&list] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (17, N'Consider a singly linked list of the form where F is a pointer to the first element in the linked list and L is the pointer to the last element in the list. The time of which of the following operations depends on the length of the list?', N'Delete the last element of the list', N'Delete the first element of the list', N'Add an element after the last element of the list', N'Interchange the first two elements of the list', N'no', N'a')
INSERT [dbo].[chapter4_bubble&insertion] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (1, N'What is the best time complexity of bubble sort?', N'N^2', N'NlogN', N'N', N'N(logN)^2', N'The bubble sort is at its best if the input data is sorted', N'c')
INSERT [dbo].[chapter4_bubble&insertion] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (2, N'What is the worst case time complexity of insertion sort where position of the data to be inserted is calculated using binary search?', N'N', N'NlogN', N'N^2', N'N(logN)^2', N'Applying binary search to calculate the position of the data to be inserted doesn''t reduce the time complexity of insertion sort. This is because insertion of a data at an appropriate position involves two steps: 1. Calculate the position. 2. Shift the data from the position calculated in step #1 one step right to create a gap where the data will be inserted. Using binary search reduces the time complexity in step #1 from O(N) to O(logN). But, the time complexity in step #2 still remains O(N). So, overall complexity remains O(N^2).', N'c')
INSERT [dbo].[chapter4_bubble&insertion] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (3, N'The tightest lower bound on the number of comparisons, in the worst case, for comparison-based sorting is of the order of', N'N', N'N^2', N'NlogN', N'N(logN)^2', N'The number of comparisons that a comparison sort algorithm requires increases in proportion to Nlog(N), where N is the number of elements to sort. This bound is asymptotically tight: Given a list of distinct numbers (we can assume this because this is a worst-case analysis), there are N factorial permutations exactly one of which is the list in sorted order. The sort algorithm must gain enough information from the comparisons to identify the correct permutations. If the algorithm always completes after at most f(N) steps, it cannot distinguish more than 2^f(N) cases because the keys are distinct and each comparison has only two possible outcomes. Therefore, 2^f(N) >= N! or equivalently f(N) >= log(N!). Since log(N!) is Omega(NlogN), the answer is NlogN.', N'c')
INSERT [dbo].[chapter4_bubble&insertion] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (4, N'In a permutation a1.....an of n distinct integers, an inversion is a pair (ai, aj) such that i < j and ai > aj. What would be the worst case time complexity of the Insertion Sort algorithm, if the inputs are restricted to permutations of 1.....n with at most n inversions?', N'Θ (n^2)', N'Θ (n log n)', N'Θ (n1.5)', N'Θ (n)', N'Insertion sort runs in Θ(n + f(n)) time, where f(n) denotes the number of inversion initially present in the array being sorted.', N'd')
INSERT [dbo].[chapter4_bubble&insertion] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (5, N'The auxiliary space of insertion sort is O(1), what does O(1) mean ?', N'The memory (space) required to process the data is not constant.', N'It means the amount of extra memory Insertion Sort consumes doesn''t depend on the input. The algorithm should use the same amount of memory for all inputs.', N'It takes only 1 kb of memory', N'	It is the speed at which the elements are traversed.', N'The term O(1) states that the space required by the insertion sort is constant i.e., space required doesn''t depend on input.', N'b')
INSERT [dbo].[chapter4_bubble&insertion] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (6, N'A sorting technique is called stable if:', N'It takes O(nlog n)time', N'It maintains the relative order of occurrence of non-distinct elements', N'It uses divide and conquer paradigm', N'It takes O(n) space', N'no', N'b')
INSERT [dbo].[chapter4_bubble&insertion] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (7, N'Consider an array of elements arr[5]= {5,4,3,2,1} , what are the steps of insertions done while doing insertion sort in the array.  ', N'4 5 3 2 1 3 4 5 2 1 2 3 4 5 1 1 2 3 4 5', N'5 4 3 1 2 5 4 1 2 3 5 1 2 3 4 1 2 3 4 5', N'4 3 2 1 5 3 2 1 5 4 2 1 5 4 3 1 5 4 3 2', N'4 5 3 2 1 2 3 4 5 1 3 4 5 2 1 1 2 3 4 5', N'In the insertion sort , just imagine that the first element is already sorted and all the right side Elements are unsorted, we need to insert all elements one by one from left to right in the sorted Array. Sorted : 5                                unsorted : 4 3 2 1 Insert all elements less than 5 on the left (Considering 5 as the key ) Now key value is 4 and array will look like this Sorted : 4 5                             unsorted : 3 2 1 Similarly for all the cases the key will always be the newly inserted value and all the values will be compared to that key and inserted in to proper position.', N'a')
INSERT [dbo].[chapter4_bubble&insertion] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (8, N'Which is the correct order of the following algorithms with respect to their time Complexity in the best case ?', N'Merge sort > Quick sort >Insertion sort > selection sort', N'insertion sort < Quick sort < Merge sort < selection sort', N'Merge sort > selection sort > quick sort > insertion sort', N'Merge sort > Quick sort > selection sort > insertion sort', N'In best case, 

Quick sort: O (nlogn) 
Merge sort: O (nlogn)
Insertion sort: O (n)
Selection sort: O (n^2)', N'b')
INSERT [dbo].[chapter4_bubble&insertion] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (9, N'Consider the array A[]= {6,4,8,1,3} apply the insertion sort to sort the array . Consider the cost associated with each sort is 25 rupees , what is the total cost of the insertion sort when element 1 reaches the first position of the array  ?', N'50', N'25', N'70', N'100', N'When the element 1 reaches the first position of the array two comparisons are only required hence 25 * 2= 50 rupees. *step 1: 4 6 8 1 3 . *step 2: 1 4 6 8 3.', N'a')
INSERT [dbo].[chapter4_bubble&insertion] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (10, N'Which of the following sorting algorithms has the minimum running time complexity in the best and average case?', N'Insertion sort, Quick sort', N'Quick sort, Quick sort', N'Quick sort, Insertion sort', N'Insertion sort, Insertion sort', N'Insertion sort has a best case complexity of O(n), if the array is already sorted while it has an average case complexity of O(n2) Quick sort has a best case complexity of O(n log n), while it has an average case complexity of O(n log n) also. So, option (A) is correct.', N'a')
INSERT [dbo].[chapter5_quick_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (1, N'What is recurrence for worst case of QuickSort and what is the time complexity in Worst case?', N'Recurrence is T(n) = T(n-2) + O(n) and time complexity is O(n^2)', N'Recurrence is T(n) = T(n-1) + O(n) and time complexity is O(n^2)', N'Recurrence is T(n) = 2T(n/2) + O(n) and time complexity is O(nLogn)', N'Recurrence is T(n) = T(n/10) + T(9n/10) + O(n) and time complexity is O(nLogn)', N'The worst case of QuickSort occurs when the picked pivot is always one of the corner elements in sorted array. In worst case, QuickSort recursively calls one subproblem with size 0 and other subproblem with size (n-1). So recurrence is T(n) = T(n-1) + T(0) + O(n) The above expression can be rewritten as T(n) = T(n-1) + O(n)', N'b')
INSERT [dbo].[chapter5_quick_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (2, N'Suppose we have a O(n) time algorithm that finds median of an unsorted array. Now consider a QuickSort implementation where we first find median using the above algorithm, then use median as pivot. What will be the worst case time complexity of this modified QuickSort.', N'O(n^2 Logn)', N'O(n^2)', N'O(n Logn Logn)', N'O(nLogn)', N'If we use median as a pivot element, then the recurrence for all cases becomes T(n) = 2T(n/2) + O(n) The above recurrence can be solved using Master Method. It falls in case 2 of master method.', N'd')
INSERT [dbo].[chapter5_quick_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (3, N'Consider the Quicksort algorithm. Suppose there is a procedure for finding a pivot element which splits the list into two sub-lists each of which contains at least one-fifth of the elements. Let T(n) be the number of comparisons required to sort n elements. Then', N'T(n) <= 2T(n/5) + n', N'T(n) <= T(n/5) + T(4n/5) + n', N'T(n) <= 2T(4n/5) + n', N'T(n) <= 2T(n/2) + n', N'For the case where n/5 elements are in one subset, T(n/5) comparisons are needed for the first subset with n/5 elements, T(4n/5) is for the rest 4n/5 elements, and n is for finding the pivot. If there are more than n/5 elements in one set then other set will have less than 4n/5 elements and time complexity will be less than T(n/5) + T(4n/5) + n because recursion tree will be more balanced.', N'b')
INSERT [dbo].[chapter5_quick_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (4, N'You have an array of n elements. Suppose you implement quicksort by always choosing the central element of the array as the pivot. Then the tightest upper bound for the worst case performance is', N'O(n2)', N'O(nLogn)', N'Theta(nLogn)', N'O(n3)', N'For any input, there are some permutations for which worst case will be O(n2).  In some case, choosing the middle element minimizes the chances of encountering O(n2), but in worst case it can go to O(n2). Whichever element we take as Pivot, either first or middle, worst case will be O(n2) since Pivot is fixed in position. While choosing a random pivot minimizes the chances of encountering worst case i.e. O(n2). Refer this article on Quick Sort.', N'a')
INSERT [dbo].[chapter5_quick_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (5, N'Randomized quicksort is an extension of quicksort where the pivot is chosen randomly. What is the worst case complexity of sorting n numbers using randomized quicksort?', N'O(n)', N'O(n Log n)', N'O(n2)', N'O(n!)', N'Randomized quicksort has expected time complexity as O(nLogn), but worst case time complexity remains same. In worst case the randomized function can pick the index of corner element every time.', N'c')
INSERT [dbo].[chapter5_quick_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (6, N'Which one of the following is the recurrence equation for the worst case time complexity of the Quicksort algorithm for sorting n(? 2) numbers? In the recurrence equations given in the options below, c is a constant.', N'T(n) = 2T (n/2) + cn', N'T(n) = T(n – 1) + T(0) + cn', N'T(n) = 2T (n – 2) + cn', N'T(n) = T(n/2) + cn', N'In worst case, the chosen pivot is always placed at a corner position and recursive call is made for following. a) for subarray on left of pivot which is of size n-1 in worst case. b) for subarray on right of pivot which is of size 0 in worst case.', N'b')
INSERT [dbo].[chapter5_quick_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (7, N'Given an unsorted array. The array has this property that every element in array is at most k distance from its position in sorted array where k is a positive integer smaller than size of array. Which sorting algorithm can be easily modified for sorting this array and what is the obtainable time complexity?', N'Insertion Sort with time complexity O(kn)', N'Heap Sort with time complexity O(nLogk)', N'Quick Sort with time complexity O(kLogk)', N'Merge Sort with time complexity O(kLogk)', N'See http://www.geeksforgeeks.org/nearly-sorted-algorithm/ for explanation and implementation.', N'b')
INSERT [dbo].[chapter5_quick_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (8, N'Consider a situation where swap operation is very costly. Which of the following sorting algorithms should be preferred so that the number of swap operations are minimized in general?', N'Heap Sort', N'Selection Sort', N'Insertion Sort', N'Merge Sort', N'Selection sort makes O(n) swaps which is minimum among all sorting algorithms mentioned above.', N'b')
INSERT [dbo].[chapter5_quick_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (9, N'Which of the following is not true about comparison based sorting algorithms?', N'The minimum possible time complexity of a comparison based sorting algorithm is O(nLogn) for a random input array', N'Any comparison based sorting algorithm can be made stable by using position as a criteria when two elements are compared', N'Counting Sort is not a comparison based sorting algortihm', N'Heap Sort is not a comparison based sorting algorithm.', N'See http://www.geeksforgeeks.org/lower-bound-on-comparison-based-sorting-algorithms/ for point A. See http://www.geeksforgeeks.org/stability-in-sorting-algorithms/ for B. C is true, count sort is an Integer Sorting algorithm.', N'd')
INSERT [dbo].[chapter5_quick_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (10, N'Suppose we are sorting an array of eight integers using heapsort, and we have just finished some heapify (either maxheapify or minheapify) operations. The array now looks like this: 16 14 15 10 12 27 28 How many heapify operations have been performed on root of heap?', N'1', N'2', N'3 or 4', N'5 or 6', N'In Heapsort, we first build a heap, then we do following operations till the heap size becomes 1. a) Swap the root with last element b) Call heapify for root c) reduce the heap size by 1. In this question, it is given that heapify has been called few times and we see that last two elements in given array are the 2 maximum elements in array. So situation is clear, it is maxheapify whic has been called 2 times.', N'b')
INSERT [dbo].[chapter6_merge_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (1, N'In a modified merge sort, the input array is splitted at a position one-third of the length(N) of the array. What is the worst case time complexity of this merge sort?', N'N(logN base 3)', N'N(logN base 2/3)', N'N(logN base 1/3)', N'N(logN base 3/2)', N'The time complexity is given by: T(N) = T(N/3) + T(2N/3) + N Solving the above recurrence relation gives, T(N) = N(logN base 3/2)', N'd')
INSERT [dbo].[chapter6_merge_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (2, N'The worst case running times of Insertion sort, Merge sort and Quick sort, respectively, are:', N'Θ(n log n), Θ(n log n) and Θ(n2)', N'Θ(n2), Θ(n2) and Θ(n Log n)', N'Θ(n2), Θ(n log n) and Θ(n log n)', N'Θ(n2), Θ(n log n) and Θ(n2)', N'Insertion Sort takes Θ(n2) in worst case as we need to run two loops. The outer loop is needed to one by one pick an element to be inserted at right position. Inner loop is used for two things, to find position of the element to be inserted and moving all sorted greater elements one position ahead. Therefore the worst case recursive formula is T(n) = T(n-1) + Θ(n).
Merge Sort takes Θ(n Log n) time in all cases. We always divide array in two halves, sort the two halves and merge them. The recursive formula is T(n) = 2T(n/2) + Θ(n).
QuickSort takes Θ(n2) in worst case. In QuickSort, we take an element as pivot and partition the array around it. In worst case, the picked element is always a corner element and recursive formula becomes T(n) = T(n-1) + Θ(n). An example scenario when worst case happens is, arrays is sorted and our code always picks a corner element as pivot.', N'd')
INSERT [dbo].[chapter6_merge_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (3, N'If one uses straight two-way merge sort algorithm to sort the following elements in ascending order 20, 47, 15, 8, 9, 4, 40, 30, 12, 17 then the order of these elements after the second pass of the algorithm is:', N'8, 9, 15, 20, 47, 4, 12, 17, 30, 40', N'8, 15, 20, 47, 4, 9, 30, 40, 12, 17', N'15, 20, 47, 4, 8, 9, 12, 30, 40, 17', N'4, 8, 9, 15, 20, 47, 12, 17, 30, 40', N'In first pass the elements are sorted in n/4 (first 2 elements in each group) sub arrays but in second pass the elements are sorted in n/2 (first 4 elements in each group) sub arrays.', N'b')
INSERT [dbo].[chapter6_merge_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (4, N'The minimum number of record movements required to merge five files A (with 10 records), B (with 20 records), C (with 15 records), D (with 5 records) and E (with 25 records) is:', N'165', N'90', N'75', N'65', N'minimum number of record movements required = sum of internal node''s value = 15 + 30 + 45 + 75 = 165 So, option (A) is correct.', N'a')
INSERT [dbo].[chapter6_merge_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (5, N'A list of n string, each of length n, is sorted into lexicographic order using the merge-sort algorithm. The worst case running time of this computation is', N'O(nlogn)', N'O(n^2 logn)', N'O(n^2+logn)', N'O(n^2)', N'The recurrence tree for merge sort will have height Log(n). And O(n^2) work will be done at each level of the recurrence tree (Each level involves n comparisons and a comparison takes O(n) time in worst case). So time complexity of this Merge Sort will be O(n^2 logn)', N'b')
INSERT [dbo].[chapter6_merge_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (6, N'Which of the following is true about merge sort?', N'Merge Sort works better than quick sort if data is accessed from slow sequential memory.', N'Merge Sort is stable sort by nature', N'Merge sort outperforms heap sort in most of the practical situations.', N'All of the above.', N'No', N'd')
INSERT [dbo].[chapter6_merge_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (7, N'Assume that a mergesort algorithm in the worst case takes 30 seconds for an input of size 64. Which of the following most closely approximates the maximum input size of a problem that can be solved in 6 minutes?', N'256', N'512', N'1024', N'2048', N'Time complexity of merge sort is Θ(nLogn)

c*64Log64 is 30
c*64*6 is 30
c is 5/64

For time 6 minutes

5/64*nLogn = 6*60

nLogn = 72*64 = 512 * 9

n = 512. ', N'b')
INSERT [dbo].[chapter6_merge_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (8, N'Given two sorted list of size m and n respectively. The number of comparisons needed the worst case by the merge sort algorithm will be', N'm x n', N'maximum of m and n', N'minimum of m and n', N'm + n - 1', N'To merge two lists of size m and n, we need to do m+n-1 comparisons in worst case. Since we need to merge 2 at a time, the optimal strategy would be to take smallest size lists first. The reason for picking smallest two items is to carry minimum items for repetition in merging. So, option (D) is correct.', N'd')
INSERT [dbo].[chapter6_merge_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (9, N'Of the following sorting algorithms, which has a running time that is least dependent on the initial ordering of the input?', N'Merge Sort', N'Insertion Sort', N'Selection Sort', N'Quick Sort', N'In Insertion sort if the array is already sorted then it takes O(n) and if it is reverse sorted then it takes O(n2) to sort the array. In Quick sort, if the array is already sorted or if it is reverse sorted then it takes O(n2).The best and worst case performance of Selection is O(n2) only. But if the array is already sorted then less swaps take place. In merge sort, time complexity is O(nlogn) for all the cases and performance is affected least on the the order of input sequence. So, option (A) is correct.', N'a')
INSERT [dbo].[chapter6_merge_sort] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (10, N'Which of the following is not a stable sorting algorithm in its typical implementation.', N'Insertion Sort', N'Merge Sort', N'Quick Sort', N'Bubble Sort', N'See following for details. http://www.geeksforgeeks.org/stability-in-sorting-algorithms/', N'd')
INSERT [dbo].[chapter7_heap&bucket&radix] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (1, N'Given an unsorted array. The array has this property that every element in array is at most k distance from its position in sorted array where k is a positive integer smaller than size of array. Which sorting algorithm can be easily modified for sorting this array and what is the obtainable time complexity?', N'Insertion Sort with time complexity O(kn)', N'Heap Sort with time complexity O(nLogk)', N'Quick Sort with time complexity O(kLogk)', N'Merge Sort with time complexity O(kLogk)', N'See http://www.geeksforgeeks.org/nearly-sorted-algorithm/ for explanation and implementation.', N'b')
INSERT [dbo].[chapter7_heap&bucket&radix] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (2, N'Which of the following is not true about comparison based sorting algorithms?', N'The minimum possible time complexity of a comparison based sorting algorithm is O(nLogn) for a random input array', N'Any comparison based sorting algorithm can be made stable by using position as a criteria when two elements are compared', N'Counting Sort is not a comparison based sorting algortihm', N'Heap Sort is not a comparison based sorting algorithm', N'See http://www.geeksforgeeks.org/lower-bound-on-comparison-based-sorting-algorithms/ for point A. See http://www.geeksforgeeks.org/stability-in-sorting-algorithms/ for B. C is true, count sort is an Integer Sorting algorithm.', N'd')
INSERT [dbo].[chapter7_heap&bucket&radix] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (3, N'If we use Radix Sort to sort n integers in the range (nk/2,nk], for some k>0 which is independent of n, the time taken would be?', N'Θ(n)', N'Θ(kn)', N'Θ(nlogn)', N'Θ(n2)', N'Radix sort time complexity = O(wn)
for n keys of word size= w 
=>w = log(nk) 
O(wn)=O(klogn.n) 
=> kO(nlogn)', N'c')
INSERT [dbo].[chapter7_heap&bucket&radix] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (4, N'Suppose we are sorting an array of eight integers using heapsort, and we have just finished some heapify (either maxheapify or minheapify) operations. The array now looks like this: 16 14 15 10 12 27 28 How many heapify operations have been performed on root of heap?', N'1', N'2', N'3 or 4', N'5 or 6', N'In Heapsort, we first build a heap, then we do following operations till the heap size becomes 1. a) Swap the root with last element b) Call heapify for root c) reduce the heap size by 1. In this question, it is given that heapify has been called few times and we see that last two elements in given array are the 2 maximum elements in array. So situation is clear, it is maxheapify whic has been called 2 times.', N'b')
INSERT [dbo].[chapter7_heap&bucket&radix] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (5, N'The number of elements that can be sorted in Theta(logn) time using heap sort is', N'Θ(1)', N'Θ(sqrt{logn})', N'Θ(Log n/(Log Log n))', N'Θ(Log n) ', N'Time complexity of Heap Sort is Θ(mLogm) for m input elements. For m = Θ(Log n/(Log Log n)), the value of Θ(m * Logm) will be Θ( [Log n/(Log Log n)] * [Log (Log n/(Log Log n))] ) which will be \Theta( [Log n/(Log Log n)] * [ Log Log n - Log Log Log n] ) which is Θ(Log n)', N'c')
INSERT [dbo].[chapter7_heap&bucket&radix] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (6, N'Consider a binary min heap containing n elements and every node is having degree 2 ( i.e. full binary min heap tree). What is the probability of finding the largest element at the last level ?', N'1/2', N'1', N'1/n', N'1/(2^n)', N'Always 1 as maximum element will always be present in the leaf nodes in case of binary min heap.', N'b')
INSERT [dbo].[chapter7_heap&bucket&radix] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (7, N'Given an array where numbers are in range from 1 to n^6, which sorting algorithm can be used to sort these number in linear time?', N'Not possible to sort in linear time', N'Radix Sort', N'Counting Sort', N'Quick Sort', N'See https://www.geeksforgeeks.org/radix-sort/ for explanation.', N'b')
INSERT [dbo].[chapter7_heap&bucket&radix] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (8, N'If there are n integers to sort, each integer has d digits, and each digit is in the set {1, 2, ..., k}, radix sort can sort the numbers in:', N'O (k (n + d))', N'O (d (n + k))', N'O ((n + k) lg d)', N'O ((n + d) lg k)', N'If there are n integers to sort, each integer has d digits, and each digit is in the set {1, 2, ..., k}, radix sort can sort the numbers in O(d (n + k))', N'b')
INSERT [dbo].[chapter7_heap&bucket&radix] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (9, N'The maximum number of comparisons needed to sort 9 items using radix sort is (assume each item is 5 digit octal number):', N'45', N'72', N'360', N'450', N'No', N'd')
INSERT [dbo].[chapter7_heap&bucket&radix] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (10, N'What is the worst case performance for bucket sort?', N'O(n)', N'O(n logn)', N'O(n^2)', N'O(1)', N'No', N'c')
INSERT [dbo].[chapter8_hashTable] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (1, N'An advantage of chained hash table (external hashing) over the open addressing scheme is', N'Worst case complexity of search operations is less', N'Space used is less', N'Deletion is easier', N'None of the above', N'No', N'c')
INSERT [dbo].[chapter8_hashTable] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (2, N'A hash function h defined h(key)=key mod 7, with linear probing, is used to insert the keys 44, 45, 79, 55, 91, 18, 63 into a table indexed from 0 to 6. What will be the location of key 18 ?', N'3', N'4', N'5', N'6', N'keys 44, 45, 79, 55, 91, 18, 63 h(key)=key mod 7 h(44) = 44mod7 = 2 h(45) = 45mod7 = 3 h(79) = 79mod7 = 2 but 2 is already filled 44, linear probing is applied but 3 ias also filled. So, 79 will occupy 4. h(55) = 55mod7 = 6 h(91) = 91mod7 = 0 h(18) = 18mod7 = 4 but 4 is occupied by 79 so, it will occupy 5. h(63) = 63mod7 = 0. 0 is also occupied so, it will occupy 1. So, option (C) is correct.', N'c')
INSERT [dbo].[chapter8_hashTable] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (3, N'Consider a hash table of size seven, with starting index zero, and a hash function (7x+3) mod 4. Assuming the hash table is initially empty, which of the following is the contents of the table when the sequence 1, 3, 8, 10 is inserted into the table using closed hashing ? Here “__” denotes an empty location in the table.', N'3, 10, 1, 8, __ , __ , __', N'1, 3, 8, 10, __ , __ , __', N'1, __ , 3, __ , 8, __ , 10', N'3, 10, __ , __ , 8, __ , __', N'Keys are 1, 3, 8, 10. h(x) = (7*x + 3) 
h(1) = (10) mod 4 = 2 
h(3) = (7 * 3 + 3) mod 4 = 24 mod 4 = 0
h(8) = (7 * 8 + 3) mod 4 = 3 
h(10)= (7 * 10 + 3)mod 4 = 1
i.e. 3, 10, 1, 8, __ , __ , __
So, option (A) is correct.', N'a')
INSERT [dbo].[chapter8_hashTable] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (4, N'What is a hash table?', N'A structure that maps values to keys', N'A structure that maps keys to values', N'A structure used for storage', N'A structure used to implement stack and queue', N'Explanation: A hash table is used to implement associative arrays which has a key-value pair, so the has table maps keys to values.', N'b')
INSERT [dbo].[chapter8_hashTable] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (5, N'What is a hash function?', N'A function has allocated memory to keys', N'A function that computes the location of the key in the array', N'A function that creates an array', N'None of the mentioned', N'Explanation: In a hash table, there are fewer array positions than the keys, so the position of the key in the array has to be computed, this is done using the hash function.', N'b')
INSERT [dbo].[chapter8_hashTable] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (6, N'What is simple uniform hashing?', N'Every element has equal probability of hashing into any of the slots', N'A weighted probabilistic method is used to hash elements into the slots', N'All of the mentioned', N'None of the mentioned', N'Explanation: In simple uniform hashing, any given element is equally likely to hash into any of the slots available in the array.', N'a')
INSERT [dbo].[chapter8_hashTable] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (7, N'Given the following input (4322, 1334, 1471, 9679, 1989, 6171, 6173, 4199) and the hash function x mod 10, which of the following statements are true? i. 9679, 1989, 4199 hash to the same value ii. 1471, 6171 has to the same value iii. All elements hash to the same value iv. Each element hashes to a different value', N'i only', N'ii only', N'i and ii only', N'iii or iv', N'Hash function given is mod(10).
9679, 1989 and 4199 all these give same hash value i.e 9
1471 and 6171 give hash value 1 ', N'c')
INSERT [dbo].[chapter8_hashTable] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (8, N'Consider a hash table with 100 slots. Collisions are resolved using chaining. Assuming simple uniform hashing, what is the probability that the first 3 slots are unfilled after the first 3 insertions?', N'(97 × 97 × 97)/1003', N'(99 × 98 × 97)/1003', N'	(97 × 96 × 95)/1003', N'(97 × 96 × 95)/(3! × 1003)', N'Probability that the first 3 slots are unfilled after the first 3 insertions = 
                (probability that first item doesn''t go in any of the first 3 slots)*
                (probability that second item doesn''t go in any of the first 3 slots)*
                (probability that third item doesn''t go in any of the first 3 slots)

                 = (97/100) * (97/100) * (97/100)', N'a')
INSERT [dbo].[chapter8_hashTable] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (9, N'Given a hash table T with 25 slots that stores 2000 elements, the load factor α for T is', N'80', N'0.0125', N'8000', N'1.25', N'load factor = (no. of elements) / (no. of table slots) = 2000/25 = 80', N'a')
INSERT [dbo].[chapter8_hashTable] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (10, N'Consider a hash table of size m = 10000, and the hash function h(K) = floor (m(KA mod 1)) for A = ( √(5) – 1)/2. The key 123456 is mapped to location ______.', N'46', N'41', N'43', N'48', N'Given hash function: h(K) = floor (m (K*A mod 1)) where A = ( √(5) – 1)/2
h(123456) = floor(10000 * (123456 * (√5 ? 1) / 2) mod 1) 
          = floor(10000 * (76300.004115 mod 1)
          = floor(10000 * (.004115))
          = 41.15
          = 41 
So, option (B) is correct.', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (1, N'What is the worst case time complexity for search, insert and delete operations in a general Binary Search Tree?', N'O(n) for all', N'O(Logn) for all', N'O(Logn) for search and insert, and O(n) for delete', N'O(Logn) for search, and O(n) for insert and delete', N'In skewed Binary Search Tree (BST), all three operations can take O(n)', N'a')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (2, N'In delete operation of BST, we need inorder successor (or predecessor) of a node when the node to be deleted has both left and right child as non-empty. Which of the following is true about inorder successor needed in delete operation?', N'Inorder Successor is always a leaf node', N'Inorder successor is always either a leaf node or a node with empty left child', N'Inorder successor may be an ancestor of the node', N'Inorder successor is always either a leaf node or a node with empty right child', N'Let X be the node to be deleted in a tree with root as ''root''. There are three cases for deletion 1) X is a leaf node: We change left or right pointer of parent to NULL (depending upon whether X is left or right child of its parent) and we delete X 2) One child of X is empty: We copy values of non-empty child to X and delete the non-empty child 3) Both children of X are non-empty: In this case, we find inorder successor of X. Let the inorder successor be Y. We copy the contents of Y to X, and delete Y. Sp we need inorder successor only when both left and right child of X are not empty. In this case, the inorder successor Y can never be an ancestor of X. In this case, the inorder successor is the leftmost node in right subtree of X. Since it is leftmost node, the left child of Y must be empty.', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (3, N'We are given a set of n distinct elements and an unlabeled binary tree with n nodes. In how many ways can we populate the tree with the given set so that it becomes a binary search tree?', N'0', N'1', N'n!', N'(1/(n+1)).2nCn', N'There is only one way. The minimum value has to go to the leftmost node and the maximum value to the rightmost node. Recursively, we can define for other nodes.', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (4, N'How many distinct binary search trees can be created out of 4 distinct keys?', N'4', N'14', N'24', N'42', N'See question 2 of http://www.geeksforgeeks.org/data-structures-and-algorithms-set-23/ for explanation. The link also has a generalized solution.', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (5, N'Which of the following traversal outputs the data in sorted order in a BST?', N'Preorder', N'Inorder', N'Postorder', N'Level order', N'Inorder traversal of a BST outputs data in sorted order.', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (6, N'Suppose the numbers 7, 5, 1, 8, 3, 6, 0, 9, 4, 2 are inserted in that order into an initially empty binary search tree. The binary search tree uses the usual ordering on natural numbers. What is the in-order traversal sequence of the resultant tree?', N'7 5 1 0 3 2 4 6 8 9', N'0 2 4 3 1 6 5 9 8 7', N'0 1 2 3 4 5 6 7 8 9', N'9 8 6 4 2 3 0 1 5 7', N'In-order traversal of a BST gives elements in increasing order. So answer c is correct without any doubt.', N'c')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (7, N'The following numbers are inserted into an empty binary search tree in the given order: 10, 1, 3, 5, 15, 12, 16. What is the height of the binary search tree (the height is the maximum distance of a leaf node from the root)?', N'2', N'3', N'4', N'6', N'Constructed binary search tree will be..
                    10
                  /     \' + N'
                 1       15
                 \      /  \' + N'
                  3    12   16
                    \' + N'
                     5
', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (8, N'The preorder traversal sequence of a binary search tree is 30, 20, 10, 15, 25, 23, 39, 35, 42. Which one of the following is the postorder traversal sequence of the same tree?', N'10, 20, 15, 23, 25, 35, 42, 39, 30', N'15, 10, 25, 23, 20, 42, 35, 39, 30', N'15, 20, 10, 23, 25, 42, 35, 39, 30', N'15, 10, 23, 25, 20, 35, 42, 39, 30', N'The following is the constructed tree
            30
         /      \' + N'
        20       39 
       /  \     /  \' + N'
     10    25  35  42  
      \   /
      15 23', N'd')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (9, N'Which of the following traversals is sufficient to construct BST from given traversals 1) Inorder 2) Preorder 3) Postorder', N'Any one of the given three traversals is sufficient', N'Either 2 or 3 is sufficient', N'2 and 3', N'	1 and 3', N'When we know either preorder or postorder traversal, we can construct the BST. Note that we can always sort the given traversal and get the inorder traversal. Inorder traversal of BST is always sorted.', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (10, N'You are given the postorder traversal, P, of a binary search tree on the n elements 1, 2, ..., n. You have to determine the unique binary search tree that has P as its postorder traversal. What is the time complexity of the most efficient algorithm for doing this?', N'O(Logn)', N'O(n)', N'O(nLogn)', N'none of the above, as the tree cannot be uniquely determined.', N'One important thing to note is, it is Binary Search Tree, not Binary Tree. In BST, inorder traversal can always be obtained by sorting all keys. See method 2 of http://www.geeksforgeeks.org/construct-bst-from-given-preorder-traversa/ for details. Same technique can be used for postorder traversal.', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (11, N'What are the worst-case complexities of insertion and deletion of a key in a binary search tree?', N'Θ(logn) for both insertion and deletion', N'Θ(n) for both insertion and deletion', N'Θ(n) for insertion and Θ(logn) for deletion', N'Θ(logn) for insertion and Θ(n) for deletion', N'The time taken by search, insert and delete on a BST is always proportional to height of BST. Height may become O(n) in worst case.', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (12, N'Suppose that we have numbers between 1 and 100 in a binary search tree and want to search for the number 55. Which of the following sequences CANNOT be the sequence of nodes examined?', N'{10, 75, 64, 43, 60, 57, 55}', N'{90, 12, 68, 34, 62, 45, 55}', N'{9, 85, 47, 68, 43, 57, 55}', N'{79, 14, 72, 56, 16, 53, 55}', N'In BST on right side of parent number should be greater than it, but in C after 47, 43 appears that is wrong.', N'c')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (13, N'When searching for the key value 60 in a binary search tree, nodes containing the key values 10, 20, 40, 50, 70 80, 90 are traversed, not necessarily in the order given. How many different orders are possible in which these key values can occur on the search path from the root to the node containing the value 60?', N'35', N'64', N'128', N'5040', N'There are two set of values, smaller than 60 and greater than 60. Smaller values 10, 20, 40 and 50 are visited, means they are visited in order. Similarly, 90, 80 and 70 are visited in order. 
= 7!/(4!3!)
= 35', N'a')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (14, N'How many distinct BSTs can be constructed with 3 distinct keys?', N'4', N'5', N'6', N'9', N'2nCn/(n+1) = 6C3/4 = 5', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (17, N'How many distinct binary search trees can be created out of 4 distinct keys?', N'5', N'14', N'24', N'35', N'Distinct binary search trees that can be created out of 4 distinct keys can be found out using the Catalon number. Catalon number = (2n)!/(n! * (n+1)!) Here n = 4, Number of distinct BST''s = (4 x 2)! / (4! x 5!) = 14 So, correct option is (B)', N'b')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (18, N'The average depth of a binary search tree is:', N'O(n0.5)', N'O(n)', N'O(log n)', N'O(n log n)', N'The average height of a Binary Search tree is log(n)', N'c')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (15, N'Postorder traversal of a given binary search tree T produces following sequence of keys: 3, 5, 7, 9, 4, 17, 16, 20, 18, 15, 14 Which one of the following sequences of keys can be the result of an in-order traversal of the tree T?', N'3, 4, 5, 7, 9, 14, 20, 18, 17, 16, 15', N'20, 18, 17, 16, 15, 14, 3, 4, 5, 7, 9', N'20, 18, 17, 16, 15, 14, 9, 7, 5, 4, 3', N'3, 4, 5, 7, 9, 14, 15, 16, 17, 18, 20', N'Since Inorder traversal of a BST always gives elements in increasing order. For this question sorted order of keys will always be the in-order tree traversal for post-order traversal. So, option (D) is correct.', N'd')
INSERT [dbo].[chapter9_binarySearchTree] ([questionNo], [question], [answerA], [answerB], [answerC], [answerD], [explanation], [correctAnswer]) VALUES (16, N'Which of the following statements is false ?', N'Optimal binary search tree construction can be performed efficiently using dynamic programming.', N'Breadth-first search cannot be used to find connected components of a graph.', N'Given the prefix and postfix walks of a binary tree, the tree cannot be re-constructed uniquely.', N'Depth-first-search can be used to find the connected components of a graph.', N'All statements are correct except (B) because BFS can be used to check connectivity of graphs. So, option (B) is correct.', N'b')
SET IDENTITY_INSERT [dbo].[Statistic] ON 

INSERT [dbo].[Statistic] ([id], [userId], [chapter], [totalAttempt], [correctCount], [marks]) VALUES (37, N'1644075122327606', N'Complexity Analysis', 7, 4, 40)
INSERT [dbo].[Statistic] ([id], [userId], [chapter], [totalAttempt], [correctCount], [marks]) VALUES (38, N'1644075122327606', N'Complexity Analysis', 7, 6, 55)
INSERT [dbo].[Statistic] ([id], [userId], [chapter], [totalAttempt], [correctCount], [marks]) VALUES (28, N'1644075122327606', N'Complexity Analysis', 7, 6, 60)
INSERT [dbo].[Statistic] ([id], [userId], [chapter], [totalAttempt], [correctCount], [marks]) VALUES (36, N'1644075122327606', N'Recursive Functions ', 10, 8, 65)
SET IDENTITY_INSERT [dbo].[Statistic] OFF
USE [master]
GO
ALTER DATABASE [computer-science-challenge] SET  READ_WRITE 
GO
