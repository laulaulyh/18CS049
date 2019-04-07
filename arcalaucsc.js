'use strict';


const uploadData = (userID, chapter, totalAttempt, countCorrect, marks) => {
	var request = require('request')
	var url = 'http://arcalaucsc.ddns.net:5050/?userID=' + userID + '&chapter=' + chapter + '&totalAttempt=' + totalAttempt + '&countCorrect=' + countCorrect + '&marks=' + marks
	request(url, function (error, response, body) {
		if (!error && response.statusCode == 200) {
			console.log(url)
		}
	})
}


const showFeedback = (say) => {
	say('✍🏻 Please give us feedback via the following link:').then(() => {
		say('https://goo.gl/forms/uLdGvbol7SIKKF8l1').then(() => {
			say('🙌🏻Thank You!');
		});
	});
}


const showExplanation = (question) => {
	const explanation = [
		'📝Explanation:',
		question.explantaion
	]
	return explanation;
}

const showStatistic = (say, myQuestions, totalAttempt, countCorrect, marks, userID) => {
	say('📃Statistic:').then(() => {
		say('➡️Chapter Attempted: ' + myQuestions[0].question).then(() => {
			say('➡️Total Question Attempted: ' + totalAttempt).then(() => {
				say('➡️Total Question Answered Correctly: ' + countCorrect).then(() => {
					say('➡️Total Marks: ' + marks).then(() => {
						say('➡️Overall Performance :' + performanceGrading(marks, totalAttempt)).then(() => {
							showFeedback(say);
							uploadData(userID, myQuestions[0].question, totalAttempt, countCorrect, marks)
						});
					});
				});
			});
		});
	});
}

const showChoices = (say, question, sendButton, questionNo, countCorrect, marks, chapter, retryCount, totalAttempt) => {
	say(question.answers.a).then(() => {
		say(question.answers.b).then(() => {
			say(question.answers.c).then(() => {
				say(question.answers.d).then(() => {
					sendButton('🔠What is your answer for this question?',
						[
							{ title: 'A', payload: questionNo + '-' + AnswerA + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt },
							{ title: 'B', payload: questionNo + '-' + AnswerB + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt },
							{ title: 'C', payload: questionNo + '-' + AnswerC + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt },
							{ title: 'D', payload: questionNo + '-' + AnswerD + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt }
						]
					);
				});
			});
		});
	});

}

const showCorrectAnswer = (say, question, sendButton, questionNo, countCorrect, marks, chapter, retryCount, totalAttempt) => {
	say('✔️The correct answer is ' + question.correctAnswer.toUpperCase()).then(() => {
		say(showExplanation(question)).then(() => {
			sendButton('Let\'s try another one!➡️ ',
				[
					{ title: 'Yes', payload: questionNo + '-' + NextQuestion + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt },
					{ title: 'No', payload: questionNo + '-' + Feedback + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt },
				]
			);
		});
	});
}

const initQuestion = (chapter) => {
	if (chapter === ChapterComplexity)
		return ChapterComplexityQuestions;
	if (chapter === ChapterRecursive)
		return ChapterRecursiveQuestions;
	if (chapter == ChapterArray)
		return ChapterArrayQuestions;
	if (chapter == ChapterBubbleSort)
		return ChapterBubbleQuestions;
	if (chapter == ChapterQuickSort)
		return ChapterQuickQuestions;
	if (chapter == ChapterMergeSort)
		return ChapterMergeQuestion;
	if (chapter == ChapterHeapSort)
		return ChapterHeapSortQuestions;
	if (chapter == ChapterHash)
		return ChapterHashQuestions;
	if (chapter == ChapterBST)
		return ChapterBSTQuestions;
}

const performanceGrading = (marks, totalAttempt) => {
	var fullmarks = totalAttempt * 10;
	if (marks / fullmarks > 0.85)
		return 'Excellent🤗';
	if (marks / fullmarks > 0.7)
		return 'Great🙂';
	if (marks / fullmarks > 0.4)
		return 'OK😐';
	if (marks / fullmarks < 0.4)
		return 'Poor😓';
}




const AnswerA = 'a';
const AnswerB = 'b';
const AnswerC = 'c';
const AnswerD = 'd';
const Explanation = 'e';
const Feedback = 'f';
const NextQuestion = 'n';
const Statistic = 'r';
const End = 'z';
const initialize = '0';


const ChapterComplexity = 'comp';
const ChapterRecursive = 'recursive';
const ChapterArray = 'array';
const ChapterBubbleSort = 'bubble';
const ChapterQuickSort = 'quick';
const ChapterMergeSort = 'merge';
const ChapterHeapSort = 'heap';
const ChapterHash = 'hash';
const ChapterBST = 'bst';


const chapter = [
	'➡️Complexity Analysis',
	'➡️Recursive Functions & Binary Search',
	'➡️Array, Linked List, Stack & Queue',
	'➡️Bubble Sort & Insertion Sort',
	'➡️Quick Sort',
	'➡️Merge Sort',
	'➡️Heap Sort, Bucket Sort & Radix Sort',
	'➡️Hash Table',
	'➡️Binary Search Tree',
]



const mark = 10;
const retryMark = 5;
const maxRetry = 2;//user can only attempt one question twice at maximum

const start = (say, sendButton, userID) => {
	var countCorrect = 0;
	var questionNo = 0;
	var userChoice = 0;
	var marks = 0;
	var retryCount = 0;
	var totalAttempt = 0;
	say(
		{
			attachment: 'image',
			url: 'https://i.imgur.com/JdgE7KF.png'
		}
	).then(() => {
		say(chapter).then(() => {
			sendButton('Please choose the chapter you want to try.😉',
				[
					{ title: 'Complexity Analysis', payload: questionNo + '-' + userChoice + '-' + countCorrect + '-' + marks + '-' + ChapterComplexity + '-' + retryCount + '-' + totalAttempt },
					{ title: 'Recursive Functions & Binary Search ', payload: questionNo + '-' + userChoice + '-' + countCorrect + '-' + marks + '-' + ChapterRecursive + '-' + retryCount + '-' + totalAttempt },
					{ title: 'Array, Linked List, Stack & Queue ', payload: questionNo + '-' + userChoice + '-' + countCorrect + '-' + marks + '-' + ChapterArray + '-' + retryCount + '-' + totalAttempt },
					{ title: 'Bubble Sort & Insertion Sort ', payload: questionNo + '-' + userChoice + '-' + countCorrect + '-' + marks + '-' + ChapterBubbleSort + '-' + retryCount + '-' + totalAttempt },
					{ title: 'Quick Sort ', payload: questionNo + '-' + userChoice + '-' + countCorrect + '-' + marks + '-' + ChapterQuickSort + '-' + retryCount + '-' + totalAttempt },
					{ title: 'Merge Sort ', payload: questionNo + '-' + userChoice + '-' + countCorrect + '-' + marks + '-' + ChapterMergeSort + '-' + retryCount + '-' + totalAttempt },
					{ title: 'Heap Sort, Bucket Sort & Radix Sort ', payload: questionNo + '-' + userChoice + '-' + countCorrect + '-' + marks + '-' + ChapterHeapSort + '-' + retryCount + '-' + totalAttempt },
					{ title: 'Hash Table ', payload: questionNo + '-' + userChoice + '-' + countCorrect + '-' + marks + '-' + ChapterHash + '-' + retryCount + '-' + totalAttempt },
					{ title: 'Binary Search Tree ', payload: questionNo + '-' + userChoice + '-' + countCorrect + '-' + marks + '-' + ChapterBST + '-' + retryCount + '-' + totalAttempt },
				]
			);
		});
	});
};

