{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "cde4a2ff",
   "metadata": {
    "_cell_guid": "0926f356-6bbe-4248-99aa-baa691d220ea",
    "_uuid": "6cb0634fab1b2db27213c739e20544e720063ffe",
    "papermill": {
     "duration": 0.006005,
     "end_time": "2023-07-22T08:47:07.125693",
     "exception": false,
     "start_time": "2023-07-22T08:47:07.119688",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "![](https://www.r-project.org/Rlogo.png)\n",
    "\n",
    "____________________________________________________________________________________\n",
    "This tutorial is the second part of a series. If you've never programmed before, I recommend checking out the \"[First Steps](https://www.kaggle.com/rtatman/getting-started-in-r-first-steps/)\" part of the tutorial.\n",
    "\n",
    "In this part of the tutorial, we'll:\n",
    "\n",
    "* read data into R\n",
    "* look at the data we've read in\n",
    "* remove unwanted rows\n",
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
    "* [Graph data](https://www.kaggle.com/rtatman/getting-started-in-r-graphing-data/)\n",
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
   "id": "73d6cf27",
   "metadata": {
    "_cell_guid": "97e50be4-e6db-4701-a978-ddd3fc24a80e",
    "_uuid": "620ded751819b200ca7461814daa1b4fd1403903",
    "papermill": {
     "duration": 0.004858,
     "end_time": "2023-07-22T08:47:07.135724",
     "exception": false,
     "start_time": "2023-07-22T08:47:07.130866",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Reading data into R\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c0e7dabd",
   "metadata": {
    "_cell_guid": "ef9bb176-bf6c-4d19-a353-84f2a28b282e",
    "_uuid": "5a37bd20dc4a6fa1ad95d14d50fbbb8d91772bee",
    "papermill": {
     "duration": 0.004675,
     "end_time": "2023-07-22T08:47:07.145669",
     "exception": false,
     "start_time": "2023-07-22T08:47:07.140994",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "When you read data into R, you need to tell it two things. The first is what type of data structure the data is in. The second is where to find the data.\n",
    "\n",
    "> Data structure: A specfic way of organizing data to store it. There are lots of different types of data structures that you will learn about, including lists and trees. Vectors, which we talked about in the \"First Steps\" part of the tutorial, are a specific data structure.\n",
    "\n",
    "For this tutorial, we're going to use the data_frame data structure (also called a tibble). If you're curious, you can find more information on these [here](https://cran.r-project.org/web/packages/tibble/vignettes/tibble.html). However, this data structure isn't one that comes with base R. To use this data structure, we're going to need to use  a package."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "e80b4a7e",
   "metadata": {
    "_cell_guid": "14b3f40f-85d5-4ba0-9533-75f65c1e0615",
    "_uuid": "16b25ec029df1bc05f5b3882f9bd92f14a84f970",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:07.159260Z",
     "iopub.status.busy": "2023-07-22T08:47:07.157223Z",
     "iopub.status.idle": "2023-07-22T08:47:08.307732Z",
     "shell.execute_reply": "2023-07-22T08:47:08.305866Z"
    },
    "papermill": {
     "duration": 1.159894,
     "end_time": "2023-07-22T08:47:08.310352",
     "exception": false,
     "start_time": "2023-07-22T08:47:07.150458",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.2     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.4.2     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.2     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.1     \n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    }
   ],
   "source": [
    "# this line will read in the \"tidyverse\" package. An R package is a collection\n",
    "# of special functions (and sometimes data). Before you use can use the functions in a\n",
    "# package, though, you need to tell R that you want it to use that package using the\n",
    "# library() function.\n",
    "\n",
    "library(tidyverse)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ed1e04b4",
   "metadata": {
    "_cell_guid": "77acb30b-253b-4ab4-af5b-21c130cda200",
    "_uuid": "8203c7c42d0d3656b96beb45934711102687e7c7",
    "papermill": {
     "duration": 0.006744,
     "end_time": "2023-07-22T08:47:08.322354",
     "exception": false,
     "start_time": "2023-07-22T08:47:08.315610",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Alright, now that we've read in the package we need, we're ready to read in data. We can do this using the read_csv() function (which was in the package we just read in--if you try to use this function without loading the package using library() first, you'll get an error!).\n",
    "\n",
    "Let's read  in our file. This file is a .csv file. \"csv\" stands for \"comma separated values\". You can save any spreadsheet at a .csv file, and that will make it easier to read and analyze later: many file types that you can save spreadsheets as can only be read by one specific program. A .csv can be read by pretty much any program.\n",
    "\n",
    "For this tutorial, we'll be using a dataset of ratings of different chocolate bars. You can learn more about this dataset by clicking on the plus sign (+) next to \"input files\" at the top of the page."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "dc68aa82",
   "metadata": {
    "_cell_guid": "6beb2066-bfa5-49ac-8e11-2f3c99df435e",
    "_uuid": "66a7d34d60fcc54bfd8ad7f1826c563ddb08ee4a",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:08.366558Z",
     "iopub.status.busy": "2023-07-22T08:47:08.334593Z",
     "iopub.status.idle": "2023-07-22T08:47:08.647788Z",
     "shell.execute_reply": "2023-07-22T08:47:08.646008Z"
    },
    "papermill": {
     "duration": 0.322973,
     "end_time": "2023-07-22T08:47:08.650388",
     "exception": false,
     "start_time": "2023-07-22T08:47:08.327415",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1mRows: \u001b[22m\u001b[34m1795\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m9\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m (6): Company \n",
      "(Maker-if known), Specific Bean Origin\n",
      "or Bar Name, Cocoa\n",
      "...\n",
      "\u001b[32mdbl\u001b[39m (3): REF, Review\n",
      "Date, Rating\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n"
     ]
    }
   ],
   "source": [
    "# Read our data into R. The argument here is a file path. The \"..\" means \"look at the \n",
    "# folder above this one\", \"input\" is a specific folder, \"chocolate-bar-ratings\" is\n",
    "# a folder wihtin the \"input\" folder, and and \"flavors_of_cacao.csv\" is \n",
    "# the specific file we're reading from inside that file.\n",
    "\n",
    "chocolateData <- read_csv(\"../input/chocolate-bar-ratings/flavors_of_cacao.csv\")\n",
    "\n",
    "# some of our column names have spaces in them. This line changes the column names to \n",
    "# versions without spaces, which let's us talk about the columns by their names.\n",
    "names(chocolateData) <- make.names(names(chocolateData), unique=TRUE)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "b91ee001",
   "metadata": {
    "_cell_guid": "dca5cba4-5cdd-47bb-adce-3c0c8f6edfad",
    "_uuid": "54aca9c4d0a06f234af0d1e27181505474a323d3",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:08.664760Z",
     "iopub.status.busy": "2023-07-22T08:47:08.663192Z",
     "iopub.status.idle": "2023-07-22T08:47:08.880662Z",
     "shell.execute_reply": "2023-07-22T08:47:08.878731Z"
    },
    "papermill": {
     "duration": 0.227508,
     "end_time": "2023-07-22T08:47:08.883334",
     "exception": false,
     "start_time": "2023-07-22T08:47:08.655826",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22mNew names:\n",
      "\u001b[36m•\u001b[39m `comfort_food_reasons_coded` -> `comfort_food_reasons_coded...10`\n",
      "\u001b[36m•\u001b[39m `comfort_food_reasons_coded` -> `comfort_food_reasons_coded...12`\n",
      "\u001b[1mRows: \u001b[22m\u001b[34m125\u001b[39m \u001b[1mColumns: \u001b[22m\u001b[34m61\u001b[39m\n",
      "\u001b[36m──\u001b[39m \u001b[1mColumn specification\u001b[22m \u001b[36m────────────────────────────────────────────────────────\u001b[39m\n",
      "\u001b[1mDelimiter:\u001b[22m \",\"\n",
      "\u001b[31mchr\u001b[39m (14): GPA, comfort_food, comfort_food_reasons, diet_current, eating_chan...\n",
      "\u001b[32mdbl\u001b[39m (47): Gender, breakfast, calories_chicken, calories_day, calories_scone,...\n",
      "\n",
      "\u001b[36mℹ\u001b[39m Use `spec()` to retrieve the full column specification for this data.\n",
      "\u001b[36mℹ\u001b[39m Specify the column types or set `show_col_types = FALSE` to quiet this message.\n"
     ]
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# To give you practice reading in files, I've added a second dataset to this notebook\n",
    "# as well. This dataset is in the following place: ../input/food-choices/food_coded.csv\n",
    "foodPreferences <- read_csv(\"../input/food-choices/food_coded.csv\")\n",
    "\n",
    "# read in your dataset and save it as a variable called \"foodPreferences\"\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "730dafea",
   "metadata": {
    "_cell_guid": "f5056892-414e-481c-be1e-6c865010a25a",
    "_uuid": "dad981a3709f79829b3a35d47f56f0809ad21b93",
    "papermill": {
     "duration": 0.005536,
     "end_time": "2023-07-22T08:47:08.894706",
     "exception": false,
     "start_time": "2023-07-22T08:47:08.889170",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Look at the data we've read in"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0e8ebc12",
   "metadata": {
    "_cell_guid": "61b890e9-8de5-4f40-99dd-6284ddc4d195",
    "_uuid": "41c19197dfb5d784e9fa254bc4be1d33ad885c2a",
    "papermill": {
     "duration": 0.005439,
     "end_time": "2023-07-22T08:47:08.905607",
     "exception": false,
     "start_time": "2023-07-22T08:47:08.900168",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Congrats, you've gotten some data into R! Now we want to make sure that it all read in correctly, and get an idea of what's in our data file."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "dbb0e076",
   "metadata": {
    "_cell_guid": "b71e609c-b4de-4358-9d03-26d91bd36178",
    "_uuid": "391c8ff8aea3fb1dfb05be82553f89a99002104f",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:08.920033Z",
     "iopub.status.busy": "2023-07-22T08:47:08.918529Z",
     "iopub.status.idle": "2023-07-22T08:47:08.987395Z",
     "shell.execute_reply": "2023-07-22T08:47:08.985668Z"
    },
    "papermill": {
     "duration": 0.078676,
     "end_time": "2023-07-22T08:47:08.989817",
     "exception": false,
     "start_time": "2023-07-22T08:47:08.911141",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Company...Maker.if.known.</th><th scope=col>Specific.Bean.Origin.or.Bar.Name</th><th scope=col>REF</th><th scope=col>Review.Date</th><th scope=col>Cocoa.Percent</th><th scope=col>Company.Location</th><th scope=col>Rating</th><th scope=col>Bean.Type</th><th scope=col>Broad.Bean.Origin</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>A. Morin</td><td>Agua Grande</td><td>1876</td><td>2016</td><td>63%</td><td>France</td><td>3.75</td><td>       </td><td>Sao Tome </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Kpime      </td><td>1676</td><td>2015</td><td>70%</td><td>France</td><td>2.75</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Atsane     </td><td>1676</td><td>2015</td><td>70%</td><td>France</td><td>3.00</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Akata      </td><td>1680</td><td>2015</td><td>70%</td><td>France</td><td>3.50</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Quilla     </td><td>1704</td><td>2015</td><td>70%</td><td>France</td><td>3.50</td><td>       </td><td>Peru     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Carenero   </td><td>1315</td><td>2014</td><td>70%</td><td>France</td><td>2.75</td><td>Criollo</td><td>Venezuela</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " Company...Maker.if.known. & Specific.Bean.Origin.or.Bar.Name & REF & Review.Date & Cocoa.Percent & Company.Location & Rating & Bean.Type & Broad.Bean.Origin\\\\\n",
       " <chr> & <chr> & <dbl> & <dbl> & <chr> & <chr> & <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t A. Morin & Agua Grande & 1876 & 2016 & 63\\% & France & 3.75 &         & Sao Tome \\\\\n",
       "\t A. Morin & Kpime       & 1676 & 2015 & 70\\% & France & 2.75 &         & Togo     \\\\\n",
       "\t A. Morin & Atsane      & 1676 & 2015 & 70\\% & France & 3.00 &         & Togo     \\\\\n",
       "\t A. Morin & Akata       & 1680 & 2015 & 70\\% & France & 3.50 &         & Togo     \\\\\n",
       "\t A. Morin & Quilla      & 1704 & 2015 & 70\\% & France & 3.50 &         & Peru     \\\\\n",
       "\t A. Morin & Carenero    & 1315 & 2014 & 70\\% & France & 2.75 & Criollo & Venezuela\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 9\n",
       "\n",
       "| Company...Maker.if.known. &lt;chr&gt; | Specific.Bean.Origin.or.Bar.Name &lt;chr&gt; | REF &lt;dbl&gt; | Review.Date &lt;dbl&gt; | Cocoa.Percent &lt;chr&gt; | Company.Location &lt;chr&gt; | Rating &lt;dbl&gt; | Bean.Type &lt;chr&gt; | Broad.Bean.Origin &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| A. Morin | Agua Grande | 1876 | 2016 | 63% | France | 3.75 |         | Sao Tome  |\n",
       "| A. Morin | Kpime       | 1676 | 2015 | 70% | France | 2.75 |         | Togo      |\n",
       "| A. Morin | Atsane      | 1676 | 2015 | 70% | France | 3.00 |         | Togo      |\n",
       "| A. Morin | Akata       | 1680 | 2015 | 70% | France | 3.50 |         | Togo      |\n",
       "| A. Morin | Quilla      | 1704 | 2015 | 70% | France | 3.50 |         | Peru      |\n",
       "| A. Morin | Carenero    | 1315 | 2014 | 70% | France | 2.75 | Criollo | Venezuela |\n",
       "\n"
      ],
      "text/plain": [
       "  Company...Maker.if.known. Specific.Bean.Origin.or.Bar.Name REF  Review.Date\n",
       "1 A. Morin                  Agua Grande                      1876 2016       \n",
       "2 A. Morin                  Kpime                            1676 2015       \n",
       "3 A. Morin                  Atsane                           1676 2015       \n",
       "4 A. Morin                  Akata                            1680 2015       \n",
       "5 A. Morin                  Quilla                           1704 2015       \n",
       "6 A. Morin                  Carenero                         1315 2014       \n",
       "  Cocoa.Percent Company.Location Rating Bean.Type Broad.Bean.Origin\n",
       "1 63%           France           3.75             Sao Tome         \n",
       "2 70%           France           2.75             Togo             \n",
       "3 70%           France           3.00             Togo             \n",
       "4 70%           France           3.50             Togo             \n",
       "5 70%           France           3.50             Peru             \n",
       "6 70%           France           2.75   Criollo   Venezuela        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 3 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Company...Maker.if.known.</th><th scope=col>Specific.Bean.Origin.or.Bar.Name</th><th scope=col>REF</th><th scope=col>Review.Date</th><th scope=col>Cocoa.Percent</th><th scope=col>Company.Location</th><th scope=col>Rating</th><th scope=col>Bean.Type</th><th scope=col>Broad.Bean.Origin</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>Zotter</td><td>Kerala State      </td><td>749</td><td>2011</td><td>65%</td><td>Austria</td><td>3.50</td><td>Forastero</td><td>India </td></tr>\n",
       "\t<tr><td>Zotter</td><td>Kerala State      </td><td>781</td><td>2011</td><td>62%</td><td>Austria</td><td>3.25</td><td>         </td><td>India </td></tr>\n",
       "\t<tr><td>Zotter</td><td>Brazil, Mitzi Blue</td><td>486</td><td>2010</td><td>65%</td><td>Austria</td><td>3.00</td><td>         </td><td>Brazil</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 3 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " Company...Maker.if.known. & Specific.Bean.Origin.or.Bar.Name & REF & Review.Date & Cocoa.Percent & Company.Location & Rating & Bean.Type & Broad.Bean.Origin\\\\\n",
       " <chr> & <chr> & <dbl> & <dbl> & <chr> & <chr> & <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t Zotter & Kerala State       & 749 & 2011 & 65\\% & Austria & 3.50 & Forastero & India \\\\\n",
       "\t Zotter & Kerala State       & 781 & 2011 & 62\\% & Austria & 3.25 &           & India \\\\\n",
       "\t Zotter & Brazil, Mitzi Blue & 486 & 2010 & 65\\% & Austria & 3.00 &           & Brazil\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 3 × 9\n",
       "\n",
       "| Company...Maker.if.known. &lt;chr&gt; | Specific.Bean.Origin.or.Bar.Name &lt;chr&gt; | REF &lt;dbl&gt; | Review.Date &lt;dbl&gt; | Cocoa.Percent &lt;chr&gt; | Company.Location &lt;chr&gt; | Rating &lt;dbl&gt; | Bean.Type &lt;chr&gt; | Broad.Bean.Origin &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| Zotter | Kerala State       | 749 | 2011 | 65% | Austria | 3.50 | Forastero | India  |\n",
       "| Zotter | Kerala State       | 781 | 2011 | 62% | Austria | 3.25 |           | India  |\n",
       "| Zotter | Brazil, Mitzi Blue | 486 | 2010 | 65% | Austria | 3.00 |           | Brazil |\n",
       "\n"
      ],
      "text/plain": [
       "  Company...Maker.if.known. Specific.Bean.Origin.or.Bar.Name REF Review.Date\n",
       "1 Zotter                    Kerala State                     749 2011       \n",
       "2 Zotter                    Kerala State                     781 2011       \n",
       "3 Zotter                    Brazil, Mitzi Blue               486 2010       \n",
       "  Cocoa.Percent Company.Location Rating Bean.Type Broad.Bean.Origin\n",
       "1 65%           Austria          3.50   Forastero India            \n",
       "2 62%           Austria          3.25             India            \n",
       "3 65%           Austria          3.00             Brazil           "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# the head() function reads just the first few lines of a file. \n",
    "head(chocolateData)\n",
    "\n",
    "# the tail() function reads in the just the last few lines of a file. \n",
    "# we can also give both functions a specific number of lines to read.\n",
    "# This line will read in the last three lines of \"chocolateData\".\n",
    "tail(chocolateData, 3)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "8466ce94",
   "metadata": {
    "_cell_guid": "bcbda527-f15c-4ed0-b82f-8a9ec1a4557e",
    "_uuid": "6b4bad60d896250123b6985140efc7f9ba5cd2c0",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:09.005656Z",
     "iopub.status.busy": "2023-07-22T08:47:09.004084Z",
     "iopub.status.idle": "2023-07-22T08:47:09.083744Z",
     "shell.execute_reply": "2023-07-22T08:47:09.081899Z"
    },
    "papermill": {
     "duration": 0.09024,
     "end_time": "2023-07-22T08:47:09.086188",
     "exception": false,
     "start_time": "2023-07-22T08:47:08.995948",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 61</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>GPA</th><th scope=col>Gender</th><th scope=col>breakfast</th><th scope=col>calories_chicken</th><th scope=col>calories_day</th><th scope=col>calories_scone</th><th scope=col>coffee</th><th scope=col>comfort_food</th><th scope=col>comfort_food_reasons</th><th scope=col>comfort_food_reasons_coded...10</th><th scope=col>⋯</th><th scope=col>soup</th><th scope=col>sports</th><th scope=col>thai_food</th><th scope=col>tortilla_calories</th><th scope=col>turkey_calories</th><th scope=col>type_sports</th><th scope=col>veggies_day</th><th scope=col>vitamins</th><th scope=col>waffle_calories</th><th scope=col>weight</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>⋯</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2.4  </td><td>2</td><td>1</td><td>430</td><td>NaN</td><td>315</td><td>1</td><td>none                            </td><td>we dont have comfort                                       </td><td>9</td><td>⋯</td><td>1</td><td>1</td><td>1</td><td>1165</td><td>345</td><td>car racing</td><td>5</td><td>1</td><td>1315</td><td>187                    </td></tr>\n",
       "\t<tr><td>3.654</td><td>1</td><td>1</td><td>610</td><td>  3</td><td>420</td><td>2</td><td>chocolate, chips, ice cream     </td><td>Stress, bored, anger                                       </td><td>1</td><td>⋯</td><td>1</td><td>1</td><td>2</td><td> 725</td><td>690</td><td>Basketball</td><td>4</td><td>2</td><td> 900</td><td>155                    </td></tr>\n",
       "\t<tr><td>3.3  </td><td>1</td><td>1</td><td>720</td><td>  4</td><td>420</td><td>2</td><td>frozen yogurt, pizza, fast food </td><td>stress, sadness                                            </td><td>1</td><td>⋯</td><td>1</td><td>2</td><td>5</td><td>1165</td><td>500</td><td>none      </td><td>5</td><td>1</td><td> 900</td><td>I'm not answering this.</td></tr>\n",
       "\t<tr><td>3.2  </td><td>1</td><td>1</td><td>430</td><td>  3</td><td>420</td><td>2</td><td>Pizza, Mac and cheese, ice cream</td><td>Boredom                                                    </td><td>2</td><td>⋯</td><td>1</td><td>2</td><td>5</td><td> 725</td><td>690</td><td>nan       </td><td>3</td><td>1</td><td>1315</td><td>Not sure, 240          </td></tr>\n",
       "\t<tr><td>3.5  </td><td>1</td><td>1</td><td>720</td><td>  2</td><td>420</td><td>2</td><td>Ice cream, chocolate, chips     </td><td>Stress, boredom, cravings                                  </td><td>1</td><td>⋯</td><td>1</td><td>1</td><td>4</td><td> 940</td><td>500</td><td>Softball  </td><td>4</td><td>2</td><td> 760</td><td>190                    </td></tr>\n",
       "\t<tr><td>2.25 </td><td>1</td><td>1</td><td>610</td><td>  3</td><td>980</td><td>2</td><td>Candy, brownies and soda.       </td><td>None, i don't eat comfort food. I just eat when i'm hungry.</td><td>4</td><td>⋯</td><td>1</td><td>2</td><td>4</td><td> 940</td><td>345</td><td>None.     </td><td>1</td><td>2</td><td>1315</td><td>190                    </td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 61\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " GPA & Gender & breakfast & calories\\_chicken & calories\\_day & calories\\_scone & coffee & comfort\\_food & comfort\\_food\\_reasons & comfort\\_food\\_reasons\\_coded...10 & ⋯ & soup & sports & thai\\_food & tortilla\\_calories & turkey\\_calories & type\\_sports & veggies\\_day & vitamins & waffle\\_calories & weight\\\\\n",
       " <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <dbl> & ⋯ & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 2.4   & 2 & 1 & 430 & NaN & 315 & 1 & none                             & we dont have comfort                                        & 9 & ⋯ & 1 & 1 & 1 & 1165 & 345 & car racing & 5 & 1 & 1315 & 187                    \\\\\n",
       "\t 3.654 & 1 & 1 & 610 &   3 & 420 & 2 & chocolate, chips, ice cream      & Stress, bored, anger                                        & 1 & ⋯ & 1 & 1 & 2 &  725 & 690 & Basketball & 4 & 2 &  900 & 155                    \\\\\n",
       "\t 3.3   & 1 & 1 & 720 &   4 & 420 & 2 & frozen yogurt, pizza, fast food  & stress, sadness                                             & 1 & ⋯ & 1 & 2 & 5 & 1165 & 500 & none       & 5 & 1 &  900 & I'm not answering this.\\\\\n",
       "\t 3.2   & 1 & 1 & 430 &   3 & 420 & 2 & Pizza, Mac and cheese, ice cream & Boredom                                                     & 2 & ⋯ & 1 & 2 & 5 &  725 & 690 & nan        & 3 & 1 & 1315 & Not sure, 240          \\\\\n",
       "\t 3.5   & 1 & 1 & 720 &   2 & 420 & 2 & Ice cream, chocolate, chips      & Stress, boredom, cravings                                   & 1 & ⋯ & 1 & 1 & 4 &  940 & 500 & Softball   & 4 & 2 &  760 & 190                    \\\\\n",
       "\t 2.25  & 1 & 1 & 610 &   3 & 980 & 2 & Candy, brownies and soda.        & None, i don't eat comfort food. I just eat when i'm hungry. & 4 & ⋯ & 1 & 2 & 4 &  940 & 345 & None.      & 1 & 2 & 1315 & 190                    \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 61\n",
       "\n",
       "| GPA &lt;chr&gt; | Gender &lt;dbl&gt; | breakfast &lt;dbl&gt; | calories_chicken &lt;dbl&gt; | calories_day &lt;dbl&gt; | calories_scone &lt;dbl&gt; | coffee &lt;dbl&gt; | comfort_food &lt;chr&gt; | comfort_food_reasons &lt;chr&gt; | comfort_food_reasons_coded...10 &lt;dbl&gt; | ⋯ ⋯ | soup &lt;dbl&gt; | sports &lt;dbl&gt; | thai_food &lt;dbl&gt; | tortilla_calories &lt;dbl&gt; | turkey_calories &lt;dbl&gt; | type_sports &lt;chr&gt; | veggies_day &lt;dbl&gt; | vitamins &lt;dbl&gt; | waffle_calories &lt;dbl&gt; | weight &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 2.4   | 2 | 1 | 430 | NaN | 315 | 1 | none                             | we dont have comfort                                        | 9 | ⋯ | 1 | 1 | 1 | 1165 | 345 | car racing | 5 | 1 | 1315 | 187                     |\n",
       "| 3.654 | 1 | 1 | 610 |   3 | 420 | 2 | chocolate, chips, ice cream      | Stress, bored, anger                                        | 1 | ⋯ | 1 | 1 | 2 |  725 | 690 | Basketball | 4 | 2 |  900 | 155                     |\n",
       "| 3.3   | 1 | 1 | 720 |   4 | 420 | 2 | frozen yogurt, pizza, fast food  | stress, sadness                                             | 1 | ⋯ | 1 | 2 | 5 | 1165 | 500 | none       | 5 | 1 |  900 | I'm not answering this. |\n",
       "| 3.2   | 1 | 1 | 430 |   3 | 420 | 2 | Pizza, Mac and cheese, ice cream | Boredom                                                     | 2 | ⋯ | 1 | 2 | 5 |  725 | 690 | nan        | 3 | 1 | 1315 | Not sure, 240           |\n",
       "| 3.5   | 1 | 1 | 720 |   2 | 420 | 2 | Ice cream, chocolate, chips      | Stress, boredom, cravings                                   | 1 | ⋯ | 1 | 1 | 4 |  940 | 500 | Softball   | 4 | 2 |  760 | 190                     |\n",
       "| 2.25  | 1 | 1 | 610 |   3 | 980 | 2 | Candy, brownies and soda.        | None, i don't eat comfort food. I just eat when i'm hungry. | 4 | ⋯ | 1 | 2 | 4 |  940 | 345 | None.      | 1 | 2 | 1315 | 190                     |\n",
       "\n"
      ],
      "text/plain": [
       "  GPA   Gender breakfast calories_chicken calories_day calories_scone coffee\n",
       "1 2.4   2      1         430              NaN          315            1     \n",
       "2 3.654 1      1         610                3          420            2     \n",
       "3 3.3   1      1         720                4          420            2     \n",
       "4 3.2   1      1         430                3          420            2     \n",
       "5 3.5   1      1         720                2          420            2     \n",
       "6 2.25  1      1         610                3          980            2     \n",
       "  comfort_food                    \n",
       "1 none                            \n",
       "2 chocolate, chips, ice cream     \n",
       "3 frozen yogurt, pizza, fast food \n",
       "4 Pizza, Mac and cheese, ice cream\n",
       "5 Ice cream, chocolate, chips     \n",
       "6 Candy, brownies and soda.       \n",
       "  comfort_food_reasons                                       \n",
       "1 we dont have comfort                                       \n",
       "2 Stress, bored, anger                                       \n",
       "3 stress, sadness                                            \n",
       "4 Boredom                                                    \n",
       "5 Stress, boredom, cravings                                  \n",
       "6 None, i don't eat comfort food. I just eat when i'm hungry.\n",
       "  comfort_food_reasons_coded...10 ⋯ soup sports thai_food tortilla_calories\n",
       "1 9                               ⋯ 1    1      1         1165             \n",
       "2 1                               ⋯ 1    1      2          725             \n",
       "3 1                               ⋯ 1    2      5         1165             \n",
       "4 2                               ⋯ 1    2      5          725             \n",
       "5 1                               ⋯ 1    1      4          940             \n",
       "6 4                               ⋯ 1    2      4          940             \n",
       "  turkey_calories type_sports veggies_day vitamins waffle_calories\n",
       "1 345             car racing  5           1        1315           \n",
       "2 690             Basketball  4           2         900           \n",
       "3 500             none        5           1         900           \n",
       "4 690             nan         3           1        1315           \n",
       "5 500             Softball    4           2         760           \n",
       "6 345             None.       1           2        1315           \n",
       "  weight                 \n",
       "1 187                    \n",
       "2 155                    \n",
       "3 I'm not answering this.\n",
       "4 Not sure, 240          \n",
       "5 190                    \n",
       "6 190                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# Get the first four lines of the foodPreferences dataframe you read in earlier\n",
    "head(foodPreferences)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "adb1ca46",
   "metadata": {
    "_cell_guid": "4b4d917e-4938-4404-ac90-671a298ac721",
    "_uuid": "fef0a78453749281c885267d68007c8e7342e06a",
    "papermill": {
     "duration": 0.006465,
     "end_time": "2023-07-22T08:47:09.099322",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.092857",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "You'll notice that the data_frame data structure has two dimensions, unlike the vectors we worked with in the \"First Steps\" part of the tutorial. But the secret is that both of these dimensions are actually vectors! This mean that we can access specific cells in our data_frame using the indexes of values we're interested in.\n",
    "\n",
    "A quick refresher on how to acess data by its index: "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "232ff7a8",
   "metadata": {
    "_cell_guid": "f8c0303f-13ed-452f-9b84-499f54a23510",
    "_uuid": "67c948e719d8fef52d7c2bb6c0657a748a3c041d",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:09.116070Z",
     "iopub.status.busy": "2023-07-22T08:47:09.114457Z",
     "iopub.status.idle": "2023-07-22T08:47:09.144909Z",
     "shell.execute_reply": "2023-07-22T08:47:09.142812Z"
    },
    "papermill": {
     "duration": 0.042182,
     "end_time": "2023-07-22T08:47:09.147938",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.105756",
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
       "<ol class=list-inline><li>5</li><li>10</li><li>15</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 5\n",
       "\\item 10\n",
       "\\item 15\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 5\n",
       "2. 10\n",
       "3. 15\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1]  5 10 15"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "5"
      ],
      "text/latex": [
       "5"
      ],
      "text/markdown": [
       "5"
      ],
      "text/plain": [
       "[1] 5"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# make a little example vector\n",
    "a <- c(5,10,15)\n",
    "\n",
    "# if you ask for something at an index, but don't say which one, you'll get everything\n",
    "a[]\n",
    "\n",
    "# if you ask for a value at a specific index, you'll only get only that value. In R,\n",
    "# indexes start counting from 1 and go up. (So 3 is the third)\n",
    "a[1]"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9bfaa7ce",
   "metadata": {
    "_cell_guid": "9e30c3db-0af0-4046-b5df-dcc34edfb73a",
    "_uuid": "b3836ba6b2bd158276a40c260a02eda4331258bb",
    "papermill": {
     "duration": 0.006751,
     "end_time": "2023-07-22T08:47:09.161612",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.154861",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Data_frames work the same way, but you need to specify both the row and column, with a comma between them.\n",
    "\n",
    "> In R, if you ask for something from a two dimensional data structure, you'll always ask for the row first and the column second. So \"dataObject[2,4]\" means \"give me whatever is in the 2nd row and 4th column of the data frame called 'dataObject'\".\n",
    ">\n",
    "> One way to remember this is by thinking of \"RC Cola\". In the brand's name, \"RC\" stands for \"Royal Crown\"... but we can pretend it stands for \"Row Column\".\n",
    "\n",
    "![](https://upload.wikimedia.org/wikipedia/commons/e/e9/Drink_Royal_Crown_Cola.jpg)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "492b920b",
   "metadata": {
    "_cell_guid": "1a68e491-f468-4de5-a74e-bfb40f669a60",
    "_uuid": "a41a78a3eee2b034ce782cd80da5b3124b61a927",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:09.178850Z",
     "iopub.status.busy": "2023-07-22T08:47:09.177208Z",
     "iopub.status.idle": "2023-07-22T08:47:09.240699Z",
     "shell.execute_reply": "2023-07-22T08:47:09.238820Z"
    },
    "papermill": {
     "duration": 0.075162,
     "end_time": "2023-07-22T08:47:09.243517",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.168355",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 1</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Review.Date</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2014</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 1\n",
       "\\begin{tabular}{l}\n",
       " Review.Date\\\\\n",
       " <dbl>\\\\\n",
       "\\hline\n",
       "\t 2014\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 1\n",
       "\n",
       "| Review.Date &lt;dbl&gt; |\n",
       "|---|\n",
       "| 2014 |\n",
       "\n"
      ],
      "text/plain": [
       "  Review.Date\n",
       "1 2014       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Company...Maker.if.known.</th><th scope=col>Specific.Bean.Origin.or.Bar.Name</th><th scope=col>REF</th><th scope=col>Review.Date</th><th scope=col>Cocoa.Percent</th><th scope=col>Company.Location</th><th scope=col>Rating</th><th scope=col>Bean.Type</th><th scope=col>Broad.Bean.Origin</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>A. Morin</td><td>Carenero</td><td>1315</td><td>2014</td><td>70%</td><td>France</td><td>2.75</td><td>Criollo</td><td>Venezuela</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " Company...Maker.if.known. & Specific.Bean.Origin.or.Bar.Name & REF & Review.Date & Cocoa.Percent & Company.Location & Rating & Bean.Type & Broad.Bean.Origin\\\\\n",
       " <chr> & <chr> & <dbl> & <dbl> & <chr> & <chr> & <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t A. Morin & Carenero & 1315 & 2014 & 70\\% & France & 2.75 & Criollo & Venezuela\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 9\n",
       "\n",
       "| Company...Maker.if.known. &lt;chr&gt; | Specific.Bean.Origin.or.Bar.Name &lt;chr&gt; | REF &lt;dbl&gt; | Review.Date &lt;dbl&gt; | Cocoa.Percent &lt;chr&gt; | Company.Location &lt;chr&gt; | Rating &lt;dbl&gt; | Bean.Type &lt;chr&gt; | Broad.Bean.Origin &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| A. Morin | Carenero | 1315 | 2014 | 70% | France | 2.75 | Criollo | Venezuela |\n",
       "\n"
      ],
      "text/plain": [
       "  Company...Maker.if.known. Specific.Bean.Origin.or.Bar.Name REF  Review.Date\n",
       "1 A. Morin                  Carenero                         1315 2014       \n",
       "  Cocoa.Percent Company.Location Rating Bean.Type Broad.Bean.Origin\n",
       "1 70%           France           2.75   Criollo   Venezuela        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 1</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Company.Location</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>France</td></tr>\n",
       "\t<tr><td>France</td></tr>\n",
       "\t<tr><td>France</td></tr>\n",
       "\t<tr><td>France</td></tr>\n",
       "\t<tr><td>France</td></tr>\n",
       "\t<tr><td>France</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 1\n",
       "\\begin{tabular}{l}\n",
       " Company.Location\\\\\n",
       " <chr>\\\\\n",
       "\\hline\n",
       "\t France\\\\\n",
       "\t France\\\\\n",
       "\t France\\\\\n",
       "\t France\\\\\n",
       "\t France\\\\\n",
       "\t France\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 1\n",
       "\n",
       "| Company.Location &lt;chr&gt; |\n",
       "|---|\n",
       "| France |\n",
       "| France |\n",
       "| France |\n",
       "| France |\n",
       "| France |\n",
       "| France |\n",
       "\n"
      ],
      "text/plain": [
       "  Company.Location\n",
       "1 France          \n",
       "2 France          \n",
       "3 France          \n",
       "4 France          \n",
       "5 France          \n",
       "6 France          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# get the contents in the cell in the sixth row and the forth column\n",
    "chocolateData[6,4]\n",
    "\n",
    "# get the contents of every cell in the 6th row (note that you still need the comma!)\n",
    "chocolateData[6,]\n",
    "\n",
    "# if you forget the coulmn, you'll get the 6th *column* instead of the 6th *row*\n",
    "head(chocolateData[6])\n",
    "# I've used \"head\" here because the column is very long and I don't want\n",
    "# to fill up the screen by printing the whole thing out"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "7fb414d5",
   "metadata": {
    "_cell_guid": "d99f7bdb-ba65-48d9-b909-6a310d16a79f",
    "_uuid": "2d26906e171275e7d659fae58f9e6250703b85c5",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:09.262196Z",
     "iopub.status.busy": "2023-07-22T08:47:09.260637Z",
     "iopub.status.idle": "2023-07-22T08:47:09.350403Z",
     "shell.execute_reply": "2023-07-22T08:47:09.348594Z"
    },
    "papermill": {
     "duration": 0.101959,
     "end_time": "2023-07-22T08:47:09.353034",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.251075",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 61</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>GPA</th><th scope=col>Gender</th><th scope=col>breakfast</th><th scope=col>calories_chicken</th><th scope=col>calories_day</th><th scope=col>calories_scone</th><th scope=col>coffee</th><th scope=col>comfort_food</th><th scope=col>comfort_food_reasons</th><th scope=col>comfort_food_reasons_coded...10</th><th scope=col>⋯</th><th scope=col>soup</th><th scope=col>sports</th><th scope=col>thai_food</th><th scope=col>tortilla_calories</th><th scope=col>turkey_calories</th><th scope=col>type_sports</th><th scope=col>veggies_day</th><th scope=col>vitamins</th><th scope=col>waffle_calories</th><th scope=col>weight</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>⋯</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2.4</td><td>2</td><td>1</td><td>430</td><td>NaN</td><td>315</td><td>1</td><td>none</td><td>we dont have comfort</td><td>9</td><td>⋯</td><td>1</td><td>1</td><td>1</td><td>1165</td><td>345</td><td>car racing</td><td>5</td><td>1</td><td>1315</td><td>187</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 61\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " GPA & Gender & breakfast & calories\\_chicken & calories\\_day & calories\\_scone & coffee & comfort\\_food & comfort\\_food\\_reasons & comfort\\_food\\_reasons\\_coded...10 & ⋯ & soup & sports & thai\\_food & tortilla\\_calories & turkey\\_calories & type\\_sports & veggies\\_day & vitamins & waffle\\_calories & weight\\\\\n",
       " <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <dbl> & ⋯ & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 2.4 & 2 & 1 & 430 & NaN & 315 & 1 & none & we dont have comfort & 9 & ⋯ & 1 & 1 & 1 & 1165 & 345 & car racing & 5 & 1 & 1315 & 187\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 61\n",
       "\n",
       "| GPA &lt;chr&gt; | Gender &lt;dbl&gt; | breakfast &lt;dbl&gt; | calories_chicken &lt;dbl&gt; | calories_day &lt;dbl&gt; | calories_scone &lt;dbl&gt; | coffee &lt;dbl&gt; | comfort_food &lt;chr&gt; | comfort_food_reasons &lt;chr&gt; | comfort_food_reasons_coded...10 &lt;dbl&gt; | ⋯ ⋯ | soup &lt;dbl&gt; | sports &lt;dbl&gt; | thai_food &lt;dbl&gt; | tortilla_calories &lt;dbl&gt; | turkey_calories &lt;dbl&gt; | type_sports &lt;chr&gt; | veggies_day &lt;dbl&gt; | vitamins &lt;dbl&gt; | waffle_calories &lt;dbl&gt; | weight &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 2.4 | 2 | 1 | 430 | NaN | 315 | 1 | none | we dont have comfort | 9 | ⋯ | 1 | 1 | 1 | 1165 | 345 | car racing | 5 | 1 | 1315 | 187 |\n",
       "\n"
      ],
      "text/plain": [
       "  GPA Gender breakfast calories_chicken calories_day calories_scone coffee\n",
       "1 2.4 2      1         430              NaN          315            1     \n",
       "  comfort_food comfort_food_reasons comfort_food_reasons_coded...10 ⋯ soup\n",
       "1 none         we dont have comfort 9                               ⋯ 1   \n",
       "  sports thai_food tortilla_calories turkey_calories type_sports veggies_day\n",
       "1 1      1         1165              345             car racing  5          \n",
       "  vitamins waffle_calories weight\n",
       "1 1        1315            187   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 1 × 1</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>calories_chicken</th></tr>\n",
       "\t<tr><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>430</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 1 × 1\n",
       "\\begin{tabular}{l}\n",
       " calories\\_chicken\\\\\n",
       " <dbl>\\\\\n",
       "\\hline\n",
       "\t 430\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 1 × 1\n",
       "\n",
       "| calories_chicken &lt;dbl&gt; |\n",
       "|---|\n",
       "| 430 |\n",
       "\n"
      ],
      "text/plain": [
       "  calories_chicken\n",
       "1 430             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn!\n",
    "# dataframe[row,column]\n",
    "# Get the first row of your \"foodPreferences\" data_frame\n",
    "foodPreferences[1,]\n",
    "\n",
    "# Get the value from the cell in the 100th row and 4th column\n",
    "foodPreferences[100,4]\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "76648b8c",
   "metadata": {
    "_cell_guid": "5d8d7b67-5831-4914-bc75-3e59a81d1b6b",
    "_uuid": "fc5eacb92814a6c451c15884865f428df0684acc",
    "papermill": {
     "duration": 0.007544,
     "end_time": "2023-07-22T08:47:09.368424",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.360880",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Remove unwanted data\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "26a2d9f5",
   "metadata": {
    "_cell_guid": "be055462-a712-4583-bf83-a00ba8202574",
    "_uuid": "cfd8da3bea705c0aabba0c0843004b01d931ba30",
    "papermill": {
     "duration": 0.007525,
     "end_time": "2023-07-22T08:47:09.383589",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.376064",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "In addition to using indexes to get certain values, we can also use them to *remove* data we're not interested in. You can do this by putting a minus sign (-) in front of the index you don't want.\n",
    "\n",
    "You may have noticed earlier that the first row of the \"chocolateData\" data_frame is the same as the column names. Let's remove it."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "d4e3f5dd",
   "metadata": {
    "_cell_guid": "b9d67442-fe79-4f24-9a4c-d7484a7f622f",
    "_uuid": "5e0309fe4413ea6906e787a877253445cdcd72bb",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:09.402820Z",
     "iopub.status.busy": "2023-07-22T08:47:09.401204Z",
     "iopub.status.idle": "2023-07-22T08:47:09.442197Z",
     "shell.execute_reply": "2023-07-22T08:47:09.439862Z"
    },
    "papermill": {
     "duration": 0.053875,
     "end_time": "2023-07-22T08:47:09.445317",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.391442",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Company...Maker.if.known.</th><th scope=col>Specific.Bean.Origin.or.Bar.Name</th><th scope=col>REF</th><th scope=col>Review.Date</th><th scope=col>Cocoa.Percent</th><th scope=col>Company.Location</th><th scope=col>Rating</th><th scope=col>Bean.Type</th><th scope=col>Broad.Bean.Origin</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>A. Morin</td><td>Agua Grande</td><td>1876</td><td>2016</td><td>63%</td><td>France</td><td>3.75</td><td>       </td><td>Sao Tome </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Kpime      </td><td>1676</td><td>2015</td><td>70%</td><td>France</td><td>2.75</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Atsane     </td><td>1676</td><td>2015</td><td>70%</td><td>France</td><td>3.00</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Akata      </td><td>1680</td><td>2015</td><td>70%</td><td>France</td><td>3.50</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Quilla     </td><td>1704</td><td>2015</td><td>70%</td><td>France</td><td>3.50</td><td>       </td><td>Peru     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Carenero   </td><td>1315</td><td>2014</td><td>70%</td><td>France</td><td>2.75</td><td>Criollo</td><td>Venezuela</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " Company...Maker.if.known. & Specific.Bean.Origin.or.Bar.Name & REF & Review.Date & Cocoa.Percent & Company.Location & Rating & Bean.Type & Broad.Bean.Origin\\\\\n",
       " <chr> & <chr> & <dbl> & <dbl> & <chr> & <chr> & <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t A. Morin & Agua Grande & 1876 & 2016 & 63\\% & France & 3.75 &         & Sao Tome \\\\\n",
       "\t A. Morin & Kpime       & 1676 & 2015 & 70\\% & France & 2.75 &         & Togo     \\\\\n",
       "\t A. Morin & Atsane      & 1676 & 2015 & 70\\% & France & 3.00 &         & Togo     \\\\\n",
       "\t A. Morin & Akata       & 1680 & 2015 & 70\\% & France & 3.50 &         & Togo     \\\\\n",
       "\t A. Morin & Quilla      & 1704 & 2015 & 70\\% & France & 3.50 &         & Peru     \\\\\n",
       "\t A. Morin & Carenero    & 1315 & 2014 & 70\\% & France & 2.75 & Criollo & Venezuela\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 9\n",
       "\n",
       "| Company...Maker.if.known. &lt;chr&gt; | Specific.Bean.Origin.or.Bar.Name &lt;chr&gt; | REF &lt;dbl&gt; | Review.Date &lt;dbl&gt; | Cocoa.Percent &lt;chr&gt; | Company.Location &lt;chr&gt; | Rating &lt;dbl&gt; | Bean.Type &lt;chr&gt; | Broad.Bean.Origin &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| A. Morin | Agua Grande | 1876 | 2016 | 63% | France | 3.75 |         | Sao Tome  |\n",
       "| A. Morin | Kpime       | 1676 | 2015 | 70% | France | 2.75 |         | Togo      |\n",
       "| A. Morin | Atsane      | 1676 | 2015 | 70% | France | 3.00 |         | Togo      |\n",
       "| A. Morin | Akata       | 1680 | 2015 | 70% | France | 3.50 |         | Togo      |\n",
       "| A. Morin | Quilla      | 1704 | 2015 | 70% | France | 3.50 |         | Peru      |\n",
       "| A. Morin | Carenero    | 1315 | 2014 | 70% | France | 2.75 | Criollo | Venezuela |\n",
       "\n"
      ],
      "text/plain": [
       "  Company...Maker.if.known. Specific.Bean.Origin.or.Bar.Name REF  Review.Date\n",
       "1 A. Morin                  Agua Grande                      1876 2016       \n",
       "2 A. Morin                  Kpime                            1676 2015       \n",
       "3 A. Morin                  Atsane                           1676 2015       \n",
       "4 A. Morin                  Akata                            1680 2015       \n",
       "5 A. Morin                  Quilla                           1704 2015       \n",
       "6 A. Morin                  Carenero                         1315 2014       \n",
       "  Cocoa.Percent Company.Location Rating Bean.Type Broad.Bean.Origin\n",
       "1 63%           France           3.75             Sao Tome         \n",
       "2 70%           France           2.75             Togo             \n",
       "3 70%           France           3.00             Togo             \n",
       "4 70%           France           3.50             Togo             \n",
       "5 70%           France           3.50             Peru             \n",
       "6 70%           France           2.75   Criollo   Venezuela        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(chocolateData)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "fe70b2de",
   "metadata": {
    "_cell_guid": "79312270-618e-4181-a2ca-da3379ca1a9d",
    "_uuid": "ce61c0c80a3f29662fe568248110a612018f566d",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:09.464931Z",
     "iopub.status.busy": "2023-07-22T08:47:09.463264Z",
     "iopub.status.idle": "2023-07-22T08:47:09.507418Z",
     "shell.execute_reply": "2023-07-22T08:47:09.505022Z"
    },
    "papermill": {
     "duration": 0.057232,
     "end_time": "2023-07-22T08:47:09.510540",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.453308",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Company...Maker.if.known.</th><th scope=col>Specific.Bean.Origin.or.Bar.Name</th><th scope=col>REF</th><th scope=col>Review.Date</th><th scope=col>Cocoa.Percent</th><th scope=col>Company.Location</th><th scope=col>Rating</th><th scope=col>Bean.Type</th><th scope=col>Broad.Bean.Origin</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>A. Morin</td><td>Kpime   </td><td>1676</td><td>2015</td><td>70%</td><td>France</td><td>2.75</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Atsane  </td><td>1676</td><td>2015</td><td>70%</td><td>France</td><td>3.00</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Akata   </td><td>1680</td><td>2015</td><td>70%</td><td>France</td><td>3.50</td><td>       </td><td>Togo     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Quilla  </td><td>1704</td><td>2015</td><td>70%</td><td>France</td><td>3.50</td><td>       </td><td>Peru     </td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Carenero</td><td>1315</td><td>2014</td><td>70%</td><td>France</td><td>2.75</td><td>Criollo</td><td>Venezuela</td></tr>\n",
       "\t<tr><td>A. Morin</td><td>Cuba    </td><td>1315</td><td>2014</td><td>70%</td><td>France</td><td>3.50</td><td>       </td><td>Cuba     </td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 9\n",
       "\\begin{tabular}{lllllllll}\n",
       " Company...Maker.if.known. & Specific.Bean.Origin.or.Bar.Name & REF & Review.Date & Cocoa.Percent & Company.Location & Rating & Bean.Type & Broad.Bean.Origin\\\\\n",
       " <chr> & <chr> & <dbl> & <dbl> & <chr> & <chr> & <dbl> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t A. Morin & Kpime    & 1676 & 2015 & 70\\% & France & 2.75 &         & Togo     \\\\\n",
       "\t A. Morin & Atsane   & 1676 & 2015 & 70\\% & France & 3.00 &         & Togo     \\\\\n",
       "\t A. Morin & Akata    & 1680 & 2015 & 70\\% & France & 3.50 &         & Togo     \\\\\n",
       "\t A. Morin & Quilla   & 1704 & 2015 & 70\\% & France & 3.50 &         & Peru     \\\\\n",
       "\t A. Morin & Carenero & 1315 & 2014 & 70\\% & France & 2.75 & Criollo & Venezuela\\\\\n",
       "\t A. Morin & Cuba     & 1315 & 2014 & 70\\% & France & 3.50 &         & Cuba     \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 9\n",
       "\n",
       "| Company...Maker.if.known. &lt;chr&gt; | Specific.Bean.Origin.or.Bar.Name &lt;chr&gt; | REF &lt;dbl&gt; | Review.Date &lt;dbl&gt; | Cocoa.Percent &lt;chr&gt; | Company.Location &lt;chr&gt; | Rating &lt;dbl&gt; | Bean.Type &lt;chr&gt; | Broad.Bean.Origin &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|\n",
       "| A. Morin | Kpime    | 1676 | 2015 | 70% | France | 2.75 |         | Togo      |\n",
       "| A. Morin | Atsane   | 1676 | 2015 | 70% | France | 3.00 |         | Togo      |\n",
       "| A. Morin | Akata    | 1680 | 2015 | 70% | France | 3.50 |         | Togo      |\n",
       "| A. Morin | Quilla   | 1704 | 2015 | 70% | France | 3.50 |         | Peru      |\n",
       "| A. Morin | Carenero | 1315 | 2014 | 70% | France | 2.75 | Criollo | Venezuela |\n",
       "| A. Morin | Cuba     | 1315 | 2014 | 70% | France | 3.50 |         | Cuba      |\n",
       "\n"
      ],
      "text/plain": [
       "  Company...Maker.if.known. Specific.Bean.Origin.or.Bar.Name REF  Review.Date\n",
       "1 A. Morin                  Kpime                            1676 2015       \n",
       "2 A. Morin                  Atsane                           1676 2015       \n",
       "3 A. Morin                  Akata                            1680 2015       \n",
       "4 A. Morin                  Quilla                           1704 2015       \n",
       "5 A. Morin                  Carenero                         1315 2014       \n",
       "6 A. Morin                  Cuba                             1315 2014       \n",
       "  Cocoa.Percent Company.Location Rating Bean.Type Broad.Bean.Origin\n",
       "1 70%           France           2.75             Togo             \n",
       "2 70%           France           3.00             Togo             \n",
       "3 70%           France           3.50             Togo             \n",
       "4 70%           France           3.50             Peru             \n",
       "5 70%           France           2.75   Criollo   Venezuela        \n",
       "6 70%           France           3.50             Cuba             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# get all rows EXCEPT the first row and all columns of chocolateData\n",
    "# By putting it back in the same variable, we're overwriting what was in \n",
    "# that variable before, so be careful with this!\n",
    "chocolateData <- chocolateData[-1,] \n",
    "\n",
    "# make sure we removed the row we didn't want\n",
    "head(chocolateData)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "760eeae7",
   "metadata": {
    "_cell_guid": "71a8e3c4-1049-4e9c-8025-c764fbab716c",
    "_uuid": "79aeb9b58fdd4d40e8053857f50e77eb8dae914f",
    "execution": {
     "iopub.execute_input": "2023-07-22T08:47:09.530574Z",
     "iopub.status.busy": "2023-07-22T08:47:09.528925Z",
     "iopub.status.idle": "2023-07-22T08:47:09.672178Z",
     "shell.execute_reply": "2023-07-22T08:47:09.669619Z"
    },
    "papermill": {
     "duration": 0.156186,
     "end_time": "2023-07-22T08:47:09.674889",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.518703",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 61</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>GPA</th><th scope=col>Gender</th><th scope=col>breakfast</th><th scope=col>calories_chicken</th><th scope=col>calories_day</th><th scope=col>calories_scone</th><th scope=col>coffee</th><th scope=col>comfort_food</th><th scope=col>comfort_food_reasons</th><th scope=col>comfort_food_reasons_coded...10</th><th scope=col>⋯</th><th scope=col>soup</th><th scope=col>sports</th><th scope=col>thai_food</th><th scope=col>tortilla_calories</th><th scope=col>turkey_calories</th><th scope=col>type_sports</th><th scope=col>veggies_day</th><th scope=col>vitamins</th><th scope=col>waffle_calories</th><th scope=col>weight</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>⋯</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2.4  </td><td>2</td><td>1</td><td>430</td><td>NaN</td><td>315</td><td>1</td><td>none                            </td><td>we dont have comfort                                       </td><td>9</td><td>⋯</td><td>1</td><td>1</td><td>1</td><td>1165</td><td>345</td><td>car racing</td><td>5</td><td>1</td><td>1315</td><td>187                    </td></tr>\n",
       "\t<tr><td>3.654</td><td>1</td><td>1</td><td>610</td><td>  3</td><td>420</td><td>2</td><td>chocolate, chips, ice cream     </td><td>Stress, bored, anger                                       </td><td>1</td><td>⋯</td><td>1</td><td>1</td><td>2</td><td> 725</td><td>690</td><td>Basketball</td><td>4</td><td>2</td><td> 900</td><td>155                    </td></tr>\n",
       "\t<tr><td>3.3  </td><td>1</td><td>1</td><td>720</td><td>  4</td><td>420</td><td>2</td><td>frozen yogurt, pizza, fast food </td><td>stress, sadness                                            </td><td>1</td><td>⋯</td><td>1</td><td>2</td><td>5</td><td>1165</td><td>500</td><td>none      </td><td>5</td><td>1</td><td> 900</td><td>I'm not answering this.</td></tr>\n",
       "\t<tr><td>3.2  </td><td>1</td><td>1</td><td>430</td><td>  3</td><td>420</td><td>2</td><td>Pizza, Mac and cheese, ice cream</td><td>Boredom                                                    </td><td>2</td><td>⋯</td><td>1</td><td>2</td><td>5</td><td> 725</td><td>690</td><td>nan       </td><td>3</td><td>1</td><td>1315</td><td>Not sure, 240          </td></tr>\n",
       "\t<tr><td>3.5  </td><td>1</td><td>1</td><td>720</td><td>  2</td><td>420</td><td>2</td><td>Ice cream, chocolate, chips     </td><td>Stress, boredom, cravings                                  </td><td>1</td><td>⋯</td><td>1</td><td>1</td><td>4</td><td> 940</td><td>500</td><td>Softball  </td><td>4</td><td>2</td><td> 760</td><td>190                    </td></tr>\n",
       "\t<tr><td>2.25 </td><td>1</td><td>1</td><td>610</td><td>  3</td><td>980</td><td>2</td><td>Candy, brownies and soda.       </td><td>None, i don't eat comfort food. I just eat when i'm hungry.</td><td>4</td><td>⋯</td><td>1</td><td>2</td><td>4</td><td> 940</td><td>345</td><td>None.     </td><td>1</td><td>2</td><td>1315</td><td>190                    </td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 61\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " GPA & Gender & breakfast & calories\\_chicken & calories\\_day & calories\\_scone & coffee & comfort\\_food & comfort\\_food\\_reasons & comfort\\_food\\_reasons\\_coded...10 & ⋯ & soup & sports & thai\\_food & tortilla\\_calories & turkey\\_calories & type\\_sports & veggies\\_day & vitamins & waffle\\_calories & weight\\\\\n",
       " <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <dbl> & ⋯ & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 2.4   & 2 & 1 & 430 & NaN & 315 & 1 & none                             & we dont have comfort                                        & 9 & ⋯ & 1 & 1 & 1 & 1165 & 345 & car racing & 5 & 1 & 1315 & 187                    \\\\\n",
       "\t 3.654 & 1 & 1 & 610 &   3 & 420 & 2 & chocolate, chips, ice cream      & Stress, bored, anger                                        & 1 & ⋯ & 1 & 1 & 2 &  725 & 690 & Basketball & 4 & 2 &  900 & 155                    \\\\\n",
       "\t 3.3   & 1 & 1 & 720 &   4 & 420 & 2 & frozen yogurt, pizza, fast food  & stress, sadness                                             & 1 & ⋯ & 1 & 2 & 5 & 1165 & 500 & none       & 5 & 1 &  900 & I'm not answering this.\\\\\n",
       "\t 3.2   & 1 & 1 & 430 &   3 & 420 & 2 & Pizza, Mac and cheese, ice cream & Boredom                                                     & 2 & ⋯ & 1 & 2 & 5 &  725 & 690 & nan        & 3 & 1 & 1315 & Not sure, 240          \\\\\n",
       "\t 3.5   & 1 & 1 & 720 &   2 & 420 & 2 & Ice cream, chocolate, chips      & Stress, boredom, cravings                                   & 1 & ⋯ & 1 & 1 & 4 &  940 & 500 & Softball   & 4 & 2 &  760 & 190                    \\\\\n",
       "\t 2.25  & 1 & 1 & 610 &   3 & 980 & 2 & Candy, brownies and soda.        & None, i don't eat comfort food. I just eat when i'm hungry. & 4 & ⋯ & 1 & 2 & 4 &  940 & 345 & None.      & 1 & 2 & 1315 & 190                    \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 61\n",
       "\n",
       "| GPA &lt;chr&gt; | Gender &lt;dbl&gt; | breakfast &lt;dbl&gt; | calories_chicken &lt;dbl&gt; | calories_day &lt;dbl&gt; | calories_scone &lt;dbl&gt; | coffee &lt;dbl&gt; | comfort_food &lt;chr&gt; | comfort_food_reasons &lt;chr&gt; | comfort_food_reasons_coded...10 &lt;dbl&gt; | ⋯ ⋯ | soup &lt;dbl&gt; | sports &lt;dbl&gt; | thai_food &lt;dbl&gt; | tortilla_calories &lt;dbl&gt; | turkey_calories &lt;dbl&gt; | type_sports &lt;chr&gt; | veggies_day &lt;dbl&gt; | vitamins &lt;dbl&gt; | waffle_calories &lt;dbl&gt; | weight &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 2.4   | 2 | 1 | 430 | NaN | 315 | 1 | none                             | we dont have comfort                                        | 9 | ⋯ | 1 | 1 | 1 | 1165 | 345 | car racing | 5 | 1 | 1315 | 187                     |\n",
       "| 3.654 | 1 | 1 | 610 |   3 | 420 | 2 | chocolate, chips, ice cream      | Stress, bored, anger                                        | 1 | ⋯ | 1 | 1 | 2 |  725 | 690 | Basketball | 4 | 2 |  900 | 155                     |\n",
       "| 3.3   | 1 | 1 | 720 |   4 | 420 | 2 | frozen yogurt, pizza, fast food  | stress, sadness                                             | 1 | ⋯ | 1 | 2 | 5 | 1165 | 500 | none       | 5 | 1 |  900 | I'm not answering this. |\n",
       "| 3.2   | 1 | 1 | 430 |   3 | 420 | 2 | Pizza, Mac and cheese, ice cream | Boredom                                                     | 2 | ⋯ | 1 | 2 | 5 |  725 | 690 | nan        | 3 | 1 | 1315 | Not sure, 240           |\n",
       "| 3.5   | 1 | 1 | 720 |   2 | 420 | 2 | Ice cream, chocolate, chips      | Stress, boredom, cravings                                   | 1 | ⋯ | 1 | 1 | 4 |  940 | 500 | Softball   | 4 | 2 |  760 | 190                     |\n",
       "| 2.25  | 1 | 1 | 610 |   3 | 980 | 2 | Candy, brownies and soda.        | None, i don't eat comfort food. I just eat when i'm hungry. | 4 | ⋯ | 1 | 2 | 4 |  940 | 345 | None.      | 1 | 2 | 1315 | 190                     |\n",
       "\n"
      ],
      "text/plain": [
       "  GPA   Gender breakfast calories_chicken calories_day calories_scone coffee\n",
       "1 2.4   2      1         430              NaN          315            1     \n",
       "2 3.654 1      1         610                3          420            2     \n",
       "3 3.3   1      1         720                4          420            2     \n",
       "4 3.2   1      1         430                3          420            2     \n",
       "5 3.5   1      1         720                2          420            2     \n",
       "6 2.25  1      1         610                3          980            2     \n",
       "  comfort_food                    \n",
       "1 none                            \n",
       "2 chocolate, chips, ice cream     \n",
       "3 frozen yogurt, pizza, fast food \n",
       "4 Pizza, Mac and cheese, ice cream\n",
       "5 Ice cream, chocolate, chips     \n",
       "6 Candy, brownies and soda.       \n",
       "  comfort_food_reasons                                       \n",
       "1 we dont have comfort                                       \n",
       "2 Stress, bored, anger                                       \n",
       "3 stress, sadness                                            \n",
       "4 Boredom                                                    \n",
       "5 Stress, boredom, cravings                                  \n",
       "6 None, i don't eat comfort food. I just eat when i'm hungry.\n",
       "  comfort_food_reasons_coded...10 ⋯ soup sports thai_food tortilla_calories\n",
       "1 9                               ⋯ 1    1      1         1165             \n",
       "2 1                               ⋯ 1    1      2          725             \n",
       "3 1                               ⋯ 1    2      5         1165             \n",
       "4 2                               ⋯ 1    2      5          725             \n",
       "5 1                               ⋯ 1    1      4          940             \n",
       "6 4                               ⋯ 1    2      4          940             \n",
       "  turkey_calories type_sports veggies_day vitamins waffle_calories\n",
       "1 345             car racing  5           1        1315           \n",
       "2 690             Basketball  4           2         900           \n",
       "3 500             none        5           1         900           \n",
       "4 690             nan         3           1        1315           \n",
       "5 500             Softball    4           2         760           \n",
       "6 345             None.       1           2        1315           \n",
       "  weight                 \n",
       "1 187                    \n",
       "2 155                    \n",
       "3 I'm not answering this.\n",
       "4 Not sure, 240          \n",
       "5 190                    \n",
       "6 190                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 6 × 60</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>GPA</th><th scope=col>Gender</th><th scope=col>breakfast</th><th scope=col>calories_chicken</th><th scope=col>calories_scone</th><th scope=col>coffee</th><th scope=col>comfort_food</th><th scope=col>comfort_food_reasons</th><th scope=col>comfort_food_reasons_coded...10</th><th scope=col>cook</th><th scope=col>⋯</th><th scope=col>soup</th><th scope=col>sports</th><th scope=col>thai_food</th><th scope=col>tortilla_calories</th><th scope=col>turkey_calories</th><th scope=col>type_sports</th><th scope=col>veggies_day</th><th scope=col>vitamins</th><th scope=col>waffle_calories</th><th scope=col>weight</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>⋯</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2.4  </td><td>2</td><td>1</td><td>430</td><td>315</td><td>1</td><td>none                            </td><td>we dont have comfort                                       </td><td>9</td><td>2</td><td>⋯</td><td>1</td><td>1</td><td>1</td><td>1165</td><td>345</td><td>car racing</td><td>5</td><td>1</td><td>1315</td><td>187                    </td></tr>\n",
       "\t<tr><td>3.654</td><td>1</td><td>1</td><td>610</td><td>420</td><td>2</td><td>chocolate, chips, ice cream     </td><td>Stress, bored, anger                                       </td><td>1</td><td>3</td><td>⋯</td><td>1</td><td>1</td><td>2</td><td> 725</td><td>690</td><td>Basketball</td><td>4</td><td>2</td><td> 900</td><td>155                    </td></tr>\n",
       "\t<tr><td>3.3  </td><td>1</td><td>1</td><td>720</td><td>420</td><td>2</td><td>frozen yogurt, pizza, fast food </td><td>stress, sadness                                            </td><td>1</td><td>1</td><td>⋯</td><td>1</td><td>2</td><td>5</td><td>1165</td><td>500</td><td>none      </td><td>5</td><td>1</td><td> 900</td><td>I'm not answering this.</td></tr>\n",
       "\t<tr><td>3.2  </td><td>1</td><td>1</td><td>430</td><td>420</td><td>2</td><td>Pizza, Mac and cheese, ice cream</td><td>Boredom                                                    </td><td>2</td><td>2</td><td>⋯</td><td>1</td><td>2</td><td>5</td><td> 725</td><td>690</td><td>nan       </td><td>3</td><td>1</td><td>1315</td><td>Not sure, 240          </td></tr>\n",
       "\t<tr><td>3.5  </td><td>1</td><td>1</td><td>720</td><td>420</td><td>2</td><td>Ice cream, chocolate, chips     </td><td>Stress, boredom, cravings                                  </td><td>1</td><td>1</td><td>⋯</td><td>1</td><td>1</td><td>4</td><td> 940</td><td>500</td><td>Softball  </td><td>4</td><td>2</td><td> 760</td><td>190                    </td></tr>\n",
       "\t<tr><td>2.25 </td><td>1</td><td>1</td><td>610</td><td>980</td><td>2</td><td>Candy, brownies and soda.       </td><td>None, i don't eat comfort food. I just eat when i'm hungry.</td><td>4</td><td>3</td><td>⋯</td><td>1</td><td>2</td><td>4</td><td> 940</td><td>345</td><td>None.     </td><td>1</td><td>2</td><td>1315</td><td>190                    </td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 6 × 60\n",
       "\\begin{tabular}{lllllllllllllllllllll}\n",
       " GPA & Gender & breakfast & calories\\_chicken & calories\\_scone & coffee & comfort\\_food & comfort\\_food\\_reasons & comfort\\_food\\_reasons\\_coded...10 & cook & ⋯ & soup & sports & thai\\_food & tortilla\\_calories & turkey\\_calories & type\\_sports & veggies\\_day & vitamins & waffle\\_calories & weight\\\\\n",
       " <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <chr> & <dbl> & <dbl> & ⋯ & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <chr> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t 2.4   & 2 & 1 & 430 & 315 & 1 & none                             & we dont have comfort                                        & 9 & 2 & ⋯ & 1 & 1 & 1 & 1165 & 345 & car racing & 5 & 1 & 1315 & 187                    \\\\\n",
       "\t 3.654 & 1 & 1 & 610 & 420 & 2 & chocolate, chips, ice cream      & Stress, bored, anger                                        & 1 & 3 & ⋯ & 1 & 1 & 2 &  725 & 690 & Basketball & 4 & 2 &  900 & 155                    \\\\\n",
       "\t 3.3   & 1 & 1 & 720 & 420 & 2 & frozen yogurt, pizza, fast food  & stress, sadness                                             & 1 & 1 & ⋯ & 1 & 2 & 5 & 1165 & 500 & none       & 5 & 1 &  900 & I'm not answering this.\\\\\n",
       "\t 3.2   & 1 & 1 & 430 & 420 & 2 & Pizza, Mac and cheese, ice cream & Boredom                                                     & 2 & 2 & ⋯ & 1 & 2 & 5 &  725 & 690 & nan        & 3 & 1 & 1315 & Not sure, 240          \\\\\n",
       "\t 3.5   & 1 & 1 & 720 & 420 & 2 & Ice cream, chocolate, chips      & Stress, boredom, cravings                                   & 1 & 1 & ⋯ & 1 & 1 & 4 &  940 & 500 & Softball   & 4 & 2 &  760 & 190                    \\\\\n",
       "\t 2.25  & 1 & 1 & 610 & 980 & 2 & Candy, brownies and soda.        & None, i don't eat comfort food. I just eat when i'm hungry. & 4 & 3 & ⋯ & 1 & 2 & 4 &  940 & 345 & None.      & 1 & 2 & 1315 & 190                    \\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 6 × 60\n",
       "\n",
       "| GPA &lt;chr&gt; | Gender &lt;dbl&gt; | breakfast &lt;dbl&gt; | calories_chicken &lt;dbl&gt; | calories_scone &lt;dbl&gt; | coffee &lt;dbl&gt; | comfort_food &lt;chr&gt; | comfort_food_reasons &lt;chr&gt; | comfort_food_reasons_coded...10 &lt;dbl&gt; | cook &lt;dbl&gt; | ⋯ ⋯ | soup &lt;dbl&gt; | sports &lt;dbl&gt; | thai_food &lt;dbl&gt; | tortilla_calories &lt;dbl&gt; | turkey_calories &lt;dbl&gt; | type_sports &lt;chr&gt; | veggies_day &lt;dbl&gt; | vitamins &lt;dbl&gt; | waffle_calories &lt;dbl&gt; | weight &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 2.4   | 2 | 1 | 430 | 315 | 1 | none                             | we dont have comfort                                        | 9 | 2 | ⋯ | 1 | 1 | 1 | 1165 | 345 | car racing | 5 | 1 | 1315 | 187                     |\n",
       "| 3.654 | 1 | 1 | 610 | 420 | 2 | chocolate, chips, ice cream      | Stress, bored, anger                                        | 1 | 3 | ⋯ | 1 | 1 | 2 |  725 | 690 | Basketball | 4 | 2 |  900 | 155                     |\n",
       "| 3.3   | 1 | 1 | 720 | 420 | 2 | frozen yogurt, pizza, fast food  | stress, sadness                                             | 1 | 1 | ⋯ | 1 | 2 | 5 | 1165 | 500 | none       | 5 | 1 |  900 | I'm not answering this. |\n",
       "| 3.2   | 1 | 1 | 430 | 420 | 2 | Pizza, Mac and cheese, ice cream | Boredom                                                     | 2 | 2 | ⋯ | 1 | 2 | 5 |  725 | 690 | nan        | 3 | 1 | 1315 | Not sure, 240           |\n",
       "| 3.5   | 1 | 1 | 720 | 420 | 2 | Ice cream, chocolate, chips      | Stress, boredom, cravings                                   | 1 | 1 | ⋯ | 1 | 1 | 4 |  940 | 500 | Softball   | 4 | 2 |  760 | 190                     |\n",
       "| 2.25  | 1 | 1 | 610 | 980 | 2 | Candy, brownies and soda.        | None, i don't eat comfort food. I just eat when i'm hungry. | 4 | 3 | ⋯ | 1 | 2 | 4 |  940 | 345 | None.      | 1 | 2 | 1315 | 190                     |\n",
       "\n"
      ],
      "text/plain": [
       "  GPA   Gender breakfast calories_chicken calories_scone coffee\n",
       "1 2.4   2      1         430              315            1     \n",
       "2 3.654 1      1         610              420            2     \n",
       "3 3.3   1      1         720              420            2     \n",
       "4 3.2   1      1         430              420            2     \n",
       "5 3.5   1      1         720              420            2     \n",
       "6 2.25  1      1         610              980            2     \n",
       "  comfort_food                    \n",
       "1 none                            \n",
       "2 chocolate, chips, ice cream     \n",
       "3 frozen yogurt, pizza, fast food \n",
       "4 Pizza, Mac and cheese, ice cream\n",
       "5 Ice cream, chocolate, chips     \n",
       "6 Candy, brownies and soda.       \n",
       "  comfort_food_reasons                                       \n",
       "1 we dont have comfort                                       \n",
       "2 Stress, bored, anger                                       \n",
       "3 stress, sadness                                            \n",
       "4 Boredom                                                    \n",
       "5 Stress, boredom, cravings                                  \n",
       "6 None, i don't eat comfort food. I just eat when i'm hungry.\n",
       "  comfort_food_reasons_coded...10 cook ⋯ soup sports thai_food\n",
       "1 9                               2    ⋯ 1    1      1        \n",
       "2 1                               3    ⋯ 1    1      2        \n",
       "3 1                               1    ⋯ 1    2      5        \n",
       "4 2                               2    ⋯ 1    2      5        \n",
       "5 1                               1    ⋯ 1    1      4        \n",
       "6 4                               3    ⋯ 1    2      4        \n",
       "  tortilla_calories turkey_calories type_sports veggies_day vitamins\n",
       "1 1165              345             car racing  5           1       \n",
       "2  725              690             Basketball  4           2       \n",
       "3 1165              500             none        5           1       \n",
       "4  725              690             nan         3           1       \n",
       "5  940              500             Softball    4           2       \n",
       "6  940              345             None.       1           2       \n",
       "  waffle_calories weight                 \n",
       "1 1315            187                    \n",
       "2  900            155                    \n",
       "3  900            I'm not answering this.\n",
       "4 1315            Not sure, 240          \n",
       "5  760            190                    \n",
       "6 1315            190                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Your turn!\n",
    "\n",
    "# The 5th column in the \"foodPreferences\" dataset has a lot of values that aren't \n",
    "# numbers (nan means \"not a number\"). Can you remove the 5th column from the dataset?\n",
    "head(foodPreferences)\n",
    "foodPreferences <- foodPreferences[,-5]\n",
    "head(foodPreferences)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6f38056b",
   "metadata": {
    "_cell_guid": "95d15958-a8b3-43c2-8940-95b0e2271db4",
    "_uuid": "b01695617265d19aeee7393215c45cab50f7ba44",
    "papermill": {
     "duration": 0.008994,
     "end_time": "2023-07-22T08:47:09.693224",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.684230",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Alright, now that we've read our data into R, checked that it looks alright and gotten rid of a row we didn't want, it's time to get down to doing some analysis. In the next section, we'll learn how to summerize our data and get into some basic statistics!"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7efb6d8b",
   "metadata": {
    "_cell_guid": "ddd3caf3-4b6e-43a5-aea3-015ee692fc4b",
    "_uuid": "de957e271c7fa03464825f3d93793caec7042a53",
    "papermill": {
     "duration": 0.008864,
     "end_time": "2023-07-22T08:47:09.711090",
     "exception": false,
     "start_time": "2023-07-22T08:47:09.702226",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Next step: [Summarize our data](https://www.kaggle.com/rtatman/getting-started-in-r-summarize-data/)"
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
   "duration": 6.045136,
   "end_time": "2023-07-22T08:47:09.841955",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-07-22T08:47:03.796819",
   "version": "2.4.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
