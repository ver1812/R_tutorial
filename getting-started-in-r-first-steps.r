{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "b49ec16f",
   "metadata": {
    "_cell_guid": "2aca040f-a6d5-4fa1-a661-7f95ffd88d0f",
    "_uuid": "d9a45aede615d40835e73a5b7d3f3c36f02951a0",
    "papermill": {
     "duration": 0.0094,
     "end_time": "2023-07-20T08:39:55.411143",
     "exception": false,
     "start_time": "2023-07-20T08:39:55.401743",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![](https://www.r-project.org/Rlogo.png)\n",
    "\n",
    "____________________________________________________________________________________\n",
    "\n",
    "## Introduction\n",
    "\n",
    "R is a programming language for statistical analysis and visualization. Using R, you can take raw data and understand the trends and patterns in it. You can also use R to create customizable, professional-looking visualizations.\n",
    "\n",
    "This tutorial will help introduce you to the R programming language. I'm not going to assume any programming background for this tutorial. \n",
    "\n",
    "**To get started, click the blue \"fork notebook\" button in the upper right hand corner.**\n",
    "\n",
    "![The button to fork this notebook](https://image.ibb.co/kNKUZ5/Screenshot_from_2017_08_30_16_47_40.png)\n",
    "\n",
    "> \"**Forking**\" something is making a copy of it that you can edit on your own without changing the original. \n",
    "\n",
    "____________________________________________________________________________________\n",
    "\n",
    "\n",
    "### Learning goals:\n",
    "\n",
    "By the end of this tutorial, you will be able to do the following things. (Don't worry if you don't know what all these things are yet; we'll get there together!)\n",
    "\n",
    "* [Be familiar with basic concepts: functions, variables, data types and vectors](https://www.kaggle.com/rtatman/getting-started-in-r-first-steps/)\n",
    "* [Load data into R](https://www.kaggle.com/rtatman/getting-started-in-r-load-data-into-r)\n",
    "* [Summerize your data](https://www.kaggle.com/rtatman/getting-started-in-r-summarize-data)\n",
    "* [Graph data and save your graphs](https://www.kaggle.com/rtatman/getting-started-in-r-graphing-data/)\n",
    "\n",
    "______\n",
    "\n",
    "### Your turn!\n",
    "\n",
    "Throughout this tutorial, you'll have lots of opportunities to practice what you've just learned. Look for the phrase \"your turn!\" to find these exercises."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0e7c9a22",
   "metadata": {
    "_cell_guid": "5c46606f-09dc-4ae4-b416-7352d50a7e62",
    "_uuid": "cdab0fe7e14796873c5ee5b29f05ed2ec72970fc",
    "papermill": {
     "duration": 0.007849,
     "end_time": "2023-07-20T08:39:55.427244",
     "exception": false,
     "start_time": "2023-07-20T08:39:55.419395",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# First steps \n",
    "\n",
    "This section is designed to help you understand some basic vocabulary and concepts we'll use later on. If you already have some programming experience, you can probably skim this section."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a0641f8a",
   "metadata": {
    "_cell_guid": "a54a6916-78a6-4256-bc87-ed888a0a5b9e",
    "_uuid": "d1f0d4314a6c3db4d110cfccbb40e26e63573156",
    "papermill": {
     "duration": 0.007914,
     "end_time": "2023-07-20T08:39:55.444825",
     "exception": false,
     "start_time": "2023-07-20T08:39:55.436911",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Functions and Arguments\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "21dc3217",
   "metadata": {
    "_cell_guid": "f4940ad5-55cc-41b4-b2eb-23c61c3b716d",
    "_uuid": "60889c8e12d14ef4ea459848724bd5b48cccfb6d",
    "papermill": {
     "duration": 0.007981,
     "end_time": "2023-07-20T08:39:55.460879",
     "exception": false,
     "start_time": "2023-07-20T08:39:55.452898",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Let's get right into it and run our first line of code!\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "9150569b",
   "metadata": {
    "_cell_guid": "5204a92e-e414-47b3-b069-9a40621922da",
    "_uuid": "e331faddc0e38839ea7b75945b2cd5e78d83f0c4",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:55.480921Z",
     "iopub.status.busy": "2023-07-20T08:39:55.478944Z",
     "iopub.status.idle": "2023-07-20T08:39:55.619816Z",
     "shell.execute_reply": "2023-07-20T08:39:55.617966Z"
    },
    "papermill": {
     "duration": 0.15335,
     "end_time": "2023-07-20T08:39:55.622356",
     "exception": false,
     "start_time": "2023-07-20T08:39:55.469006",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Welcome to R!\"\n"
     ]
    }
   ],
   "source": [
    "# This is a chunk with code. You'll notice that in code chunks, when I have something\n",
    "# to say that I don't want R to treat as code, I'll put a # symbol in front of it.\n",
    "# These non-code bits are called \"comments\", and they're helpful when you want to\n",
    "# describe what's going on in your code. Use them often!\n",
    "\n",
    "# To run a chunk, you can hit the blue \"play\" arrow to the left, or put your cursor inside\n",
    "# the chunk and then hit CTRL + ENTER (CMD + ENTER on a Mac)\n",
    "\n",
    "print(\"Welcome to R!\")\n",
    "\n",
    "# The output of the code will print below the chunk. You should see the text\n",
    "# \"Welcome to R!\" print below ⇊⇊⇊ once this chunk has been run."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bd7c7197",
   "metadata": {
    "_cell_guid": "5872f1da-2234-4dc6-800e-c8a897b996e2",
    "_uuid": "79b8f9335092d2f6b0d4c65ca889045c63969824",
    "papermill": {
     "duration": 0.007983,
     "end_time": "2023-07-20T08:39:55.639059",
     "exception": false,
     "start_time": "2023-07-20T08:39:55.631076",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Congrats, you've run your first line of code! Now let's break it down a little bit. \n",
    "______\n",
    "There were two parts to the line of code you just ran:\n",
    "\n",
    "### print()\n",
    "   * This is what's called a \"**function**\". A function is like a verb; it tells the computer to do something. What that \"something\" is depends on the function. This function, print(), tell R to print out whatever was passed to it.\n",
    "   * For now, we're going to use functions that are already in R. Later on, however, we'll write our own!\n",
    "\n",
    "### \"I'm coding in R!\"\n",
    "   * This second part, inside the parentheses, is what is called an \"**argument**\". It's information that that function needs in order to run. In this case, we're giving the print() function a text string to print.\n",
    "   * One thing to watch out for is that certain functions require certain types of data as their arguments. Trying to give a function a type of data it can't handle is a common cause of bugs (a \"bug\" is a problem in your code).\n",
    "   \n",
    "   \n",
    "> You can think of a functions like verbs, and arugments nouns. Just like verbs, not all functions need arguments (\"I smiled\"), and some functions need more than one (\"I put the flowers in the vase\").\n",
    "\n",
    "______\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "b5271e86",
   "metadata": {
    "_cell_guid": "54038d26-85a3-4437-abff-775811eb352c",
    "_uuid": "845147afdfb5bd4253286d4fd1e0a72212e9290d",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:55.693651Z",
     "iopub.status.busy": "2023-07-20T08:39:55.657696Z",
     "iopub.status.idle": "2023-07-20T08:39:55.709958Z",
     "shell.execute_reply": "2023-07-20T08:39:55.708176Z"
    },
    "papermill": {
     "duration": 0.064819,
     "end_time": "2023-07-20T08:39:55.712445",
     "exception": false,
     "start_time": "2023-07-20T08:39:55.647626",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"I'm coding in R\"\n"
     ]
    }
   ],
   "source": [
    "# Your turn! Can you get \"I'm coding in R\" to print in the output?\n",
    "print(\"I'm coding in R\")\n",
    "\n",
    "\n",
    "# HINT: Trying copying the code from the chunk above and modifying it. (You might\n",
    "# be surprised how much of programming is copying other people's code and modifying\n",
    "# it!)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "88304b82",
   "metadata": {
    "papermill": {
     "duration": 0.010067,
     "end_time": "2023-07-20T08:39:55.732161",
     "exception": false,
     "start_time": "2023-07-20T08:39:55.722094",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "markdown",
   "id": "03de45d3",
   "metadata": {
    "_cell_guid": "5253225a-687e-4eca-9b11-08926c80deef",
    "_uuid": "3409f798caa90b675a50f9ec7f2dae78ae57df33",
    "papermill": {
     "duration": 0.008173,
     "end_time": "2023-07-20T08:39:55.749540",
     "exception": false,
     "start_time": "2023-07-20T08:39:55.741367",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "> **How can you learn more about a function?** You can learn more about a function by checking the documentation that's been written for that funciton. You can do this by running the code ?functionName(), like in the following chunk."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "a6db8eda",
   "metadata": {
    "_cell_guid": "c89e9b0b-de71-47b5-a51b-b2c9d3e35087",
    "_uuid": "ed9f0009cf1531971b33cc9b6595584c7202d261",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:55.777543Z",
     "iopub.status.busy": "2023-07-20T08:39:55.772417Z",
     "iopub.status.idle": "2023-07-20T08:39:56.038726Z",
     "shell.execute_reply": "2023-07-20T08:39:56.036058Z"
    },
    "papermill": {
     "duration": 0.283687,
     "end_time": "2023-07-20T08:39:56.041952",
     "exception": false,
     "start_time": "2023-07-20T08:39:55.758265",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# running this block will pull up the documentation page for the print() function\n",
    "?print()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "641d1f02",
   "metadata": {
    "_cell_guid": "c2dbd252-ff67-4426-8795-7b473a733dc4",
    "_uuid": "db291c90a3fee64f421546c9161b01877ffe35bc",
    "papermill": {
     "duration": 0.007914,
     "end_time": "2023-07-20T08:39:56.058266",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.050352",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Variables"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "01e5c06b",
   "metadata": {
    "_cell_guid": "5fbb581b-1a85-464c-a99b-9f788ed55376",
    "_uuid": "13628150fe748713393cb2fb96aa79fcef2800db",
    "papermill": {
     "duration": 0.00794,
     "end_time": "2023-07-20T08:39:56.074257",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.066317",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Ok, now you know how to run R code in a kernel, and how to run a function with an argument. Above, we used a string of text as an arguement. But it gets really boring & repetitive to type out everything you want every time. The joy of programming is that it can take care of the boring & repetitive stuff for you!\n",
    "\n",
    "\n",
    "Let's find out how to store data in a way that we can refer to it easily later. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "425bc29d",
   "metadata": {
    "_cell_guid": "ec73a92d-2c5c-48d2-adc5-02c4513a3228",
    "_uuid": "8cd7425a1c7d2cd744a9eba73c6e4d3683fabc5a",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.093852Z",
     "iopub.status.busy": "2023-07-20T08:39:56.092313Z",
     "iopub.status.idle": "2023-07-20T08:39:56.112347Z",
     "shell.execute_reply": "2023-07-20T08:39:56.109357Z"
    },
    "papermill": {
     "duration": 0.032982,
     "end_time": "2023-07-20T08:39:56.115301",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.082319",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# in R, you can store data in a variable by using either \"=\" or \"<-\". You can name a \n",
    "# variable anything you want as long as it's not already the name of something else.\n",
    "# I find that a short phrase (without spaces) is generally best.\n",
    "\n",
    "textToPrint <- \"this is some text to print\"\n",
    "\n",
    "# if you give R the name of a variable, it will print whatever is in that variable\n",
    "\n",
    "#textToPrint\n",
    "\n",
    "# note that capitalization does matter! This line will generate an error becuase \n",
    "# there is nothing called \"texttoprint\"\n",
    "\n",
    "#texttoprint"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "f0ed35c2",
   "metadata": {
    "_cell_guid": "604b79bf-f0c0-4720-b053-4e22851dcd5b",
    "_uuid": "fcf2c6f11e4bcdbc2d19717011bf1058e490efb0",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.142226Z",
     "iopub.status.busy": "2023-07-20T08:39:56.139732Z",
     "iopub.status.idle": "2023-07-20T08:39:56.162796Z",
     "shell.execute_reply": "2023-07-20T08:39:56.160849Z"
    },
    "papermill": {
     "duration": 0.038534,
     "end_time": "2023-07-20T08:39:56.165778",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.127244",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Hello this is Vighnesh\"\n"
     ]
    }
   ],
   "source": [
    "# Your turn! Create a variable named \"aSentence\" and store a sentence in it\n",
    "aSentence <- \"Hello this is Vighnesh\"\n",
    "\n",
    "print(aSentence)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "515825a7",
   "metadata": {
    "_cell_guid": "6c7f5d3c-036c-4301-94dd-c40a26332f23",
    "_uuid": "ce6dfe28efe63469765b1749a8fd7b4cfee838e9",
    "papermill": {
     "duration": 0.007957,
     "end_time": "2023-07-20T08:39:56.181924",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.173967",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Ok, so now we've got a little chunk of data that has a name. Now, we can use that name as an argument in a function. Let's try it out;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "4827ff66",
   "metadata": {
    "_cell_guid": "032d22b8-8b9e-49d9-af16-301db55046db",
    "_uuid": "e634082fcf39f4aee6d935776686ad8fbbd65a5b",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.201398Z",
     "iopub.status.busy": "2023-07-20T08:39:56.199867Z",
     "iopub.status.idle": "2023-07-20T08:39:56.327183Z",
     "shell.execute_reply": "2023-07-20T08:39:56.325023Z"
    },
    "papermill": {
     "duration": 0.140016,
     "end_time": "2023-07-20T08:39:56.329991",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.189975",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"this is some text to print\"\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "26"
      ],
      "text/latex": [
       "26"
      ],
      "text/markdown": [
       "26"
      ],
      "text/plain": [
       "[1] 26"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'this is some text to print'</li><li>'this is some text to print'</li><li>'this is some text to print'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'this is some text to print'\n",
       "\\item 'this is some text to print'\n",
       "\\item 'this is some text to print'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'this is some text to print'\n",
       "2. 'this is some text to print'\n",
       "3. 'this is some text to print'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"this is some text to print\" \"this is some text to print\"\n",
       "[3] \"this is some text to print\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# our old friend print()\n",
    "textToPrint <- \"this is some text to print\"\n",
    "print(textToPrint)\n",
    "\n",
    "# the nchar() function tells you the number of characters in a variable\n",
    "nchar(textToPrint)\n",
    "\n",
    "# the c() function concatenates (strings together) all its arguments\n",
    "c(textToPrint, textToPrint, textToPrint)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "028052bd",
   "metadata": {
    "_cell_guid": "27768ef0-09d2-4a9c-bc1e-0d58c952d51b",
    "_uuid": "df212af3d22a14a8aaf436e61a292e82afeee919",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.351518Z",
     "iopub.status.busy": "2023-07-20T08:39:56.349926Z",
     "iopub.status.idle": "2023-07-20T08:39:56.381202Z",
     "shell.execute_reply": "2023-07-20T08:39:56.379128Z"
    },
    "papermill": {
     "duration": 0.04523,
     "end_time": "2023-07-20T08:39:56.384031",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.338801",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Hello this is Vighnesh\"\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "22"
      ],
      "text/latex": [
       "22"
      ],
      "text/markdown": [
       "22"
      ],
      "text/plain": [
       "[1] 22"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'Hello this is Vighnesh'</li><li>'this is some text to print'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'Hello this is Vighnesh'\n",
       "\\item 'this is some text to print'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'Hello this is Vighnesh'\n",
       "2. 'this is some text to print'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"Hello this is Vighnesh\"     \"this is some text to print\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn! Try the following three exercises on your own. Remember: it's prefectly \n",
    "# ok to copy code and then modify it.\n",
    "\n",
    "# print your variable \"aSentence\" you made above\n",
    "print(aSentence)\n",
    "\n",
    "# find out the number of characters in \"aSentence\"\n",
    "nchar(aSentence)\n",
    "\n",
    "# concatenate the \"textToPrint\" and \"aSentence\" variables\n",
    "c(aSentence, textToPrint)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2a523fe7",
   "metadata": {
    "_cell_guid": "5159d95f-0caf-4ced-8eae-53809158f74d",
    "_uuid": "aa5902bcb50aea5a5c7e1b0c750770c5d11532d0",
    "papermill": {
     "duration": 0.008738,
     "end_time": "2023-07-20T08:39:56.401666",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.392928",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    " ## Data Types\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9ea133a6",
   "metadata": {
    "_cell_guid": "f00e8d46-ff48-4b8a-96c1-880da6acd7f9",
    "_uuid": "cfd442fb8745efb58239b021d7f0fd6bbf004db7",
    "papermill": {
     "duration": 0.008961,
     "end_time": "2023-07-20T08:39:56.419550",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.410589",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "So far, all the data that we've looked at has been text strings. There are, however, lots of other types of data in R. (You may remember from our discussion of functions and arguments that using an argument of the wrong data type is a common source of errors.) \n",
    "\n",
    "Let's look at some of the common data types you'll use in R."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "22c5864e",
   "metadata": {
    "_cell_guid": "e6962a1d-40f3-40ab-9ca1-005c48d3bb39",
    "_uuid": "fcd26b16d0e9081c5e31faa90fbbf20771a5fa6f",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.440679Z",
     "iopub.status.busy": "2023-07-20T08:39:56.439216Z",
     "iopub.status.idle": "2023-07-20T08:39:56.463838Z",
     "shell.execute_reply": "2023-07-20T08:39:56.461700Z"
    },
    "papermill": {
     "duration": 0.038544,
     "end_time": "2023-07-20T08:39:56.466990",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.428446",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      " chr \"someText\"\n"
     ]
    }
   ],
   "source": [
    "# What we've seen so far are characters. This is the type of data you'll use for text\n",
    "anExampleOfCharacters <- \"someText\"\n",
    "\n",
    "# we can check the data type of a variable using the function str() (like \"structure\")\n",
    "str(anExampleOfCharacters)\n",
    "# we can tell this is a character because it's structure is \"chr\""
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "b889f131",
   "metadata": {
    "_cell_guid": "f4fea96f-f25c-4dba-8b2d-bbb1ad43ac13",
    "_uuid": "6b9ef4a176b9c1ed2ab51ca932b1bad20357c85f",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.489440Z",
     "iopub.status.busy": "2023-07-20T08:39:56.487262Z",
     "iopub.status.idle": "2023-07-20T08:39:56.509411Z",
     "shell.execute_reply": "2023-07-20T08:39:56.507108Z"
    },
    "papermill": {
     "duration": 0.036606,
     "end_time": "2023-07-20T08:39:56.512501",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.475895",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      " chr \"Hello this is Vighnesh\"\n"
     ]
    }
   ],
   "source": [
    "# Your turn! \n",
    "# Check the data type of the \"aSentence\" variable you made above.\n",
    "str(aSentence)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "12a282c1",
   "metadata": {
    "_cell_guid": "a995ff54-71b1-440b-ba3e-c05dc6449b92",
    "_uuid": "07e198b751a344cbc101fa7498b5edfd61c7a82a",
    "papermill": {
     "duration": 0.008986,
     "end_time": "2023-07-20T08:39:56.530461",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.521475",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "But not all data in the world is text data. There are also a lot of numbers. Unlike text data, you can just give numbers directly to R. (In fact, if you put quotes around a number, R will store it as a character & you won't be able to do math with it!)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "999bc8af",
   "metadata": {
    "_cell_guid": "f93dd7a0-97df-416e-8b97-373a0a074c95",
    "_uuid": "a82621400d94e37de38ee9e024a48ecf5ca0bc06",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.553389Z",
     "iopub.status.busy": "2023-07-20T08:39:56.551020Z",
     "iopub.status.idle": "2023-07-20T08:39:56.598252Z",
     "shell.execute_reply": "2023-07-20T08:39:56.595840Z"
    },
    "papermill": {
     "duration": 0.061814,
     "end_time": "2023-07-20T08:39:56.601307",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.539493",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "'numeric'"
      ],
      "text/latex": [
       "'numeric'"
      ],
      "text/markdown": [
       "'numeric'"
      ],
      "text/plain": [
       "[1] \"numeric\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'numeric'"
      ],
      "text/latex": [
       "'numeric'"
      ],
      "text/markdown": [
       "'numeric'"
      ],
      "text/plain": [
       "[1] \"numeric\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "168"
      ],
      "text/latex": [
       "168"
      ],
      "text/markdown": [
       "168"
      ],
      "text/plain": [
       "[1] 168"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# let's create some numeric variables\n",
    "hoursPerDay <- 24\n",
    "daysPerWeek <- 7\n",
    "\n",
    "# we can check to make sure that these actually are numeric\n",
    "class(hoursPerDay)\n",
    "class(daysPerWeek)\n",
    "\n",
    "# since this is numeric data, we can do math with it! \n",
    "# \"*\" is the symbol for multiplication\n",
    "hoursPerWeek <- hoursPerDay * daysPerWeek\n",
    "hoursPerWeek"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "5b05a430",
   "metadata": {
    "_cell_guid": "294fef25-67e7-4fe7-8e0e-4672d446a72b",
    "_uuid": "8d5f1801157a30f574fc5080a9fb7fd774009762",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.624493Z",
     "iopub.status.busy": "2023-07-20T08:39:56.622426Z",
     "iopub.status.idle": "2023-07-20T08:39:56.651989Z",
     "shell.execute_reply": "2023-07-20T08:39:56.648955Z"
    },
    "papermill": {
     "duration": 0.044513,
     "end_time": "2023-07-20T08:39:56.655300",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.610787",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "10080"
      ],
      "text/latex": [
       "10080"
      ],
      "text/markdown": [
       "10080"
      ],
      "text/plain": [
       "[1] 10080"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# Create a numeric variable \"minutesPerHour\" and use it to calcuate a new variable called\n",
    "# \"minutesPerWeek\" that has the number of minutes per week in it\n",
    "minutesPerHour <- 60\n",
    "minutesPerWeek <- minutesPerHour * hoursPerWeek\n",
    "minutesPerWeek\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "afb11e6c",
   "metadata": {
    "_cell_guid": "fc26d3c4-e9a9-441e-8843-5b473bba4a33",
    "_uuid": "63d9e3d3aa1a3ad20b711f3aac326c5b0543c79e",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.678911Z",
     "iopub.status.busy": "2023-07-20T08:39:56.676810Z",
     "iopub.status.idle": "2023-07-20T08:39:56.701881Z",
     "shell.execute_reply": "2023-07-20T08:39:56.698604Z"
    },
    "papermill": {
     "duration": 0.040389,
     "end_time": "2023-07-20T08:39:56.705288",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.664899",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Important! Just becuase something is a *number* doesn't mean R thinks it's numeric!\n",
    "\n",
    "a <- 5\n",
    "b <- \"6\"\n",
    "\n",
    "# this will get you the error \"non-numeric argument to binary operator\", becuase b isn't\n",
    "# numeric, even though it's a number!\n",
    "#a * b"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9fc8c95d",
   "metadata": {
    "_cell_guid": "cf3fedfc-1117-43b6-ba28-27bec25440a0",
    "_uuid": "df1b1bb6829fc682c0cd3eb786670ccc7f4a3b03",
    "papermill": {
     "duration": 0.009714,
     "end_time": "2023-07-20T08:39:56.724708",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.714994",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Don't be scared of error messages! Everyone gets error messages, and they're there to help you. A good first step when you get an error message you don't understand is to search Google for the text of your error message. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "bf5fd84a",
   "metadata": {
    "_cell_guid": "be33cb40-2f84-4c9a-abcb-3cbab16d11ba",
    "_uuid": "31c7351d2cbecf8d2df1313abf122ab5fe3ccefd",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.748981Z",
     "iopub.status.busy": "2023-07-20T08:39:56.746930Z",
     "iopub.status.idle": "2023-07-20T08:39:56.786884Z",
     "shell.execute_reply": "2023-07-20T08:39:56.785132Z"
    },
    "papermill": {
     "duration": 0.054527,
     "end_time": "2023-07-20T08:39:56.789374",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.734847",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "30"
      ],
      "text/latex": [
       "30"
      ],
      "text/markdown": [
       "30"
      ],
      "text/plain": [
       "[1] 30"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      " chr \"6\"\n",
      " num 6\n"
     ]
    }
   ],
   "source": [
    "# You can change character data to numeric data using the as.numeric() function.\n",
    "# This will let you do math with it again. :)\n",
    "a * as.numeric(b)\n",
    "\n",
    "# check out the stucture: note that b changes from \"chr\" to \"num\n",
    "str(b)\n",
    "str(as.numeric(b))\n",
    "\n",
    "# to fix b to be a number permentantly\n",
    "# b <- as.numeric(b)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "1f64beb3",
   "metadata": {
    "_cell_guid": "d3dc8032-94bd-4f2e-8d4d-af1088950fb9",
    "_uuid": "36275ba37727342d559e9c283ed41cb94a24f29c",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.812508Z",
     "iopub.status.busy": "2023-07-20T08:39:56.811105Z",
     "iopub.status.idle": "2023-07-20T08:39:56.825400Z",
     "shell.execute_reply": "2023-07-20T08:39:56.823727Z"
    },
    "papermill": {
     "duration": 0.029052,
     "end_time": "2023-07-20T08:39:56.828404",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.799352",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Your turn!\n",
    "\n",
    "# What happens when you try to use the as.numeric() function on text that isn't data?\n",
    "# Trying running the as.numeric() function on your \"aSentence\" variable from earlier.\n",
    "\n",
    "\n",
    "\n",
    "# Search Google (or your favorite search engine) for more information on the error message\n",
    "# you get.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "61a978d6",
   "metadata": {
    "_cell_guid": "d2e50d26-f0be-4e34-a1db-dbdeb2d8abdd",
    "_uuid": "5cf5888fc5425e01dd9a50ebb1c4ab7cd0defc73",
    "papermill": {
     "duration": 0.010417,
     "end_time": "2023-07-20T08:39:56.848608",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.838191",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "So far we've learned about two data types: character and numeric. But there's a third common data type you'll encounter a lot in R: logical or boolean (pronounced BOO-lee-un) data. Booleans can only take two values, TRUE and FALSE. "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "1b2e4404",
   "metadata": {
    "_cell_guid": "1b3cb61d-a0e4-494b-9b37-d5bc8a338788",
    "_uuid": "2b09023b0700bf174ef19f46192325571dd7d61b",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.872121Z",
     "iopub.status.busy": "2023-07-20T08:39:56.870531Z",
     "iopub.status.idle": "2023-07-20T08:39:56.892977Z",
     "shell.execute_reply": "2023-07-20T08:39:56.891247Z"
    },
    "papermill": {
     "duration": 0.036907,
     "end_time": "2023-07-20T08:39:56.895479",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.858572",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# You'll get a boolean back if you ask R \"are these two things the same?\" using \"==\"\n",
    "\"a\" == \"b\"\n",
    "1 == 1"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "21d689e5",
   "metadata": {
    "_cell_guid": "5c9e23c5-1ad8-438d-8001-97bccb9c5bbb",
    "_uuid": "36a73848af87d986252e0d383016f2664d72bda8",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:56.919763Z",
     "iopub.status.busy": "2023-07-20T08:39:56.918215Z",
     "iopub.status.idle": "2023-07-20T08:39:56.930849Z",
     "shell.execute_reply": "2023-07-20T08:39:56.928939Z"
    },
    "papermill": {
     "duration": 0.027548,
     "end_time": "2023-07-20T08:39:56.933291",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.905743",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Your turn!\n",
    "\n",
    "# First, take a guess: will 6 == \"6\" return TRUE or FALSE?\n",
    "# Then test your prediction. Are you surprised by the outcome? What does this tell you\n",
    "# about datatypes in R?\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cce52436",
   "metadata": {
    "_cell_guid": "8a2b055b-b7fd-41f8-bdf4-ab9b16d3a94b",
    "_uuid": "cc198e500b85d101d200736d470aaf820312e440",
    "papermill": {
     "duration": 0.010047,
     "end_time": "2023-07-20T08:39:56.953881",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.943834",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "So, to review, the data types we've seen so far are:\n",
    "* **Character**. This is usually used for text data, and surrounded by \"quotation marks\"\n",
    "* **Numeric**. This is the data type used for numbers. If you accidentally say numeric data is a character, you won't be able to do any math with it.\n",
    "* **Logical**. This data type only has two values, TRUE and FALSE.\n",
    "\n",
    "There other datatypes in R, but these are the ones you'll probably see most often."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "87395e3d",
   "metadata": {
    "_cell_guid": "e22b07d8-089e-418a-a863-4ad77fb312b7",
    "_uuid": "72e169ccd6edc73d9dc3f6c0567b21a4dc2f91a5",
    "papermill": {
     "duration": 0.009989,
     "end_time": "2023-07-20T08:39:56.974003",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.964014",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Vectors"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2c544a92",
   "metadata": {
    "_cell_guid": "5d4ca046-d250-4e6e-a24b-75bbdfb62cf6",
    "_uuid": "36fe54f95c7891437a09f19a144172de89b6c66f",
    "papermill": {
     "duration": 0.010021,
     "end_time": "2023-07-20T08:39:56.994150",
     "exception": false,
     "start_time": "2023-07-20T08:39:56.984129",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Ok, this is the last part of the introduction. Promise! The next step is to start in on our data analysis.\n",
    "\n",
    "First, however, we need to understand one of the most important parts of using R: vectorization. \n",
    "\n",
    "> In programming, a **vector** is list of data that is all of the same data type.\n",
    "\n",
    "R is very efficient at manipulating vectors, and you'll want to use them as often as possible. You can make a vector using the c() (for \"concatenate\") function we learned above."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "9967ee01",
   "metadata": {
    "_cell_guid": "27f1bc72-2b4f-45ec-9f8f-3116e64e2523",
    "_uuid": "6ecdc78c889839989f306c73b06318a12995538c",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:57.018144Z",
     "iopub.status.busy": "2023-07-20T08:39:57.016438Z",
     "iopub.status.idle": "2023-07-20T08:39:57.047058Z",
     "shell.execute_reply": "2023-07-20T08:39:57.045337Z"
    },
    "papermill": {
     "duration": 0.045126,
     "end_time": "2023-07-20T08:39:57.049453",
     "exception": false,
     "start_time": "2023-07-20T08:39:57.004327",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>1</li><li>5</li><li>91</li><li>42.8</li><li>100008.41</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 1\n",
       "\\item 5\n",
       "\\item 91\n",
       "\\item 42.8\n",
       "\\item 100008.41\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 1\n",
       "2. 5\n",
       "3. 91\n",
       "4. 42.8\n",
       "5. 100008.41\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1]      1.0      5.0     91.0     42.8 100008.4"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>5</li><li>25</li><li>455</li><li>214</li><li>500042.05</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 5\n",
       "\\item 25\n",
       "\\item 455\n",
       "\\item 214\n",
       "\\item 500042.05\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 5\n",
       "2. 25\n",
       "3. 455\n",
       "4. 214\n",
       "5. 500042.05\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1]      5.0     25.0    455.0    214.0 500042.1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>2</li><li>6</li><li>92</li><li>43.8</li><li>100009.41</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 2\n",
       "\\item 6\n",
       "\\item 92\n",
       "\\item 43.8\n",
       "\\item 100009.41\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 2\n",
       "2. 6\n",
       "3. 92\n",
       "4. 43.8\n",
       "5. 100009.41\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1]      2.0      6.0     92.0     43.8 100009.4"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# let's make a vector!\n",
    "listOfNumbers <- c(1,5,91,42.8,100008.41)\n",
    "listOfNumbers\n",
    "\n",
    "# becuase this is a numeric vector, we can do math on it! When you do math to a vector,\n",
    "# it happens to every number in the vector. (If you're familiar with matrix \n",
    "# mutiplication, it's the same thing as multiplying a 1x1 matrix by a 1xN matrix.)\n",
    "\n",
    "# multiply every number in the vector by 5\n",
    "5 * listOfNumbers\n",
    "\n",
    "# add one to every number in the vector\n",
    "listOfNumbers + 1"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "dc346e50",
   "metadata": {
    "_cell_guid": "3f36e7aa-5dfe-4158-8014-1d0d24722c05",
    "_uuid": "22ddac770b09aeb132b18aa618568931afe3da17",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:57.075159Z",
     "iopub.status.busy": "2023-07-20T08:39:57.073517Z",
     "iopub.status.idle": "2023-07-20T08:39:57.094890Z",
     "shell.execute_reply": "2023-07-20T08:39:57.092536Z"
    },
    "papermill": {
     "duration": 0.037567,
     "end_time": "2023-07-20T08:39:57.097935",
     "exception": false,
     "start_time": "2023-07-20T08:39:57.060368",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>0.5</li><li>2.5</li><li>45.5</li><li>21.4</li><li>50004.205</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 0.5\n",
       "\\item 2.5\n",
       "\\item 45.5\n",
       "\\item 21.4\n",
       "\\item 50004.205\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 0.5\n",
       "2. 2.5\n",
       "3. 45.5\n",
       "4. 21.4\n",
       "5. 50004.205\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1]     0.50     2.50    45.50    21.40 50004.21"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# divide every number in the vector by 2. In R, you do division using the / symbol.\n",
    "listOfNumbers / 2\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "91a8556d",
   "metadata": {
    "_cell_guid": "d64c66d2-a074-4e30-9479-d7878bdef544",
    "_uuid": "db60b1891eae8978cd1ecdb58ac5b462907ea7d9",
    "papermill": {
     "duration": 0.01157,
     "end_time": "2023-07-20T08:39:57.120933",
     "exception": false,
     "start_time": "2023-07-20T08:39:57.109363",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "One thing you'll often want to do with vectors (especially very, very long ones) is to look at only part of a vector. You can look inside a vector using square brackets ([]). The number inside the square brackets tells R what **index** to look at. In R, indexes start at one.\n",
    "\n",
    "> You can think of an **index** like the street number on a house and a vector like a street. If you ask for just the vector, R will give you you the whole \"street\" because it doesn't known which house you want."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "dc80a73d",
   "metadata": {
    "_cell_guid": "40fc9e24-be61-4ffd-9ec4-338f420c79ec",
    "_uuid": "2c0ee6f4a74e659f6073a6b712efd4ac93cc65a9",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:57.149237Z",
     "iopub.status.busy": "2023-07-20T08:39:57.147304Z",
     "iopub.status.idle": "2023-07-20T08:39:57.167271Z",
     "shell.execute_reply": "2023-07-20T08:39:57.164974Z"
    },
    "papermill": {
     "duration": 0.035969,
     "end_time": "2023-07-20T08:39:57.170142",
     "exception": false,
     "start_time": "2023-07-20T08:39:57.134173",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1"
      ],
      "text/latex": [
       "1"
      ],
      "text/markdown": [
       "1"
      ],
      "text/plain": [
       "[1] 1"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# get the first item from \"listOfNumbers\"\n",
    "listOfNumbers[1]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "d01a2156",
   "metadata": {
    "_cell_guid": "489535b0-0bff-4fda-b69d-76437e5d4ddb",
    "_uuid": "dcdafc22342bd46d9a432822d64cdbec9276e3d4",
    "execution": {
     "iopub.execute_input": "2023-07-20T08:39:57.195823Z",
     "iopub.status.busy": "2023-07-20T08:39:57.194153Z",
     "iopub.status.idle": "2023-07-20T08:39:57.215115Z",
     "shell.execute_reply": "2023-07-20T08:39:57.213225Z"
    },
    "papermill": {
     "duration": 0.036846,
     "end_time": "2023-07-20T08:39:57.217967",
     "exception": false,
     "start_time": "2023-07-20T08:39:57.181121",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "91"
      ],
      "text/latex": [
       "91"
      ],
      "text/markdown": [
       "91"
      ],
      "text/plain": [
       "[1] 91"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# get the third item from \"listOfNumbers\"\n",
    "listOfNumbers[3]\n",
    "\n",
    "\n",
    "# object[index]\n",
    "# function(argument)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "98dcb0ea",
   "metadata": {
    "_cell_guid": "3a1a9248-0bd4-499e-9fca-38417d9cd20f",
    "_uuid": "6896f943b5838bdaa0c9e18c836d0c6618be4009",
    "papermill": {
     "duration": 0.011157,
     "end_time": "2023-07-20T08:39:57.240208",
     "exception": false,
     "start_time": "2023-07-20T08:39:57.229051",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "There's a lot more to learn about R, but this is enough to get you started for now. Let's get into analyzing some data!"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "939d05b5",
   "metadata": {
    "_cell_guid": "7b4f3742-326e-4d73-91bd-f5322374aa89",
    "_uuid": "3d28fe2fa14cfeb1c0bf12965ecd7474350bbe2d",
    "papermill": {
     "duration": 0.011388,
     "end_time": "2023-07-20T08:39:57.262719",
     "exception": false,
     "start_time": "2023-07-20T08:39:57.251331",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Next step: [Load data into R](https://www.kaggle.com/rtatman/getting-started-in-r-load-data-into-r)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d09ef036",
   "metadata": {
    "_cell_guid": "c8a5fd8a-1bff-4608-91b4-fa6380f4297f",
    "_uuid": "d7925838207eb68f2cc594fc5151ef85a78fadec",
    "papermill": {
     "duration": 0.011103,
     "end_time": "2023-07-20T08:39:57.284976",
     "exception": false,
     "start_time": "2023-07-20T08:39:57.273873",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "\n"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 5.448966,
   "end_time": "2023-07-20T08:39:57.417969",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-07-20T08:39:51.969003",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