const state = (payload, say, sendButton, userID) => {
	var userAnswer = payload.split('-');	// payload = questionNo+'-'+userChoice+'-'+countCorrect+'-'+marks+'-'+chapter+'-'+retryCount+'-'+totalAttempt;
	var questionNo = userAnswer[0];
	var userChoice = userAnswer[1];
	var countCorrect = parseInt(userAnswer[2]);
	var marks = parseInt(userAnswer[3]);
	var chapter = userAnswer[4];
	var retryCount = parseInt(userAnswer[5]);
	var totalAttempt = parseInt(userAnswer[6]);
	var myQuestions = initQuestion(chapter);

	var question = myQuestions[questionNo];//find which question the user is answering to

	if (userChoice === Explanation) {	//explanation of the question
		say(showExplanation(question)).then(() => {
			if (totalAttempt === myQuestions.length - 1) {
				say("🎉Congratulations! You have completed all questions in this chapter!").then(() => {
					showStatistic(say, myQuestions, totalAttempt, countCorrect, marks, userID);
				});
			} else {
				payload = questionNo + '-' + NextQuestion + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt;
				state(payload, say, sendButton, userID);
			}

		});
	} else if (userChoice === Statistic) {	//view result and statistic
		showStatistic(say, myQuestions, totalAttempt, countCorrect, marks, userID);
	} else if (userChoice === Feedback) {	//feedback
		showFeedback(say);
	} else if (userChoice === initialize) {	//initial
		say('You have chosen Chapter ' + myQuestions[0].question).then(() => {
			say('There are ' + (myQuestions.length - 1) + ' questions in this chapter').then(() => {
				sendButton("Are you ready to start the game?",
					[
						{ title: 'Yes', payload: questionNo + '-' + NextQuestion + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt },
						{ title: 'No, thanks ', payload: questionNo + '-' + Feedback + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt }
					]
				)
			})
		})
	} else if (userChoice === NextQuestion) {
		questionNo++;
		totalAttempt++;
		retryCount = 0;
		var nextQuestion = myQuestions[questionNo];
		say('Question :' + questionNo + '/' + (myQuestions.length - 1))
		say(nextQuestion.question).then(() => {
			showChoices(say, nextQuestion, sendButton, questionNo, countCorrect, marks, chapter, retryCount, totalAttempt);
		});
	} else if (userChoice === End) {
		say("👏🏻Thanks for participating in this game!")
	} else if (String(userChoice).valueOf() == String(question.correctAnswer).valueOf()) {//if answer is correct
		countCorrect++;
		if (retryCount === 0)
			marks += mark
		else marks += retryMark;
		say("✔️Correct!").then(() => {
			if (totalAttempt === (myQuestions.length - 1)) {
				payload = questionNo + '-' + Explanation + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt
				state(payload, say, sendButton, userID);
			} else {
				payload = questionNo + '-' + Explanation + '-' + countCorrect + '-' + marks + '-' + chapter + '-' + retryCount + '-' + totalAttempt
				state(payload, say, sendButton, userID);
			}
		});
	} else if (String(userChoice).valueOf() !== String(question.correctAnswer).valueOf()) {//if answer is wrong
		retryCount++;
		if (retryCount === maxRetry) {
			retryCount = 0;//initialize counter
			say('❌You are wrong!');
			if (totalAttempt === (myQuestions.length - 1)) {//end when attempted 10 questions
				showCorrectAnswer(say, question, sendButton, questionNo, countCorrect, marks, chapter, retryCount, totalAttempt)
				say("🎉Congratulations! You have completed all questions in this chapter!").then(() => {
					showStatistic(say, myQuestions, totalAttempt, countCorrect, marks, userID);
				});
			} else {
				say("⛔️You have attempted this question for two times!").then(() => {
					showCorrectAnswer(say, question, sendButton, questionNo, countCorrect, marks, chapter, retryCount, totalAttempt);
				});
			}

		} else {
			say("❌ You are wrong! Please try again").then(() => {
				showChoices(say, question, sendButton, questionNo, countCorrect, marks, chapter, retryCount, totalAttempt);
			});
		}
	}

};

module.exports = {
	filename: 'cschallenge',
	title: '💻CS Challenge',
	introduction: [
		'Welcome to 💻CS Challenge',
		'🤖I will ask some questions, you need to choose the correct answer.',
		'This game aims to teach you some concepts about Computer Science.',
		'😬Hope You can enjoy it.'
	],
	start: start,
	state: state
};



const ChapterComplexityQuestions = [
	{
		questionNo: 0,
		question: "Complexity Analysis",
		correctAnswer: "c",
		explantaion: "explanation",
		answers: {
			a: "A.",
			b: "B.",
			c: "C.",
			d: "D."
		},
	},
	{
		questionNo: 1,
		question: "In a competition, four different functions are observed. All the functions use a single for loop and within the for loop, same set of statements are executed. If n is the size of input(positive), which function is most efficient(if the task to be performed is not an issue)?",
		correctAnswer: "c",
		explantaion: "The time complexity of first for loop is O(n). The time complexity of second for loop is O(n/2), equivalent to O(n) in asymptotic analysis. The time complexity of third for loop is O(logn). The fourth for loop doesn't terminate.",
		answers: {
			a: "A. for(i = 0; i < n; i++)",
			b: "B. for(i = 0; i < n; i += 2)",
			c: "C. for(i = 1; i < n; i *= 2)",
			d: "D. for(i = n; i > -1; i /= 2)"
		},
	},
	{
		questionNo: 2,
		question: "What does it mean when we say that an algorithm X is asymptotically more efficient than Y?",
		correctAnswer: "b",
		explantaion: "In asymptotic analysis we consider growth of algorithm in terms of input size. An algorithm X is said to be asymptotically better than Y if X takes smaller time than y for all input sizes n larger than a value n0 where n0 > 0.",
		answers: {
			a: "A. X will be a better choice for all inputs",
			b: "B. X will be a better choice for all inputs except small inputs",
			c: "C. X will be a better choice for all inputs except large inputs",
			d: "D. Y will be a better choice for small inputs"
		},
	},
	{
		questionNo: 3,
		question: "What is the time complexity of Floyd–Warshall algorithm to calculate all pair shortest path in a graph with n vertices?",
		correctAnswer: "d",
		explantaion: "Floyd–Warshall algorithm uses three nested loops to calculate all pair shortest path. So, time complexity is Thete(n^3).",
		answers: {
			a: "A. O(n^2logn)",
			b: "B. Θ(n^2logn)",
			c: "C. Θ(n^4)",
			d: "D. Θ(n^3)"
		},
	},
	{
		questionNo: 4,
		question: "Which of the following sorting algorithms has the lowest worst-case complexity?",
		correctAnswer: "a",
		explantaion: "Worst case complexities for the above sorting algorithms are as follows: Merge Sort — nLogn Bubble Sort — n^2 Quick Sort — n^2 Selection Sort — n^2",
		answers: {
			a: "A. Merge Sort",
			b: "B. Bubble Sort",
			c: "C. Quick Sort",
			d: "D. Selection Sort"
		},
	},
	{
		questionNo: 5,
		question: "Two matrices M1 and M2 are to be stored in arrays A and B respectively. Each array can be stored either in row-major or column-major order in contiguous memory locations. The time complexity of an algorithm to compute M1 × M2 will be",
		correctAnswer: "d",
		explantaion: "This is a trick question. Note that the questions asks about time complexity, not time taken by the program. for time complexity, it doesn't matter how we store array elements, we always need to access same number of elements of M1 and M2 to multiply the matrices. It is always constant or O(1) time to do element access in arrays, the constants may differ for different schemes, but not the time complexity.",
		answers: {
			a: "A. best if A is in row-major, and B is in column- major order",
			b: "B. best if both are in row-major order",
			c: "C. best if both are in column-major order",
			d: "D. independent of the storage scheme"
		},
	},
	{
		questionNo: 6,
		question: "An unordered list contains n distinct elements. The number of comparisons to find an element in this list that is neither maximum nor minimum is",
		correctAnswer: "a",
		explantaion: "We only need to consider any 3 elements and compare them. So the number of comparisons is constants, that makes time complexity as Θ(1) The catch here is, we need to return any element that is neither maximum not minimum. Let us take an array {10, 20, 15, 7, 90}. Output can be 10 or 15 or 20 Pick any three elements from given liar. Let the three elements be 10, 20 and 7. Using 3 comparisons, we can find that the middle element is 10.",
		answers: {
			a: "A. Θ(nlogn)",
			b: "B. Θ(n)",
			c: "C. Θ(logn)",
			d: "D. Θ(1)"
		},
	},
	{
		questionNo: 7,
		question: "Given A, an array of size n, comprised of an increasing sequence of numbers followed immediately by a decreasing one. What is worst case time complexity of optimal algorithm to determine if a given number x is in the array?",
		correctAnswer: "a",
		explantaion: "This is an application of Binary search, which has time complexity Θ(log n) in worst case. Option (A) is correct.",
		answers: {
			a: "A. Θ(log n)",
			b: "B. Θ(n)",
			c: "C. Θ(n^2)",
			d: "D. Θ(log n)^2"
		},
	},
];

const ChapterRecursiveQuestions = [
	{
		questionNo: 0,
		question: "Recursive Functions & Binary Search",
		correctAnswer: "c",
		explantaion: "explanation",
		answers: {
			a: "A.",
			b: "B.",
			c: "C.",
			d: "D."
		},
	},
	{
		questionNo: 1,
		question: "The recurrence relation capturing the optimal time of the Tower of Hanoi problem with n discs is. (GATE CS 2012)",
		correctAnswer: "d",
		explantaion: "Following are the steps to follow to solve Tower of Hanoi problem recursively.Let the three pegs be A, B and C. The goal is to move n pegs from A to C.To move n discs from peg A to peg C: 1. move n-1 discs from A to B. This leaves disc n alone on peg A. 2. move disc n from A to C. 3. move n?1 discs from B to C so they sit on disc nThe recurrence function T(n) for time complexity of the above recursive solution can be written as following. T(n) = 2T(n-1) + 1",
		answers: {
			a: "A. T(n) = 2T(n – 2) + 2",
			b: "B. T(n) = 2T(n – 1) + n",
			c: "C. T(n) = 2T(n/2) + 1",
			d: "D. T(n) = 2T(n – 1) + 1"
		},
	},

	{
		questionNo: 2,
		question: "In general, in a recursive and non-recursive implementation of a problem (program) :",
		correctAnswer: "b",
		explantaion: "In general, in a recursive and non-recursive implementation of a problem (program) both time and space complexities are better in non-recursive than in recursive program. In some program recursive implementation gives worst case scenario too. So, recursive implementation does not guarantee for best case all the time. So, optipon (B) is correct.",
		answers: {
			a: "A. Both time and space complexities are better in recursive than in non-recursive program.",
			b: "B. Both time and space complexities are better in non-recursive than in recursive program",
			c: "C. Time complexity is better in recursive version but space complexity is better in non-recursive version of the program.",
			d: "D. Space complexity is better in recursive version but time complexity is better in non-recursive version of the program."
		},
	},

	{
		questionNo: 3,
		question: "The solution of the recurrence relation T(m) = T( 3m / 4) + 1 is :",
		correctAnswer: "a",
		explantaion: "None",
		answers: {
			a: "A. θ (lg m)",
			b: "B. θ (m)",
			c: "C. θ (mlg m)",
			d: "D. θ (lglg m)"
		},
	},
	{
		questionNo: 4,
		question: "Which of the following is correct recurrence for worst case of Binary Search?",
		correctAnswer: "c",
		explantaion: "Following is typical implementation of Binary Search. In Binary Search, we first compare the given element x with middle of the array. If x matches with middle element, then we return middle index. Otherwise, we either recur for left half of array or right half of array. So recurrence is T(n) = T(n/2) + O(1)",
		answers: {
			a: "A. T(n) = 2T(n/2) + O(1) and T(1) = T(0) = O(1)",
			b: "B. T(n) = T(n-1) + O(1) and T(1) = T(0) = O(1)",
			c: "C. T(n) = T(n/2) + O(1) and T(1) = T(0) = O(1)",
			d: "D. T(n) = T(n-2) + O(1) and T(1) = T(0) = O(1)"
		},
	},
	{
		questionNo: 5,
		question: "Given a sorted array of integers, what can be the minimum worst case time complexity to find ceiling of a number x in given array? Ceiling of an element x is the smallest element present in array which is greater than or equal to x. Ceiling is not present if x is greater than the maximum element present in array. For example, if the given array is {12, 67, 90, 100, 300, 399} and x = 95, then output should be 100.",
		correctAnswer: "c",
		explantaion: "We modify standard binary search to find ceiling. The time complexity T(n) can be written as T(n) <= T(n/2) + O(1) Solution of above recurrence can be obtained by Master Method. It falls in case 2 of Master Method. Solution is O(Logn).",
		answers: {
			a: "A. O(LogLogn)",
			b: "B. O(n)",
			c: "C. O(Logn)",
			d: "D. O(Logn * Logn)"
		},
	},
	{
		questionNo: 6,
		question: "You are given a list of 5 integers and these integers are in the range from 1 to 6. There are no duplicates in list. One of the integers is missing in the list. Which of the following expression would give the missing number. ^ is bitwise XOR operator. ~ is bitwise NOT operator. Let elements of list can be accessed as list[0], list[1], list[2], list[3], list[4]",
		correctAnswer: "b",
		explantaion: "XOR of all list elements and numbers from 1 to 6 gives the missing number.",
		answers: {
			a: "A. list[0] ^ list[1] ^ list[2] ^ list[3] ^ list[4]",
			b: "B. list[0] ^ list[1] ^ list[2] ^ list[3] ^ list[4] ^ 1 ^ 2 ^ 3 ^ 4 ^ 5 ^ 6",
			c: "C. list[0] ^ list[1] ^ list[2] ^ list[3] ^ list[4] ^ 1 ^ 2 ^ 3 ^ 4 ^ 5",
			d: "D. ~(list[0] ^ list[1] ^ list[2] ^ list[3] ^ list[4])"
		},
	},
	{
		questionNo: 7,
		question: "Consider a sorted array of n numbers. What would be the time complexity of the best known algorithm to find a pair a and b such that |a-b| = k , k being a positive integer.",
		correctAnswer: "a",
		explantaion: "Just maintain two pointers at the start and accordingly increment one of them depending upon whether difference is less than or greater than k.Just a single pass is required so the answer is O(n).",
		answers: {
			a: "A. O(n)",
			b: "B. O(nlog n)",
			c: "C. O(n2)",
			d: "D. O(logn)"
		},
	},
	{
		questionNo: 8,
		question: "The average number of key comparisons done in a successful sequential search in a list of length it is",
		correctAnswer: "d",
		explantaion: "None",
		answers: {
			a: "A. log n",
			b: "B. (n-1)/2",
			c: "C. n/2",
			d: "D. (n+1)/2"
		},
	},
	{
		questionNo: 9,
		question: "The recurrence relation that arises in relation with the complexity of binary search is:",
		correctAnswer: "b",
		explantaion: "Binary Search is a linear searching algorithm and takes O(log n) when array is sorted. Refer: Binary Search T(n) = T(n / 2) + k , where k is constant produces a complexity of O(log n)",
		answers: {
			a: "A. T(n) = 2T(n/ 2) + k , where k is constant",
			b: "B. T(n) = T(n / 2) + k , where k is constant",
			c: "C. T(n) = T(n / 2) + log n",
			d: "D. T(n) = T(n / 2) + n"
		},
	},
	{
		questionNo: 10,
		question: "The average number of key comparisons required for a successful search for sequential search on items is",
		correctAnswer: "c",
		explantaion: "None",
		answers: {
			a: "A. n/2",
			b: "B. (n-1)/2",
			c: "C. (n+1)/2",
			d: "D. None of these"
		},
	},

];

const ChapterArrayQuestions = [
	{
		questionNo: 0,
		question: "Array, Linked List, Stack & Queue",
		correctAnswer: "c",
		explantaion: "explanation",
		answers: {
			a: "A.",
			b: "B.",
			c: "C.",
			d: "D."
		},
	},
	{
		questionNo: 1,
		question:
			[
				"Which of the following points is/are true about Linked List data structure when it is compared with array"
			],
		correctAnswer: "d",
		explantaion: "See http://www.geeksforgeeks.org/linked-list-vs-array/ for explanation.",
		answers: {
			a: "A. Arrays have better cache locality that can make them better in terms of performance.",
			b: "B. Random access is not allowed in a typical implementation of Linked Lists",
			c: "C. The size of array has to be pre-decided, linked lists can change their size any time.",
			d: "D. All of the above"
		},
	}, {
		questionNo: 2,
		question:
			[
				"Which of the following sorting algorithms can be used to sort a random linked list with minimum time complexity?"
			],
		correctAnswer: "d",
		explantaion: "Both Merge sort and Insertion sort can be used for linked lists. The slow random-access performance of a linked list makes other algorithms (such as quicksort) perform poorly, and others (such as heapsort) completely impossible. Since worst case time complexity of Merge Sort is O(nLogn) and Insertion sort is O(n^2), merge sort is preferred.",
		answers: {
			a: "A. Insertion Sort",
			b: "B. Quick Sort",
			c: "C. Heap Sort",
			d: "D. Merge Sort"
		},
	}, {
		questionNo: 3,
		question:
			[
				"In the worst case, the number of comparisons needed to search a singly linked list of length n for a given element is "
			],
		correctAnswer: "d",
		explantaion: "In the worst case, the element to be searched has to be compared with all elements of linked list.",
		answers: {
			a: "A. log 2 n",
			b: "B. n/2",
			c: "C. log 2 n – 1",
			d: "D. n"
		},
	}, {
		questionNo: 4,
		question:
			[
				"Suppose each set is represented as a linked list with elements in arbitrary order. Which of the operations among union, intersection, membership, cardinality will be the slowest?"
			],
		correctAnswer: "d",
		explantaion: "For getting intersection of L1 and L2, search for each element of L1 in L2 and print the elements we find in L2. There can be many ways for getting union of L1 and L2. One of them is as follows a) Print all the nodes of L1 and print only those which are not present in L2. b) Print nodes of L2. All of these methods will require more operations than intersection as we have to process intersection node plus other nodes.",
		answers: {
			a: "A. union only",
			b: "B. intersection, membership",
			c: "C. membership, cardinality",
			d: "D. union, intersection"
		},
	}, {
		questionNo: 5,
		question:
			[
				"What are the time complexities of finding 8th element from beginning and 8th element from end in a singly linked list? Let n be the number of nodes in linked list, you may assume that n > 8."
			],
		correctAnswer: "a",
		explantaion: "Finding 8th element from beginning requires 8 nodes to be traversed which takes constant time. Finding 8th from end requires the complete list to be traversed.",
		answers: {
			a: "A. O(1) and O(n)",
			b: "B. O(1) and O(1)",
			c: "C. O(n) and O(1)",
			d: "D. O(n) and O(n)"
		},
	}, {
		questionNo: 6,
		question:
			[
				"Is it possible to create a doubly linked list using only one pointer with every node."
			],
		correctAnswer: "b",
		explantaion: "https://www.geeksforgeeks.org/xor-linked-list-a-memory-efficient-doubly-linked-list-set-1/",
		answers: {
			a: "A. Not Possible",
			b: "B. Yes, possible by storing XOR of addresses of previous and next nodes.",
			c: "C. Yes, possible by storing XOR of current node and next node",
			d: "D. Yes, possible by storing XOR of current node and previous node"
		},
	}, {
		questionNo: 7,
		question:
			[
				"Given pointer to a node X in a singly linked list. Only one pointer is given, pointer to head node is not given, can we delete the node X from given linked list?"
			],
		correctAnswer: "a",
		explantaion: [
			'Following are simple steps.',
			"struct node *temp  = X->next;",
			" X->data  = temp->data;",
			"X->next  = temp->next;",
			"free(temp);"
		],
		answers: {
			a: "A. Possible if X is not last node. Use following two steps (a) Copy the data of next of X to X. (b) Delete next of X.",
			b: "B. Possible if size of linked list is even.",
			c: "C. Possible if size of linked list is odd",
			d: "D. Possible if X is not first node. Use following two steps (a) Copy the data of next of X to X. (b) Delete next of X."
		},
	}, {
		questionNo: 8,
		question:
			[
				"You are given pointers to first and last nodes of a singly linked list, which of the following operations are dependent on the length of the linked list?"
			],
		correctAnswer: "c",
		explantaion: "a) Can be done in O(1) time by deleting memory and changing the first pointer. b) Can be done in O(1) time, see push() here c) Delete the last element requires pointer to previous of last, which can only be obtained by traversing the list. d) Can be done in O(1) by changing next of last and then last.",
		answers: {
			a: "A. Delete the first element",
			b: "B. Insert a new element as a first element",
			c: "C. Delete the last element of the list",
			d: "D. Add a new element at the end of the list"
		},
	}, {
		questionNo: 9,
		question:
			[
				"Let P be a singly linked list. Let Q be the pointer to an intermediate node x in the list. What is the worst-case time complexity of the best known algorithm to delete the node x from the list?"
			],
		correctAnswer: "d",
		explantaion: "A simple solution is to traverse the linked list until you find the node you want to delete. But this solution requires pointer to the head node which contradicts the problem statement. Fast solution is to copy the data from the next node to the node to be deleted and delete the next node.Time complexity of this approach is O(1) Refer this for implementation. Note that this approach doesn't work when node to deleted is last node. Since the question says intermediate node, we can use this approach.",
		answers: {
			a: "A. O(n)",
			b: "B. O(log2 n)",
			c: "C. O(logn)",
			d: "D. O(1)"
		},
	}, {
		questionNo: 10,
		question:
			[
				"N items are stored in a sorted doubly linked list. For a delete operation, a pointer is provided to the record to be deleted. For a decrease-key operation, a pointer is provided to the record on which the operation is to be performed. An algorithm performs the following operations on the list in this order: Θ(N) delete, O(log N) insert, O(log N) find, and Θ(N) decrease-key What is the time complexity of all these operations put together"
			],
		correctAnswer: "c",
		explantaion: "The time complexity of decrease-key operation is Θ(1) since we have the pointer to the record where we have to perform the operation. However, we must keep the doubly linked list sorted and after the decrease-key operation we need to find the new location of the key. This step will take Θ(N) time and since there are Θ(N) decrease-key operations, the time complexity becomes O(N2). Note that the other three operations have a lower bound than this one.",
		answers: {
			a: "A. O(Log2N)",
			b: "B. O(N)",
			c: "C. O(N2)",
			d: "D. Θ(N2 Log N)"
		},
	},

];

const ChapterBubbleQuestions = [
	{
		questionNo: 0,
		question: "Bubble Sort & Insertion Sort",
		correctAnswer: "c",
		explantaion: "explanation",
		answers: {
			a: "A.",
			b: "B.",
			c: "C.",
			d: "D."
		},
	},
	{
		questionNo: 1,
		question:
			[
				"What is the best time complexity of bubble sort?"
			],
		correctAnswer: "c",
		explantaion:
			[
				"The bubble sort is at its best if the input data is sorted",
			],
		answers: {
			a: "A. N^2",
			b: "B. NlogN",
			c: "C. N",
			d: "D. N(logN)^2"
		},
	},
	{
		questionNo: 2,
		question:
			[
				"What is the worst case time complexity of insertion sort where position of the data to be inserted is calculated using binary search?"
			],
		correctAnswer: "c",
		explantaion:
			[
				"Applying binary search to calculate the position of the data to be inserted doesn't reduce the time complexity of insertion sort. This is because insertion of a data at an appropriate position involves two steps: 1. Calculate the position. 2. Shift the data from the position calculated in step #1 one step right to create a gap where the data will be inserted. Using binary search reduces the time complexity in step #1 from O(N) to O(logN). But, the time complexity in step #2 still remains O(N). So, overall complexity remains O(N^2).",
			],
		answers: {
			a: "A. N",
			b: "B. NlogN",
			c: "C. N^2",
			d: "D. N(logN)^2"
		},
	},
	{
		questionNo: 3,
		question:
			[
				"The tightest lower bound on the number of comparisons, in the worst case, for comparison-based sorting is of the order of"
			],
		correctAnswer: "c",
		explantaion:
			[
				"The number of comparisons that a comparison sort algorithm requires increases in proportion to Nlog(N), where N is the number of elements to sort. This bound is asymptotically tight: Given a list of distinct numbers (we can assume this because this is a worst-case analysis), there are N factorial permutations exactly one of which is the list in sorted order. The sort algorithm must gain enough information from the comparisons to identify the correct permutations. If the algorithm always completes after at most f(N) steps, it cannot distinguish more than 2^f(N) cases because the keys are distinct and each comparison has only two possible outcomes. Therefore, 2^f(N) >= N! or equivalently f(N) >= log(N!). Since log(N!) is Omega(NlogN), the answer is NlogN.",
			],
		answers: {
			a: "A. N",
			b: "B. N^2",
			c: "C. NlogN",
			d: "D. N(logN)^2"
		},
	},
	{
		questionNo: 4,
		question:
			[
				"In a permutation a1.....an of n distinct integers, an inversion is a pair (ai, aj) such that i < j and ai > aj. What would be the worst case time complexity of the Insertion Sort algorithm, if the inputs are restricted to permutations of 1.....n with at most n inversions?"
			],
		correctAnswer: "d",
		explantaion:
			[
				"Insertion sort runs in Θ(n + f(n)) time, where f(n) denotes the number of inversion initially present in the array being sorted.",
			],
		answers: {
			a: "A. Θ (n^2)",
			b: "B. Θ (n log n)",
			c: "C. Θ (n1.5)",
			d: "D. Θ (n)"
		},
	},
	{
		questionNo: 5,
		question:
			[
				"The auxiliary space of insertion sort is O(1), what does O(1) mean ?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"The term O(1) states that the space required by the insertion sort is constant i.e., space required doesn't depend on input.",
			],
		answers: {
			a: "A. The memory (space) required to process the data is not constant.",
			b: "B. It means the amount of extra memory Insertion Sort consumes doesn't depend on the input. The algorithm should use the same amount of memory for all inputs.",
			c: "C. It takes only 1 kb of memory",
			d: "D. 	It is the speed at which the elements are traversed."
		},
	},
	{
		questionNo: 6,
		question:
			[
				"A sorting technique is called stable if:"
			],
		correctAnswer: "b",
		explantaion:
			[
				"No",
			],
		answers: {
			a: "A. It takes O(nlog n)time",
			b: "B. It maintains the relative order of occurrence of non-distinct elements",
			c: "C. It uses divide and conquer paradigm",
			d: "D. It takes O(n) space"
		},
	},
	{
		questionNo: 7,
		question:
			[
				"Consider an array of elements arr[5]= {5,4,3,2,1} , what are the steps of insertions done while doing insertion sort in the array.  "
			],
		correctAnswer: "a",
		explantaion:
			[
				"In the insertion sort , just imagine that the first element is already sorted and all the right side Elements are unsorted, we need to insert all elements one by one from left to right in the sorted Array. Sorted : 5                                unsorted : 4 3 2 1 Insert all elements less than 5 on the left (Considering 5 as the key ) Now key value is 4 and array will look like this Sorted : 4 5                             unsorted : 3 2 1 Similarly for all the cases the key will always be the newly inserted value and all the values will be compared to that key and inserted in to proper position.",
			],
		answers: {
			a: "A. 4 5 3 2 1 3 4 5 2 1 2 3 4 5 1 1 2 3 4 5",
			b: "B. 5 4 3 1 2 5 4 1 2 3 5 1 2 3 4 1 2 3 4 5",
			c: "C. 4 3 2 1 5 3 2 1 5 4 2 1 5 4 3 1 5 4 3 2",
			d: "D. 4 5 3 2 1 2 3 4 5 1 3 4 5 2 1 1 2 3 4 5"
		},
	},
	{
		questionNo: 8,
		question:
			[
				"Which is the correct order of the following algorithms with respect to their time Complexity in the best case ?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"In best case,",
				"Quick sort: O (nlogn)",
				"Merge sort: O (nlogn)",
				"Insertion sort: O (n)",
				"Selection sort: O (n^2)",
			],
		answers: {
			a: "A. Merge sort > Quick sort >Insertion sort > selection sort",
			b: "B. insertion sort < Quick sort < Merge sort < selection sort",
			c: "C. Merge sort > selection sort > quick sort > insertion sort",
			d: "D. Merge sort > Quick sort > selection sort > insertion sort"
		},
	},
	{
		questionNo: 9,
		question:
			[
				"Consider the array A[]= {6,4,8,1,3} apply the insertion sort to sort the array . Consider the cost associated with each sort is 25 rupees , what is the total cost of the insertion sort when element 1 reaches the first position of the array  ?"
			],
		correctAnswer: "a",
		explantaion:
			[
				"When the element 1 reaches the first position of the array two comparisons are only required hence 25 * 2= 50 rupees. *step 1: 4 6 8 1 3 . *step 2: 1 4 6 8 3.",
			],
		answers: {
			a: "A. 50",
			b: "B. 25",
			c: "C. 70",
			d: "D. 100"
		},
	},
	{
		questionNo: 10,
		question:
			[
				"Which of the following sorting algorithms has the minimum running time complexity in the best and average case?"
			],
		correctAnswer: "a",
		explantaion:
			[
				"Insertion sort has a best case complexity of O(n), if the array is already sorted while it has an average case complexity of O(n2) Quick sort has a best case complexity of O(n log n), while it has an average case complexity of O(n log n) also. So, option (A) is correct.",
			],
		answers: {
			a: "A. Insertion sort, Quick sort",
			b: "B. Quick sort, Quick sort",
			c: "C. Quick sort, Insertion sort",
			d: "D. Insertion sort, Insertion sort"
		},
	},
]

const ChapterQuickQuestions = [
	{
		questionNo: 0,
		question: "Quick Sort",
		correctAnswer: "c",
		explantaion: "explanation",
		answers: {
			a: "A.",
			b: "B.",
			c: "C.",
			d: "D."
		},
	},
	{
		questionNo: 1,
		question:
			[
				"What is recurrence for worst case of QuickSort and what is the time complexity in Worst case?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"The worst case of QuickSort occurs when the picked pivot is always one of the corner elements in sorted array. In worst case, QuickSort recursively calls one subproblem with size 0 and other subproblem with size (n-1). So recurrence is T(n) = T(n-1) + T(0) + O(n) The above expression can be rewritten as T(n) = T(n-1) + O(n)",
			],
		answers: {
			a: "A. Recurrence is T(n) = T(n-2) + O(n) and time complexity is O(n^2)",
			b: "B. Recurrence is T(n) = T(n-1) + O(n) and time complexity is O(n^2)",
			c: "C. Recurrence is T(n) = 2T(n/2) + O(n) and time complexity is O(nLogn)",
			d: "D. Recurrence is T(n) = T(n/10) + T(9n/10) + O(n) and time complexity is O(nLogn)"
		},
	},
	{
		questionNo: 2,
		question:
			[
				"Suppose we have a O(n) time algorithm that finds median of an unsorted array. Now consider a QuickSort implementation where we first find median using the above algorithm, then use median as pivot. What will be the worst case time complexity of this modified QuickSort."
			],
		correctAnswer: "d",
		explantaion:
			[
				"If we use median as a pivot element, then the recurrence for all cases becomes T(n) = 2T(n/2) + O(n) The above recurrence can be solved using Master Method. It falls in case 2 of master method.",
			],
		answers: {
			a: "A. O(n^2 Logn)",
			b: "B. O(n^2)",
			c: "C. O(n Logn Logn)",
			d: "D. O(nLogn)"
		},
	},
	{
		questionNo: 3,
		question:
			[
				"Consider the Quicksort algorithm. Suppose there is a procedure for finding a pivot element which splits the list into two sub-lists each of which contains at least one-fifth of the elements. Let T(n) be the number of comparisons required to sort n elements. Then"
			],
		correctAnswer: "b",
		explantaion:
			[
				"For the case where n/5 elements are in one subset, T(n/5) comparisons are needed for the first subset with n/5 elements, T(4n/5) is for the rest 4n/5 elements, and n is for finding the pivot. If there are more than n/5 elements in one set then other set will have less than 4n/5 elements and time complexity will be less than T(n/5) + T(4n/5) + n because recursion tree will be more balanced.",
			],
		answers: {
			a: "A. T(n) <= 2T(n/5) + n",
			b: "B. T(n) <= T(n/5) + T(4n/5) + n",
			c: "C. T(n) <= 2T(4n/5) + n",
			d: "D. T(n) <= 2T(n/2) + n"
		},
	},
	{
		questionNo: 4,
		question:
			[
				"You have an array of n elements. Suppose you implement quicksort by always choosing the central element of the array as the pivot. Then the tightest upper bound for the worst case performance is"
			],
		correctAnswer: "a",
		explantaion:
			[
				"For any input, there are some permutations for which worst case will be O(n2).  In some case, choosing the middle element minimizes the chances of encountering O(n2), but in worst case it can go to O(n2). Whichever element we take as Pivot, either first or middle, worst case will be O(n2) since Pivot is fixed in position. While choosing a random pivot minimizes the chances of encountering worst case i.e. O(n2). Refer this article on Quick Sort.",
			],
		answers: {
			a: "A. O(n2)",
			b: "B. O(nLogn)",
			c: "C. Θ(nLogn)",
			d: "D. O(n3)"
		},
	},
	{
		questionNo: 5,
		question:
			[
				"Randomized quicksort is an extension of quicksort where the pivot is chosen randomly. What is the worst case complexity of sorting n numbers using randomized quicksort?"
			],
		correctAnswer: "c",
		explantaion:
			[
				"Randomized quicksort has expected time complexity as O(nLogn), but worst case time complexity remains same. In worst case the randomized function can pick the index of corner element every time.",
			],
		answers: {
			a: "A. O(n)",
			b: "B. O(n Log n)",
			c: "C. O(n2)",
			d: "D. O(n!)"
		},
	},
	{
		questionNo: 6,
		question:
			[
				"Which one of the following is the recurrence equation for the worst case time complexity of the Quicksort algorithm for sorting n(? 2) numbers? In the recurrence equations given in the options below, c is a constant."
			],
		correctAnswer: "b",
		explantaion:
			[
				"In worst case, the chosen pivot is always placed at a corner position and recursive call is made for following. a) for subarray on left of pivot which is of size n-1 in worst case. b) for subarray on right of pivot which is of size 0 in worst case.",
			],
		answers: {
			a: "A. T(n) = 2T (n/2) + cn",
			b: "B. T(n) = T(n – 1) + T(0) + cn",
			c: "C. T(n) = 2T (n – 2) + cn",
			d: "D. T(n) = T(n/2) + cn"
		},
	},
	{
		questionNo: 7,
		question:
			[
				"Given an unsorted array. The array has this property that every element in array is at most k distance from its position in sorted array where k is a positive integer smaller than size of array. Which sorting algorithm can be easily modified for sorting this array and what is the obtainable time complexity?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"See http://www.geeksforgeeks.org/nearly-sorted-algorithm/ for explanation and implementation.",
			],
		answers: {
			a: "A. Insertion Sort with time complexity O(kn)",
			b: "B. Heap Sort with time complexity O(nLogk)",
			c: "C. Quick Sort with time complexity O(kLogk)",
			d: "D. Merge Sort with time complexity O(kLogk)"
		},
	},
	{
		questionNo: 8,
		question:
			[
				"Consider a situation where swap operation is very costly. Which of the following sorting algorithms should be preferred so that the number of swap operations are minimized in general?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"Selection sort makes O(n) swaps which is minimum among all sorting algorithms mentioned above.",
			],
		answers: {
			a: "A. Heap Sort",
			b: "B. Selection Sort",
			c: "C. Insertion Sort",
			d: "D. Merge Sort"
		},
	},
	{
		questionNo: 9,
		question:
			[
				"Which of the following is not true about comparison based sorting algorithms?"
			],
		correctAnswer: "d",
		explantaion:
			[
				"See http://www.geeksforgeeks.org/lower-bound-on-comparison-based-sorting-algorithms/ for point A. See http://www.geeksforgeeks.org/stability-in-sorting-algorithms/ for B. C is true, count sort is an Integer Sorting algorithm.",
			],
		answers: {
			a: "A. The minimum possible time complexity of a comparison based sorting algorithm is O(nLogn) for a random input array",
			b: "B. Any comparison based sorting algorithm can be made stable by using position as a criteria when two elements are compared",
			c: "C. Counting Sort is not a comparison based sorting algortihm",
			d: "D. Heap Sort is not a comparison based sorting algorithm."
		},
	},
	{
		questionNo: 10,
		question:
			[
				"Suppose we are sorting an array of eight integers using heapsort, and we have just finished some heapify (either maxheapify or minheapify) operations. The array now looks like this: 16 14 15 10 12 27 28 How many heapify operations have been performed on root of heap?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"In Heapsort, we first build a heap, then we do following operations till the heap size becomes 1. a) Swap the root with last element b) Call heapify for root c) reduce the heap size by 1. In this question, it is given that heapify has been called few times and we see that last two elements in given array are the 2 maximum elements in array. So situation is clear, it is maxheapify whic has been called 2 times.",
			],
		answers: {
			a: "A. 1",
			b: "B. 2",
			c: "C. 3 or 4",
			d: "D. 5 or 6"
		},
	},


]

const ChapterMergeQuestion = [
	{
		questionNo: 0,
		question: "Merge Sort",
		correctAnswer: "c",
		explantaion: "explanation",
		answers: {
			a: "A.",
			b: "B.",
			c: "C.",
			d: "D."
		},
	},
	{
		questionNo: 1,
		question:
			[
				"In a modified merge sort, the input array is splitted at a position one-third of the length(N) of the array. What is the worst case time complexity of this merge sort?"
			],
		correctAnswer: "d",
		explantaion:
			[
				"The time complexity is given by: T(N) = T(N/3) + T(2N/3) + N Solving the above recurrence relation gives, T(N) = N(logN base 3/2)",
			],
		answers: {
			a: "A. N(logN base 3)",
			b: "B. N(logN base 2/3)",
			c: "C. N(logN base 1/3)",
			d: "D. N(logN base 3/2)"
		},
	},
	{
		questionNo: 2,
		question:
			[
				"The worst case running times of Insertion sort, Merge sort and Quick sort, respectively, are:"
			],
		correctAnswer: "d",
		explantaion:
			[
				"Insertion Sort takes Θ(n2) in worst case as we need to run two loops. The outer loop is needed to one by one pick an element to be inserted at right position. Inner loop is used for two things, to find position of the element to be inserted and moving all sorted greater elements one position ahead. Therefore the worst case recursive formula is T(n) = T(n-1) + Θ(n).",
				"Merge Sort takes Θ(n Log n) time in all cases. We always divide array in two halves, sort the two halves and merge them. The recursive formula is T(n) = 2T(n/2) + Θ(n).",
				"QuickSort takes Θ(n2) in worst case. In QuickSort, we take an element as pivot and partition the array around it. In worst case, the picked element is always a corner element and recursive formula becomes T(n) = T(n-1) + Θ(n). An example scenario when worst case happens is, arrays is sorted and our code always picks a corner element as pivot.",
			],
		answers: {
			a: "A. Θ(n log n), Θ(n log n) and Θ(n2)",
			b: "B. Θ(n2), Θ(n2) and Θ(n Log n)",
			c: "C. Θ(n2), Θ(n log n) and Θ(n log n)",
			d: "D. Θ(n2), Θ(n log n) and Θ(n2)"
		},
	},
	{
		questionNo: 3,
		question:
			[
				"If one uses straight two-way merge sort algorithm to sort the following elements in ascending order 20, 47, 15, 8, 9, 4, 40, 30, 12, 17 then the order of these elements after the second pass of the algorithm is:"
			],
		correctAnswer: "b",
		explantaion:
			[
				"In first pass the elements are sorted in n/4 (first 2 elements in each group) sub arrays but in second pass the elements are sorted in n/2 (first 4 elements in each group) sub arrays.",
			],
		answers: {
			a: "A. 8, 9, 15, 20, 47, 4, 12, 17, 30, 40",
			b: "B. 8, 15, 20, 47, 4, 9, 30, 40, 12, 17",
			c: "C. 15, 20, 47, 4, 8, 9, 12, 30, 40, 17",
			d: "D. 4, 8, 9, 15, 20, 47, 12, 17, 30, 40"
		},
	},
	{
		questionNo: 4,
		question:
			[
				"The minimum number of record movements required to merge five files A (with 10 records), B (with 20 records), C (with 15 records), D (with 5 records) and E (with 25 records) is:"
			],
		correctAnswer: "a",
		explantaion:
			[
				"minimum number of record movements required = sum of internal node's value = 15 + 30 + 45 + 75 = 165 So, option (A) is correct.",
			],
		answers: {
			a: "A. 165",
			b: "B. 90",
			c: "C. 75",
			d: "D. 65"
		},
	},
	{
		questionNo: 5,
		question:
			[
				"A list of n string, each of length n, is sorted into lexicographic order using the merge-sort algorithm. The worst case running time of this computation is"
			],
		correctAnswer: "b",
		explantaion:
			[
				"The recurrence tree for merge sort will have height Log(n). And O(n^2) work will be done at each level of the recurrence tree (Each level involves n comparisons and a comparison takes O(n) time in worst case). So time complexity of this Merge Sort will be O(n^2 logn)",
			],
		answers: {
			a: "A. O(nlogn)",
			b: "B. O(n^2 logn)",
			c: "C. O(n^2+logn)",
			d: "D. O(n^2)"
		},
	},
	{
		questionNo: 6,
		question:
			[
				"Which of the following is true about merge sort?"
			],
		correctAnswer: "d",
		explantaion:
			[
				"No",
			],
		answers: {
			a: "A. Merge Sort works better than quick sort if data is accessed from slow sequential memory.",
			b: "B. Merge Sort is stable sort by nature",
			c: "C. Merge sort outperforms heap sort in most of the practical situations.",
			d: "D. All of the above."
		},
	},
	{
		questionNo: 7,
		question:
			[
				"Assume that a mergesort algorithm in the worst case takes 30 seconds for an input of size 64. Which of the following most closely approximates the maximum input size of a problem that can be solved in 6 minutes?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"Time complexity of merge sort is Θ(nLogn)",
				"c*64Log64 is 30",
				"c*64*6 is 30",
				"c is 5/64",
				"For time 6 minutes",
				"5/64*nLogn = 6*60",
				"nLogn = 72*64 = 512 * 9",
				"n = 512. ",
			],
		answers: {
			a: "A. 256",
			b: "B. 512",
			c: "C. 1024",
			d: "D. 2048"
		},
	},
	{
		questionNo: 8,
		question:
			[
				"Given two sorted list of size m and n respectively. The number of comparisons needed the worst case by the merge sort algorithm will be"
			],
		correctAnswer: "d",
		explantaion:
			[
				"To merge two lists of size m and n, we need to do m+n-1 comparisons in worst case. Since we need to merge 2 at a time, the optimal strategy would be to take smallest size lists first. The reason for picking smallest two items is to carry minimum items for repetition in merging. So, option (D) is correct.",
			],
		answers: {
			a: "A. m x n",
			b: "B. maximum of m and n",
			c: "C. minimum of m and n",
			d: "D. m + n - 1"
		},
	},
	{
		questionNo: 9,
		question:
			[
				"Of the following sorting algorithms, which has a running time that is least dependent on the initial ordering of the input?"
			],
		correctAnswer: "a",
		explantaion:
			[
				"In Insertion sort if the array is already sorted then it takes O(n) and if it is reverse sorted then it takes O(n2) to sort the array. In Quick sort, if the array is already sorted or if it is reverse sorted then it takes O(n2).The best and worst case performance of Selection is O(n2) only. But if the array is already sorted then less swaps take place. In merge sort, time complexity is O(nlogn) for all the cases and performance is affected least on the the order of input sequence. So, option (A) is correct.",
			],
		answers: {
			a: "A. Merge Sort",
			b: "B. Insertion Sort",
			c: "C. Selection Sort",
			d: "D. Quick Sort"
		},
	},
	{
		questionNo: 10,
		question:
			[
				"Which of the following is not a stable sorting algorithm in its typical implementation."
			],
		correctAnswer: "d",
		explantaion:
			[
				"See following for details. http://www.geeksforgeeks.org/stability-in-sorting-algorithms/",
			],
		answers: {
			a: "A. Insertion Sort",
			b: "B. Merge Sort",
			c: "C. Quick Sort",
			d: "D. Bubble Sort"
		},
	},


]

const ChapterHeapSortQuestions = [
	{
		questionNo: 0,
		question: "Heap Sort, Bucket Sort & Radix Sort",
		correctAnswer: "c",
		explantaion: "explanation",
		answers: {
			a: "A.",
			b: "B.",
			c: "C.",
			d: "D."
		},
	},
	{
		questionNo: 1,
		question:
			[
				"Given an unsorted array. The array has this property that every element in array is at most k distance from its position in sorted array where k is a positive integer smaller than size of array. Which sorting algorithm can be easily modified for sorting this array and what is the obtainable time complexity?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"See http://www.geeksforgeeks.org/nearly-sorted-algorithm/ for explanation and implementation.",
			],
		answers: {
			a: "A. Insertion Sort with time complexity O(kn)",
			b: "B. Heap Sort with time complexity O(nLogk)",
			c: "C. Quick Sort with time complexity O(kLogk)",
			d: "D. Merge Sort with time complexity O(kLogk)"
		},
	},
	{
		questionNo: 2,
		question:
			[
				"Which of the following is not true about comparison based sorting algorithms?"
			],
		correctAnswer: "d",
		explantaion:
			[
				"See http://www.geeksforgeeks.org/lower-bound-on-comparison-based-sorting-algorithms/ for point A. See http://www.geeksforgeeks.org/stability-in-sorting-algorithms/ for B. C is true, count sort is an Integer Sorting algorithm.",
			],
		answers: {
			a: "A. The minimum possible time complexity of a comparison based sorting algorithm is O(nLogn) for a random input array",
			b: "B. Any comparison based sorting algorithm can be made stable by using position as a criteria when two elements are compared",
			c: "C. Counting Sort is not a comparison based sorting algortihm",
			d: "D. Heap Sort is not a comparison based sorting algorithm"
		},
	},
	{
		questionNo: 3,
		question:
			[
				"If we use Radix Sort to sort n integers in the range (nk/2,nk], for some k>0 which is independent of n, the time taken would be?"
			],
		correctAnswer: "c",
		explantaion:
			[
				"Radix sort time complexity = O(wn)",
				"for n keys of word size= w",
				"=>w = log(nk)",
				"O(wn)=O(klogn.n)",
				"=> kO(nlogn)",
			],
		answers: {
			a: "A. Θ(n)",
			b: "B. Θ(kn)",
			c: "C. Θ(nlogn)",
			d: "D. Θ(n2)"
		},
	},
	{
		questionNo: 4,
		question:
			[
				"Suppose we are sorting an array of eight integers using heapsort, and we have just finished some heapify (either maxheapify or minheapify) operations. The array now looks like this: 16 14 15 10 12 27 28 How many heapify operations have been performed on root of heap?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"In Heapsort, we first build a heap, then we do following operations till the heap size becomes 1. a) Swap the root with last element b) Call heapify for root c) reduce the heap size by 1. In this question, it is given that heapify has been called few times and we see that last two elements in given array are the 2 maximum elements in array. So situation is clear, it is maxheapify whic has been called 2 times.",
			],
		answers: {
			a: "A. 1",
			b: "B. 2",
			c: "C. 3 or 4",
			d: "D. 5 or 6"
		},
	},
	{
		questionNo: 5,
		question:
			[
				"The number of elements that can be sorted in Θ(logn) time using heap sort is"
			],
		correctAnswer: "c",
		explantaion:
			[
				"Time complexity of Heap Sort is Θ(mLogm) for m input elements. For m = Θ(Log n/(Log Log n)), the value of Θ(m * Logm) will be Θ( [Log n/(Log Log n)] * [Log (Log n/(Log Log n))] ) which will be \Θ( [Log n/(Log Log n)] * [ Log Log n - Log Log Log n] ) which is Θ(Log n)",
			],
		answers: {
			a: "A. Θ(1)",
			b: "B. Θ(sqrt{logn})",
			c: "C. Θ(Log n/(Log Log n))",
			d: "D. Θ(Log n) "
		},
	},
	{
		questionNo: 6,
		question:
			[
				"Consider a binary min heap containing n elements and every node is having degree 2 ( i.e. full binary min heap tree). What is the probability of finding the largest element at the last level ?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"Always 1 as maximum element will always be present in the leaf nodes in case of binary min heap.",
			],
		answers: {
			a: "A. 1/2",
			b: "B. 1",
			c: "C. 1/n",
			d: "D. 1/(2^n)"
		},
	},
	{
		questionNo: 7,
		question:
			[
				"Given an array where numbers are in range from 1 to n^6, which sorting algorithm can be used to sort these number in linear time?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"See https://www.geeksforgeeks.org/radix-sort/ for explanation.",
			],
		answers: {
			a: "A. Not possible to sort in linear time",
			b: "B. Radix Sort",
			c: "C. Counting Sort",
			d: "D. Quick Sort"
		},
	},
	{
		questionNo: 8,
		question:
			[
				"If there are n integers to sort, each integer has d digits, and each digit is in the set {1, 2, ..., k}, radix sort can sort the numbers in:"
			],
		correctAnswer: "b",
		explantaion:
			[
				"If there are n integers to sort, each integer has d digits, and each digit is in the set {1, 2, ..., k}, radix sort can sort the numbers in O(d (n + k))",
			],
		answers: {
			a: "A. O (k (n + d))",
			b: "B. O (d (n + k))",
			c: "C. O ((n + k) lg d)",
			d: "D. O ((n + d) lg k)"
		},
	},
	{
		questionNo: 9,
		question:
			[
				"The maximum number of comparisons needed to sort 9 items using radix sort is (assume each item is 5 digit octal number):"
			],
		correctAnswer: "d",
		explantaion:
			[
				"No",
			],
		answers: {
			a: "A. 45",
			b: "B. 72",
			c: "C. 360",
			d: "D. 450"
		},
	},
	{
		questionNo: 10,
		question:
			[
				"What is the worst case performance for bucket sort?"
			],
		correctAnswer: "c",
		explantaion:
			[
				"No",
			],
		answers: {
			a: "A. O(n)",
			b: "B. O(n logn)",
			c: "C. O(n^2)",
			d: "D. O(1)"
		},
	},


]

const ChapterHashQuestions = [
	{
		questionNo: 0,
		question: "Hash Table",
		correctAnswer: "c",
		explantaion: "explanation",
		answers: {
			a: "A.",
			b: "B.",
			c: "C.",
			d: "D."
		},
	},
	{
		questionNo: 1,
		question:
			[
				"An advantage of chained hash table (external hashing) over the open addressing scheme is"
			],
		correctAnswer: "c",
		explantaion:
			[
				"No",
			],
		answers: {
			a: "A. Worst case complexity of search operations is less",
			b: "B. Space used is less",
			c: "C. Deletion is easier",
			d: "D. None of the above"
		},
	},
	{
		questionNo: 2,
		question:
			[
				"A hash function h defined h(key)=key mod 7, with linear probing, is used to insert the keys 44, 45, 79, 55, 91, 18, 63 into a table indexed from 0 to 6. What will be the location of key 18 ?"
			],
		correctAnswer: "c",
		explantaion:
			[
				"keys 44, 45, 79, 55, 91, 18, 63 h(key)=key mod 7 h(44) = 44mod7 = 2 h(45) = 45mod7 = 3 h(79) = 79mod7 = 2 but 2 is already filled 44, linear probing is applied but 3 ias also filled. So, 79 will occupy 4. h(55) = 55mod7 = 6 h(91) = 91mod7 = 0 h(18) = 18mod7 = 4 but 4 is occupied by 79 so, it will occupy 5. h(63) = 63mod7 = 0. 0 is also occupied so, it will occupy 1. So, option (C) is correct.",
			],
		answers: {
			a: "A. 3",
			b: "B. 4",
			c: "C. 5",
			d: "D. 6"
		},
	},
	{
		questionNo: 3,
		question:
			[
				"Consider a hash table of size seven, with starting index zero, and a hash function (7x+3) mod 4. Assuming the hash table is initially empty, which of the following is the contents of the table when the sequence 1, 3, 8, 10 is inserted into the table using closed hashing ? Here “__” denotes an empty location in the table."
			],
		correctAnswer: "a",
		explantaion:
			[
				"Keys are 1, 3, 8, 10. h(x) = (7*x + 3)",
				"h(1) = (10) mod 4 = 2 ",
				"h(3) = (7 * 3 + 3) mod 4 = 24 mod 4 = 0",
				"h(8) = (7 * 8 + 3) mod 4 = 3 ",
				"h(10)= (7 * 10 + 3)mod 4 = 1",
				"i.e. 3, 10, 1, 8, __ , __ , __",
				"So, option (A) is correct.",
			],
		answers: {
			a: "A. 3, 10, 1, 8, __ , __ , __",
			b: "B. 1, 3, 8, 10, __ , __ , __",
			c: "C. 1, __ , 3, __ , 8, __ , 10",
			d: "D. 3, 10, __ , __ , 8, __ , __"
		},
	},
	{
		questionNo: 4,
		question:
			[
				"What is a hash table?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"Explanation: A hash table is used to implement associative arrays which has a key-value pair, so the has table maps keys to values.",
			],
		answers: {
			a: "A. A structure that maps values to keys",
			b: "B. A structure that maps keys to values",
			c: "C. A structure used for storage",
			d: "D. A structure used to implement stack and queue"
		},
	},
	{
		questionNo: 5,
		question:
			[
				"What is a hash function?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"Explanation: In a hash table, there are fewer array positions than the keys, so the position of the key in the array has to be computed, this is done using the hash function.",
			],
		answers: {
			a: "A. A function has allocated memory to keys",
			b: "B. A function that computes the location of the key in the array",
			c: "C. A function that creates an array",
			d: "D. None of the mentioned"
		},
	},
	{
		questionNo: 6,
		question:
			[
				"What is simple uniform hashing?"
			],
		correctAnswer: "a",
		explantaion:
			[
				"Explanation: In simple uniform hashing, any given element is equally likely to hash into any of the slots available in the array.",
			],
		answers: {
			a: "A. Every element has equal probability of hashing into any of the slots",
			b: "B. A weighted probabilistic method is used to hash elements into the slots",
			c: "C. All of the mentioned",
			d: "D. None of the mentioned"
		},
	},
	{
		questionNo: 7,
		question:
			[
				"Given the following input (4322, 1334, 1471, 9679, 1989, 6171, 6173, 4199) and the hash function x mod 10, which of the following statements are true? i. 9679, 1989, 4199 hash to the same value ii. 1471, 6171 has to the same value iii. All elements hash to the same value iv. Each element hashes to a different value"
			],
		correctAnswer: "c",
		explantaion:
			[
				"Hash function given is mod(10).",
				"9679, 1989 and 4199 all these give same hash value i.e 9",
				"1471 and 6171 give hash value 1 ",
			],
		answers: {
			a: "A. i only",
			b: "B. ii only",
			c: "C. i and ii only",
			d: "D. iii or iv"
		},
	},
	{
		questionNo: 8,
		question:
			[
				"Consider a hash table with 100 slots. Collisions are resolved using chaining. Assuming simple uniform hashing, what is the probability that the first 3 slots are unfilled after the first 3 insertions?"
			],
		correctAnswer: "a",
		explantaion:
			[
				"Probability that the first 3 slots are unfilled after the first 3 insertions = ",
				"                (probability that first item doesn't go in any of the first 3 slots)*",
				"                (probability that second item doesn't go in any of the first 3 slots)*",
				"                (probability that third item doesn't go in any of the first 3 slots)",
				"                 = (97/100) * (97/100) * (97/100)",
			],
		answers: {
			a: "A. (97 × 97 × 97)/1003",
			b: "B. (99 × 98 × 97)/1003",
			c: "C. 	(97 × 96 × 95)/1003",
			d: "D. (97 × 96 × 95)/(3! × 1003)"
		},
	},
	{
		questionNo: 9,
		question:
			[
				"Given a hash table T with 25 slots that stores 2000 elements, the load factor α for T is"
			],
		correctAnswer: "a",
		explantaion:
			[
				"load factor = (no. of elements) / (no. of table slots) = 2000/25 = 80",
			],
		answers: {
			a: "A. 80",
			b: "B. 0.0125",
			c: "C. 8000",
			d: "D. 1.25"
		},
	},
	{
		questionNo: 10,
		question:
			[
				"Consider a hash table of size m = 10000, and the hash function h(K) = floor (m(KA mod 1)) for A = ( √(5) – 1)/2. The key 123456 is mapped to location ______."
			],
		correctAnswer: "b",
		explantaion:
			[
				"Given hash function: h(K) = floor (m (K*A mod 1)) where A = ( √(5) – 1)/2",
				"h(123456) = floor(10000 * (123456 * (√5 ? 1) / 2) mod 1)",
				"          = floor(10000 * (76300.004115 mod 1)",
				"          = floor(10000 * (.004115))",
				"          = 41.15",
				"          = 41",
				"So, option (B) is correct.",
			],
		answers: {
			a: "A. 46",
			b: "B. 41",
			c: "C. 43",
			d: "D. 48"
		},
	},


]

const ChapterBSTQuestions = [
	{
		questionNo: 0,
		question: "Binary Search Tree",
		correctAnswer: "c",
		explantaion: "explanation",
		answers: {
			a: "A.",
			b: "B.",
			c: "C.",
			d: "D."
		},
	},
	{
		questionNo: 1,
		question:
			[
				"What is the worst case time complexity for search, insert and delete operations in a general Binary Search Tree?"
			],
		correctAnswer: "a",
		explantaion:
			[
				"In skewed Binary Search Tree (BST), all three operations can take O(n)",
			],
		answers: {
			a: "A. O(n) for all",
			b: "B. O(Logn) for all",
			c: "C. O(Logn) for search and insert, and O(n) for delete",
			d: "D. O(Logn) for search, and O(n) for insert and delete"
		},
	},
	{
		questionNo: 2,
		question:
			[
				"In delete operation of BST, we need inorder successor (or predecessor) of a node when the node to be deleted has both left and right child as non-empty. Which of the following is true about inorder successor needed in delete operation?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"Let X be the node to be deleted in a tree with root as 'root'. There are three cases for deletion 1) X is a leaf node: We change left or right pointer of parent to NULL (depending upon whether X is left or right child of its parent) and we delete X 2) One child of X is empty: We copy values of non-empty child to X and delete the non-empty child 3) Both children of X are non-empty: In this case, we find inorder successor of X. Let the inorder successor be Y. We copy the contents of Y to X, and delete Y. Sp we need inorder successor only when both left and right child of X are not empty. In this case, the inorder successor Y can never be an ancestor of X. In this case, the inorder successor is the leftmost node in right subtree of X. Since it is leftmost node, the left child of Y must be empty.",
			],
		answers: {
			a: "A. Inorder Successor is always a leaf node",
			b: "B. Inorder successor is always either a leaf node or a node with empty left child",
			c: "C. Inorder successor may be an ancestor of the node",
			d: "D. Inorder successor is always either a leaf node or a node with empty right child"
		},
	},
	{
		questionNo: 3,
		question:
			[
				"We are given a set of n distinct elements and an unlabeled binary tree with n nodes. In how many ways can we populate the tree with the given set so that it becomes a binary search tree?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"There is only one way. The minimum value has to go to the leftmost node and the maximum value to the rightmost node. Recursively, we can define for other nodes.",
			],
		answers: {
			a: "A. 0",
			b: "B. 1",
			c: "C. n!",
			d: "D. (1/(n+1)).2nCn"
		},
	},
	{
		questionNo: 4,
		question:
			[
				"How many distinct binary search trees can be created out of 4 distinct keys?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"See question 2 of http://www.geeksforgeeks.org/data-structures-and-algorithms-set-23/ for explanation. The link also has a generalized solution.",
			],
		answers: {
			a: "A. 4",
			b: "B. 14",
			c: "C. 24",
			d: "D. 42"
		},
	},
	{
		questionNo: 5,
		question:
			[
				"Which of the following traversal outputs the data in sorted order in a BST?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"Inorder traversal of a BST outputs data in sorted order.",
			],
		answers: {
			a: "A. Preorder",
			b: "B. Inorder",
			c: "C. Postorder",
			d: "D. Level order"
		},
	},
	{
		questionNo: 6,
		question:
			[
				"Suppose the numbers 7, 5, 1, 8, 3, 6, 0, 9, 4, 2 are inserted in that order into an initially empty binary search tree. The binary search tree uses the usual ordering on natural numbers. What is the in-order traversal sequence of the resultant tree?"
			],
		correctAnswer: "c",
		explantaion:
			[
				"In-order traversal of a BST gives elements in increasing order. So answer c is correct without any doubt.",
			],
		answers: {
			a: "A. 7 5 1 0 3 2 4 6 8 9",
			b: "B. 0 2 4 3 1 6 5 9 8 7",
			c: "C. 0 1 2 3 4 5 6 7 8 9",
			d: "D. 9 8 6 4 2 3 0 1 5 7"
		},
	},
	{
		questionNo: 7,
		question:
			[
				"What are the worst-case complexities of insertion and deletion of a key in a binary search tree?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"The time taken by search, insert and delete on a BST is always proportional to height of BST. Height may become O(n) in worst case.",
			],
		answers: {
			a: "A. Θ(logn) for both insertion and deletion",
			b: "B. Θ(n) for both insertion and deletion",
			c: "C. Θ(n) for insertion and Θ(logn) for deletion",
			d: "D. Θ(logn) for insertion and Θ(n) for deletion"
		},

	},
	{
		questionNo: 8,
		question:
			[
				"Suppose that we have numbers between 1 and 100 in a binary search tree and want to search for the number 55. Which of the following sequences CANNOT be the sequence of nodes examined?"
			],
		correctAnswer: "c",
		explantaion:
			[
				"In BST on right side of parent number should be greater than it, but in C after 47, 43 appears that is wrong.",
			],
		answers: {
			a: "A. {10, 75, 64, 43, 60, 57, 55}",
			b: "B. {90, 12, 68, 34, 62, 45, 55}",
			c: "C. {9, 85, 47, 68, 43, 57, 55}",
			d: "D. {79, 14, 72, 56, 16, 53, 55}"
		},

	},
	{
		questionNo: 9,
		question:
			[
				"Which of the following traversals is sufficient to construct BST from given traversals 1) Inorder 2) Preorder 3) Postorder"
			],
		correctAnswer: "b",
		explantaion:
			[
				"When we know either preorder or postorder traversal, we can construct the BST. Note that we can always sort the given traversal and get the inorder traversal. Inorder traversal of BST is always sorted.",
			],
		answers: {
			a: "A. Any one of the given three traversals is sufficient",
			b: "B. Either 2 or 3 is sufficient",
			c: "C. 2 and 3",
			d: "D. 	1 and 3"
		},
	},
	{
		questionNo: 10,
		question:
			[
				"You are given the postorder traversal, P, of a binary search tree on the n elements 1, 2, ..., n. You have to determine the unique binary search tree that has P as its postorder traversal. What is the time complexity of the most efficient algorithm for doing this?"
			],
		correctAnswer: "b",
		explantaion:
			[
				"One important thing to note is, it is Binary Search Tree, not Binary Tree. In BST, inorder traversal can always be obtained by sorting all keys. See method 2 of http://www.geeksforgeeks.org/construct-bst-from-given-preorder-traversa/ for details. Same technique can be used for postorder traversal.",
			],
		answers: {
			a: "A. O(Logn)",
			b: "B. O(n)",
			c: "C. O(nLogn)",
			d: "D. none of the above, as the tree cannot be uniquely determined."
		},
	},


]