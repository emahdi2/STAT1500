{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "3854df1c",
   "metadata": {
    "papermill": {
     "duration": 0.005891,
     "end_time": "2026-05-04T15:21:35.830899",
     "exception": false,
     "start_time": "2026-05-04T15:21:35.825008",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Getting Started: Installing R and RStudio\n",
    "\n",
    "Before you can run any **R** code, you need to install two things:\n",
    "\n",
    "1. **R** (the engine): Download it from [CRAN (Comprehensive R Archive Network](https://cran.r-project.org/). Choose your operating system (Windows, Mac, or Linux) and follow the default installation steps.\n",
    "\n",
    "2. **RStudio** (the interface): Download the free Desktop version from [posit.co](https://posit.co/download/rstudio-desktop). Install it after installing **R**. **RStudio** will automatically detect your **R** installation.\n",
    "\n",
    "Once both are installed, launch **RStudio** (not **R** directly).\n",
    "\n",
    "## Why Switch from R to RStudio?\n",
    "\n",
    "You could write **R** code directly in the basic **R** console that opens when you click the **R** icon. However, **RStudio** provides a much more productive environment.\n",
    "\n",
    "**Forget using plain R. Use RStudio from now on because:**\n",
    "\n",
    "- It offers **four organized panes** (Script Editor, Console, Environment/History, Files/Plots/Packages/Help).\n",
    "\n",
    "- You can write and save **scripts** (`.R` or `.Rmd` files) to reuse your work.\n",
    "\n",
    "- It has **syntax highlighting**, code completion, and built-in plotting viewer.\n",
    "\n",
    "- It integrates **R Markdown**, version control (`Git`), and project management.\n",
    "\n",
    "All the code in this document can be run in RStudio by clicking the green **\"Run\"** button or pressing `Ctrl+Enter` (Windows/Linux) / `Cmd+Enter` (Mac) on a line or selected block.\n",
    "\n",
    "## Understanding R Packages: Base, Main, and Outsider\n",
    "\n",
    "R's functionality is organized into **packages** (collections of functions, data, and documentation). When you install R, you automatically receive two distinct sets of packages: **Base packages** and **Recommended (Main) packages**. Anything beyond these is called an **Outsider (Contributed) package**.\n",
    "\n",
    "### Base Packages (Always Available, No `library()` Needed)\n",
    "\n",
    "Base packages are the absolute core of **R**. They are loaded automatically when you start **R**. You **do not** need to use `library()` for them. Here is the complete list of Base packages in a standard **R** installation:\n",
    "\n",
    "| Package | Description |\n",
    "|-------|-------------------------|\n",
    "| base | Fundamental **R** functions: arithmetic, `I/O`, data structures, condition handling, etc. |\n",
    "| compiler | Byte code compiler for **R** functions. |\n",
    "| datasets | Built-in example datasets (e.g., `iris`, `mtcars`, `AirPassengers`). |\n",
    "| graphics | Base graphics functions for plotting (e.g., `plot()`, `hist()`, `barplot()`). |\n",
    "| grDevices | Graphics device management and color handling (e.g., `colors()`, `png()`, `pdf()`). |\n",
    "| grid | A more flexible graphics system than base graphics (alternative to graphics). |\n",
    "| methods | Formal object-oriented programming (S4 classes and methods). |\n",
    "| parallel | Support for parallel computing (`snow`, `multicore`, etc.). |\n",
    "| splines | Regression spline functions and classes. |\n",
    "| stats | Extensive statistical functions: distributions, tests, linear models, clustering, etc. |\n",
    "| stats4 | S4 classes and methods for statistical modeling. |\n",
    "| tcltk | Interface to the Tcl/Tk GUI toolkit (for creating simple GUI windows). |\n",
    "| tools | Tools for package development and checking. |\n",
    "| utils | Utilities: package installation, data entry, file handling, object inspection (`str()`, `head()`, `summary()`). |\n",
    "\n",
    "**Note:** `methods` and `stats4` are technically part of the base distribution but may require explicit loading with `library(methods)` in some very old or minimal **R** setups. However, in modern **R**, they load automatically.\n",
    "\n",
    "### Main (Recommended) Packages\n",
    "\n",
    "These are Recommended packages distributed with **R** but **not loaded by default**. You must load them using `library(package_name)` when you need them. They are maintained by the **R** Core Team or highly trusted developers.\n",
    "\n",
    "## Main (Recommended) Packages\n",
    "\n",
    "| Package | Description |\n",
    "|-------|---------------|\n",
    "| `boot` | Bootstrap functions (resampling methods) and related data. |\n",
    "| `class` | Functions for classification (k-nearest neighbours, LVQ, etc.). |\n",
    "| `cluster` | Clustering algorithms (hierarchical, k-means, PAM, etc.). |\n",
    "| `codetools` | Code analysis tools for R (finding unused variables, detecting issues). |\n",
    "| `foreign` | Read and write data from other statistical systems (SPSS, Stata, SAS, etc.). |\n",
    "| `KernSmooth` | Kernel smoothing and density estimation (Wand & Jones methods). |\n",
    "| `lattice` | Trellis graphics (multivariate data visualization, an alternative to ggplot2). |\n",
    "| `MASS` | Functions from the book \"Modern Applied Statistics with S\" (Venables & Ripley). |\n",
    "| `Matrix` | Sparse and dense matrix operations and classes. |\n",
    "| `mgcv` | Generalized additive models (GAMs) with smooth term estimation. |\n",
    "| `nlme` | Linear and nonlinear mixed-effects models. |\n",
    "| `nnet` | Feed-forward neural networks and multinomial log-linear models. |\n",
    "| `rpart` | Recursive partitioning and regression trees (CART-like models). |\n",
    "| `spatial` | Functions for spatial statistics (Kriging, point patterns). |\n",
    "| `survival` | Survival analysis (Kaplan-Meier, Cox proportional hazards models). |\n",
    "\n",
    "### Outsider (Contributed) Packages\n",
    "\n",
    "These are created by the global **R** community and hosted on CRAN, Bioconductor, or GitHub. They cover almost everything: data manipulation (`dplyr`), visualization (`ggplot2`), machine learning (`caret, tidymodels`), reporting (`rmarkdown`), web apps (`shiny`), and thousands more.\n",
    "\n",
    "**You must install outsider packages first before using them** (only once per **R** installation):\n",
    "\n",
    "```\n",
    "# Install a single package from CRAN\n",
    "install.packages(\"ggplot2\")\n",
    "\n",
    "# Install multiple packages at once\n",
    "install.packages(c(\"dplyr\", \"tidyr\", \"readr\", \"purrr\"))\n",
    "```\n",
    "\n",
    "After installation, load the package into your current **R** session using `library()` or `require()`:\n",
    "\n",
    "```\n",
    "library(ggplot2)\n",
    "library(dplyr)\n",
    "```\n",
    "\n",
    "**How to See Which Packages Are Already Installed (Base + Main + Outsiders)**\n",
    "\n",
    "```\n",
    "# See all installed packages (Base + Main + any outsiders you added)\n",
    "installed.packages()\n",
    "\n",
    "# See only Base packages\n",
    "installed.packages()[installed.packages()[, \"Priority\"] == \"base\", \"Package\"]\n",
    "\n",
    "# See only Recommended (Main) packages\n",
    "installed.packages()[installed.packages()[, \"Priority\"] == \"recommended\", \"Package\"]\n",
    "```\n",
    "\n",
    "**Important distinction:**\n",
    "\n",
    "- **Base packages** → Always available. No installation. No `library()` or `require()`` needed.\n",
    "\n",
    "- **Main (Recommended) packages** → Already installed with **R**. Need `library()` to use.\n",
    "\n",
    "- **Outsider packages** → Need `install.packages()` once, then `library()` each session.\n",
    "    \n",
    "# Variables\n",
    "\n",
    "A **variable** is a named container that stores a value or object. Think of it like a labeled box where you can put data. Once you create a variable, you can use its name to access whatever value it holds.\n",
    "\n",
    "**Why use variables?**\n",
    "\n",
    "    - Store values for later use\n",
    "\n",
    "    - Give meaningful names to data\n",
    "\n",
    "    - Avoid repeating the same value multiple times\n",
    "\n",
    "    - Make your code easier to read and maintain\n",
    "    \n",
    "## Creating Variables with `<-`\n",
    "\n",
    "In **R**, the primary way to create a variable is using the assignment operator `<-` (a less-than sign followed by a hyphen).\n",
    "\n",
    "**Basic Variable Assignment**\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "b67dd712",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:35.845786Z",
     "iopub.status.busy": "2026-05-04T15:21:35.843241Z",
     "iopub.status.idle": "2026-05-04T15:21:35.939383Z",
     "shell.execute_reply": "2026-05-04T15:21:35.937027Z"
    },
    "papermill": {
     "duration": 0.106724,
     "end_time": "2026-05-04T15:21:35.942719",
     "exception": false,
     "start_time": "2026-05-04T15:21:35.835995",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "25"
      ],
      "text/latex": [
       "25"
      ],
      "text/markdown": [
       "25"
      ],
      "text/plain": [
       "[1] 25"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "'Learning R is fun!'"
      ],
      "text/latex": [
       "'Learning R is fun!'"
      ],
      "text/markdown": [
       "'Learning R is fun!'"
      ],
      "text/plain": [
       "[1] \"Learning R is fun!\""
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
    "# Store a number\n",
    "age <- 25\n",
    "\n",
    "# Store text\n",
    "message <- \"Learning R is fun!\"\n",
    "\n",
    "# Store the result of a calculation\n",
    "is_equal <- (sqrt(144) == 12)\n",
    "\n",
    "# Display the variables\n",
    "age\n",
    "message\n",
    "is_equal"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "63fe24ef",
   "metadata": {
    "papermill": {
     "duration": 0.005447,
     "end_time": "2026-05-04T15:21:35.954005",
     "exception": false,
     "start_time": "2026-05-04T15:21:35.948558",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Key Points:**\n",
    "\n",
    "    - The variable name goes on the left.\n",
    "\n",
    "    - The value goes on the right\n",
    "\n",
    "    - The <- operator points from right to left (value goes into the variable)\n",
    "  \n",
    "    - The variable name can contain letters, numbers, dots (.), and underscores (_).\n",
    "\n",
    "    - The variable name must start with a letter or a dot (but a dot cannot be followed by a number).\n",
    "\n",
    "    - The variable name is case-sensitive (myVar is different from myvar).\n",
    "\n",
    "    - The variable name cannot use reserved words like `if`, `else`, `TRUE`, `FALSE`\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "34d5c326",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.003448Z",
     "iopub.status.busy": "2026-05-04T15:21:35.966835Z",
     "iopub.status.idle": "2026-05-04T15:21:36.021847Z",
     "shell.execute_reply": "2026-05-04T15:21:36.020046Z"
    },
    "papermill": {
     "duration": 0.065653,
     "end_time": "2026-05-04T15:21:36.025065",
     "exception": false,
     "start_time": "2026-05-04T15:21:35.959412",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Valid variable names\n",
    "student_age <- 20\n",
    "student.age <- 21\n",
    "student_age_2 <- 22\n",
    ".student_age <- 23\n",
    "\n",
    "# Invalid variable names (these would cause errors)\n",
    "# 2student <- 20      # Can't start with a number\n",
    "# student-age <- 20   # Hyphens not allowed (R thinks it's subtraction)\n",
    "# if <- 20            # Reserved word"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f0c00579",
   "metadata": {
    "papermill": {
     "duration": 0.005356,
     "end_time": "2026-05-04T15:21:36.035968",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.030612",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Use Spaces for Readability**\n",
    "\n",
    "Always put spaces around the assignment operator to make your code clearer:\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "16e60585",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.050273Z",
     "iopub.status.busy": "2026-05-04T15:21:36.048713Z",
     "iopub.status.idle": "2026-05-04T15:21:36.076621Z",
     "shell.execute_reply": "2026-05-04T15:21:36.074314Z"
    },
    "papermill": {
     "duration": 0.038135,
     "end_time": "2026-05-04T15:21:36.079545",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.041410",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
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
    "# Poor style (hard to read)\n",
    "x<-5\n",
    "x\n",
    "\n",
    "# Good style (clear and readable)\n",
    "x <- 5\n",
    "x"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "f53f5a91",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.094523Z",
     "iopub.status.busy": "2026-05-04T15:21:36.092930Z",
     "iopub.status.idle": "2026-05-04T15:21:36.123795Z",
     "shell.execute_reply": "2026-05-04T15:21:36.122119Z"
    },
    "papermill": {
     "duration": 0.041425,
     "end_time": "2026-05-04T15:21:36.126707",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.085282",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "72"
      ],
      "text/latex": [
       "72"
      ],
      "text/markdown": [
       "72"
      ],
      "text/plain": [
       "[1] 72"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "68"
      ],
      "text/latex": [
       "68"
      ],
      "text/markdown": [
       "68"
      ],
      "text/plain": [
       "[1] 68"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "temperature <- 72\n",
    "temperature  # Shows 72\n",
    "\n",
    "temperature <- 68  # Reassign new value\n",
    "temperature  # Now shows 68"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5bbff51e",
   "metadata": {
    "papermill": {
     "duration": 0.005839,
     "end_time": "2026-05-04T15:21:36.139241",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.133402",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Using Variables in Calculations**\n",
    "\n",
    "Once variables contain numeric values, you can use them in mathematical operations:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "f10bf95f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.154771Z",
     "iopub.status.busy": "2026-05-04T15:21:36.153132Z",
     "iopub.status.idle": "2026-05-04T15:21:36.183142Z",
     "shell.execute_reply": "2026-05-04T15:21:36.180873Z"
    },
    "papermill": {
     "duration": 0.040749,
     "end_time": "2026-05-04T15:21:36.185995",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.145246",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "50"
      ],
      "text/latex": [
       "50"
      ],
      "text/markdown": [
       "50"
      ],
      "text/plain": [
       "[1] 50"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
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
    }
   ],
   "source": [
    "width <- 10\n",
    "height <- 5\n",
    "\n",
    "area <- width * height\n",
    "area  # 50\n",
    "\n",
    "perimeter <- 2 * (width + height)\n",
    "perimeter  # 30"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ff33b2ef",
   "metadata": {
    "papermill": {
     "duration": 0.006111,
     "end_time": "2026-05-04T15:21:36.198402",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.192291",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Note:** Many programming languages use `=` for assignment, but **R** prefers `<-`. Here's why:\n",
    "\n",
    "**The Equals Sign Has Multiple Roles**\n",
    "\n",
    "In **R**, `=` is used for two different purposes:\n",
    "\n",
    "    Assigning function arguments (recommended)\n",
    "\n",
    "    Assigning variables (possible but not recommended)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "318d0499",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.214414Z",
     "iopub.status.busy": "2026-05-04T15:21:36.212757Z",
     "iopub.status.idle": "2026-05-04T15:21:36.234603Z",
     "shell.execute_reply": "2026-05-04T15:21:36.232138Z"
    },
    "papermill": {
     "duration": 0.033474,
     "end_time": "2026-05-04T15:21:36.237975",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.204501",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3.14"
      ],
      "text/latex": [
       "3.14"
      ],
      "text/markdown": [
       "3.14"
      ],
      "text/plain": [
       "[1] 3.14"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Example: round() function with named argument\n",
    "rounded <- round(3.14159, digits = 2)  # 'digits = 2' sets a function argument\n",
    "rounded"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "72eb8925",
   "metadata": {
    "papermill": {
     "duration": 0.006522,
     "end_time": "2026-05-04T15:21:36.252130",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.245608",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "When you use `=` inside a function call, it does NOT create a variable called digits:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "e721ea75",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.269075Z",
     "iopub.status.busy": "2026-05-04T15:21:36.267506Z",
     "iopub.status.idle": "2026-05-04T15:21:36.285920Z",
     "shell.execute_reply": "2026-05-04T15:21:36.284129Z"
    },
    "papermill": {
     "duration": 0.033041,
     "end_time": "2026-05-04T15:21:36.291976",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.258935",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3.14"
      ],
      "text/latex": [
       "3.14"
      ],
      "text/markdown": [
       "3.14"
      ],
      "text/plain": [
       "[1] 3.14"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# This doesn't create a 'digits' variable\n",
    "round(3.14159, digits = 2)\n",
    "\n",
    "# Trying to access 'digits' causes an error\n",
    "# digits  # Would output: Error: object 'digits' not found"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0374d493",
   "metadata": {
    "papermill": {
     "duration": 0.006667,
     "end_time": "2026-05-04T15:21:36.305297",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.298630",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**The `<-` Operator Always Creates Variables**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "67d9bd92",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.322251Z",
     "iopub.status.busy": "2026-05-04T15:21:36.320710Z",
     "iopub.status.idle": "2026-05-04T15:21:36.342921Z",
     "shell.execute_reply": "2026-05-04T15:21:36.341085Z"
    },
    "papermill": {
     "duration": 0.03326,
     "end_time": "2026-05-04T15:21:36.345236",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.311976",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "3.14"
      ],
      "text/latex": [
       "3.14"
      ],
      "text/markdown": [
       "3.14"
      ],
      "text/plain": [
       "[1] 3.14"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "2"
      ],
      "text/latex": [
       "2"
      ],
      "text/markdown": [
       "2"
      ],
      "text/plain": [
       "[1] 2"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Using <- inside a function creates a variable\n",
    "round(3.14159, digits <- 2)  # Creates 'digits' variable\n",
    "digits  # Now digits exists and has value 2"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c5315f33",
   "metadata": {
    "papermill": {
     "duration": 0.006827,
     "end_time": "2026-05-04T15:21:36.359509",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.352682",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Warning:** Creating variables inside function calls like this is usually NOT what you want. It can lead to unexpected behavior and cluttered workspaces.\n",
    "\n",
    "**Best Practice Summary**\n",
    "\n",
    "| Purpose\t| Recommended Operator | Example\n",
    "|---------------------|----------|-----------------|\n",
    "| Variable assignment\t| <- | my_var <- 10 |\n",
    "| Function arguments\t| =\t|round(3.14, digits = 2) |\n",
    "| Equality comparison |\t== |\t5 == 5 (returns TRUE) |"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "024507fb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.376944Z",
     "iopub.status.busy": "2026-05-04T15:21:36.375371Z",
     "iopub.status.idle": "2026-05-04T15:21:36.400307Z",
     "shell.execute_reply": "2026-05-04T15:21:36.398540Z"
    },
    "papermill": {
     "duration": 0.03639,
     "end_time": "2026-05-04T15:21:36.402706",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.366316",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
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
    },
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
    }
   ],
   "source": [
    "# Correct usage examples\n",
    "score <- 95                    # Variable assignment\n",
    "result <- round(score / 3, digits = 2)  # Function argument with =\n",
    "\n",
    "# Checking equality\n",
    "score == 95                    # TRUE\n",
    "score == 100                   # FALSE"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1c45782f",
   "metadata": {
    "papermill": {
     "duration": 0.007111,
     "end_time": "2026-05-04T15:21:36.416884",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.409773",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Alternative Assignment Methods \n",
    "\n",
    "**The `=` Operator (Not Recommended)**\n",
    "\n",
    "While you can use `=` for assignment, it's considered poor style:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "eb7f2b0e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.434696Z",
     "iopub.status.busy": "2026-05-04T15:21:36.433048Z",
     "iopub.status.idle": "2026-05-04T15:21:36.454185Z",
     "shell.execute_reply": "2026-05-04T15:21:36.452363Z"
    },
    "papermill": {
     "duration": 0.032705,
     "end_time": "2026-05-04T15:21:36.456751",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.424046",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "100"
      ],
      "text/latex": [
       "100"
      ],
      "text/markdown": [
       "100"
      ],
      "text/plain": [
       "[1] 100"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Possible but not recommended\n",
    "total = 100\n",
    "total\n",
    "\n",
    "# Better to use <-\n",
    "total <- 100"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2c33c55d",
   "metadata": {
    "papermill": {
     "duration": 0.007382,
     "end_time": "2026-05-04T15:21:36.471423",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.464041",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**The `assign()` Function**\n",
    "\n",
    "R also provides the `assign()` function for creating variables. This is useful in advanced programming scenarios:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "7cd27b19",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.492884Z",
     "iopub.status.busy": "2026-05-04T15:21:36.491413Z",
     "iopub.status.idle": "2026-05-04T15:21:36.522124Z",
     "shell.execute_reply": "2026-05-04T15:21:36.520334Z"
    },
    "papermill": {
     "duration": 0.045979,
     "end_time": "2026-05-04T15:21:36.524643",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.478664",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
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
    },
    {
     "data": {
      "text/html": [
       "3"
      ],
      "text/latex": [
       "3"
      ],
      "text/markdown": [
       "3"
      ],
      "text/plain": [
       "[1] 3"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "8"
      ],
      "text/latex": [
       "8"
      ],
      "text/markdown": [
       "8"
      ],
      "text/plain": [
       "[1] 8"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# assign(variable_name, value)\n",
    "assign(\"apples\", 5)\n",
    "assign(\"oranges\", 3)\n",
    "\n",
    "apples\n",
    "oranges\n",
    "\n",
    "# Calculate total fruit\n",
    "total_fruit <- apples + oranges\n",
    "total_fruit  # 8"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f72a8be5",
   "metadata": {
    "papermill": {
     "duration": 0.007582,
     "end_time": "2026-05-04T15:21:36.539910",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.532328",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Right Assignment `->` (Rarely Used)** \n",
    "\n",
    "R also allows assignment from left to right using `->`, but this is rarely used:"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "f991f55b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.559324Z",
     "iopub.status.busy": "2026-05-04T15:21:36.557645Z",
     "iopub.status.idle": "2026-05-04T15:21:36.578853Z",
     "shell.execute_reply": "2026-05-04T15:21:36.576991Z"
    },
    "papermill": {
     "duration": 0.033889,
     "end_time": "2026-05-04T15:21:36.581756",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.547867",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "10"
      ],
      "text/latex": [
       "10"
      ],
      "text/markdown": [
       "10"
      ],
      "text/plain": [
       "[1] 10"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Right assignment (uncommon)\n",
    "10 -> my_number\n",
    "my_number  # 10\n",
    "\n",
    "# Left assignment (standard and preferred)\n",
    "my_number <- 10"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6c448cdb",
   "metadata": {
    "papermill": {
     "duration": 0.008013,
     "end_time": "2026-05-04T15:21:36.597849",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.589836",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Examples\n",
    "\n",
    "## Example 1: Tracking Personal Finances"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "b53ab97f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.617031Z",
     "iopub.status.busy": "2026-05-04T15:21:36.615414Z",
     "iopub.status.idle": "2026-05-04T15:21:36.645740Z",
     "shell.execute_reply": "2026-05-04T15:21:36.643814Z"
    },
    "papermill": {
     "duration": 0.042644,
     "end_time": "2026-05-04T15:21:36.648131",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.605487",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "2200"
      ],
      "text/latex": [
       "2200"
      ],
      "text/markdown": [
       "2200"
      ],
      "text/plain": [
       "[1] 2200"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Income and expenses\n",
    "monthly_salary <- 5000\n",
    "rent <- 1500\n",
    "groceries <- 600\n",
    "utilities <- 300\n",
    "entertainment <- 400\n",
    "\n",
    "# Calculate savings\n",
    "total_expenses <- rent + groceries + utilities + entertainment\n",
    "monthly_savings <- monthly_salary - total_expenses\n",
    "\n",
    "monthly_savings  # 2200"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f7b21551",
   "metadata": {
    "papermill": {
     "duration": 0.007949,
     "end_time": "2026-05-04T15:21:36.664093",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.656144",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Example 2: Converting Temperatures"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "5c2e9a55",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.683578Z",
     "iopub.status.busy": "2026-05-04T15:21:36.681917Z",
     "iopub.status.idle": "2026-05-04T15:21:36.702848Z",
     "shell.execute_reply": "2026-05-04T15:21:36.701038Z"
    },
    "papermill": {
     "duration": 0.033384,
     "end_time": "2026-05-04T15:21:36.705279",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.671895",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "77"
      ],
      "text/latex": [
       "77"
      ],
      "text/markdown": [
       "77"
      ],
      "text/plain": [
       "[1] 77"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Convert Celsius to Fahrenheit\n",
    "celsius_temp <- 25\n",
    "fahrenheit_temp <- (celsius_temp * 9/5) + 32\n",
    "\n",
    "fahrenheit_temp  # 77°F"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "71f093b1",
   "metadata": {
    "papermill": {
     "duration": 0.008198,
     "end_time": "2026-05-04T15:21:36.721650",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.713452",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Example 3: Building a Simple Calculator"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "07a4c21e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2026-05-04T15:21:36.741959Z",
     "iopub.status.busy": "2026-05-04T15:21:36.740249Z",
     "iopub.status.idle": "2026-05-04T15:21:36.778182Z",
     "shell.execute_reply": "2026-05-04T15:21:36.776413Z"
    },
    "papermill": {
     "duration": 0.05088,
     "end_time": "2026-05-04T15:21:36.780813",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.729933",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "19"
      ],
      "text/latex": [
       "19"
      ],
      "text/markdown": [
       "19"
      ],
      "text/plain": [
       "[1] 19"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "11"
      ],
      "text/latex": [
       "11"
      ],
      "text/markdown": [
       "11"
      ],
      "text/plain": [
       "[1] 11"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "60"
      ],
      "text/latex": [
       "60"
      ],
      "text/markdown": [
       "60"
      ],
      "text/plain": [
       "[1] 60"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "3.75"
      ],
      "text/latex": [
       "3.75"
      ],
      "text/markdown": [
       "3.75"
      ],
      "text/plain": [
       "[1] 3.75"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Store two numbers\n",
    "num1 <- 15\n",
    "num2 <- 4\n",
    "\n",
    "# Perform operations\n",
    "sum_result <- num1 + num2\n",
    "difference <- num1 - num2\n",
    "product <- num1 * num2\n",
    "quotient <- num1 / num2\n",
    "\n",
    "# Display results\n",
    "sum_result      # 19\n",
    "difference      # 11\n",
    "product         # 60\n",
    "quotient        # 3.75"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "21778743",
   "metadata": {
    "papermill": {
     "duration": 0.008659,
     "end_time": "2026-05-04T15:21:36.798279",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.789620",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Common Mistakes to Avoid\n",
    "\n",
    "```\n",
    "# Mistake 1: Using = in a function argument when you meant <-\n",
    "# Wrong: round(3.14, digits = 2)  # This is correct as function argument\n",
    "# But don't do: round(3.14, digits <- 2)  # Creates unwanted variable\n",
    "\n",
    "# Mistake 2: Forgetting spaces\n",
    "# Bad: x<-5\n",
    "# Good: x <- 5\n",
    "\n",
    "# Mistake 3: Using = instead of == for comparison\n",
    "# Wrong: if (x = 10)  # This is assignment, not comparison\n",
    "# Correct: if (x == 10)  # This checks equality\n",
    "\n",
    "# Mistake 4: Using reserved words as variable names\n",
    "# Don't: TRUE <- 5\n",
    "# Don't: if <- 10\n",
    "```\n",
    "\n",
    "# Summary Table\n",
    "\n",
    "| Concept | Operator | Example | Purpose |\n",
    "|---------|----------|---------|---------|\n",
    "| Variable assignment (preferred) | `<-` | `x <- 10` | Store values |\n",
    "| Variable assignment (allowed but not preferred) | `=` | `x = 10` | Store values (avoid) |\n",
    "| Function arguments | `=` | `round(x, digits = 2)` | Pass parameters to functions |\n",
    "| Equality comparison | `==` | `x == 10` | Test if values are equal |\n",
    "| Assignment from right to left (rare) | `->` | `10 -> x` | Alternative assignment |\n",
    "\n",
    "# Exercises\n",
    "\n",
    "## Exercise 1: Variable Assignment Order\n",
    "\n",
    "What is the final value of result after running the code below? Write your answer, then uncomment and run the code to check. \n",
    "\n",
    "# Exercises\n",
    "\n",
    "## Exercise 1: Variable Assignment Order\n",
    "\n",
    "What is the final value of result after running the code below? Write your answer, then uncomment and run the code to check.\n",
    "\n",
    "```\n",
    "# Write your prediction here: ___________\n",
    "\n",
    "# result <- 100\n",
    "# result <- 50\n",
    "# result <- 75\n",
    "# result\n",
    "```\n",
    "\n",
    "## Solution\n",
    "\n",
    "```\n",
    "# The final value is 75 (the last assignment)\n",
    "result <- 100\n",
    "result <- 50\n",
    "result <- 75\n",
    "result  # 75\n",
    "```\n",
    "\n",
    "## Exercise 2: Using Variables in Calculations\n",
    "\n",
    "Create variables for length and width, then calculate the area of a rectangle. Replace the placeholders with your code.\n",
    "\n",
    "```\n",
    "# Assign length as 12 and width as 8\n",
    "# Then calculate area (length × width)\n",
    "\n",
    "# Your code here:\n",
    "# length <- \n",
    "# width <- \n",
    "# area <- \n",
    "# area\n",
    "```\n",
    "\n",
    "## Solution \n",
    "```\n",
    "length <- 12\n",
    "width <- 8\n",
    "area <- length * width\n",
    "area  # 96\n",
    "```\n",
    "\n",
    "## Exercise 3: Temperature Conversion\n",
    "\n",
    "Convert 100°F to Celsius using the formula: `°C = (°F - 32) × 5/9`\n",
    "\n",
    "```\n",
    "# Store 100°F in a variable called fahrenheit\n",
    "# Calculate celsius and store it in a variable\n",
    "# Display the celsius value\n",
    "\n",
    "# Your code here:\n",
    "```\n",
    "\n",
    "## Solution\n",
    "```\n",
    "fahrenheit <- 100\n",
    "celsius <- (fahrenheit - 32) * 5/9\n",
    "celsius  # 37.77778\n",
    "```\n",
    "\n",
    "## Exercise 4: Understanding Assignment Operators\n",
    "\n",
    "Predict what will happen when you run the code below. Then uncomment and run to check.\n",
    "\n",
    "```\n",
    "\n",
    "# Prediction: Will 'digits' exist after this code runs?\n",
    "# Why or why not?\n",
    "\n",
    "# round(42.987, digits = 2)\n",
    "\n",
    "# Check if 'digits' exists (uncomment to test)\n",
    "# digits\n",
    "```\n",
    "\n",
    "## Solution \n",
    "```\n",
    "# digits will NOT exist because = inside function arguments\n",
    "# does NOT create variables\n",
    "round(42.987, digits = 2)\n",
    "# digits  # Would give error: object 'digits' not found\n",
    "```\n",
    "\n",
    "## Exercise 5: Creating a Shopping Total\n",
    "\n",
    "Create variables for different items and their prices, then calculate the total cost including 8% tax.\n",
    "\n",
    "```\n",
    "# Item prices:\n",
    "# Apples: $3.50\n",
    "# Bananas: $2.00\n",
    "# Oranges: $4.00\n",
    "# Bread: $5.50\n",
    "\n",
    "# Calculate subtotal, tax, and total\n",
    "# Tax rate is 8% (0.08)\n",
    "```\n",
    "\n",
    "## Solution\n",
    "```\n",
    "apples <- 3.50\n",
    "bananas <- 2.00\n",
    "oranges <- 4.00\n",
    "bread <- 5.50\n",
    "\n",
    "subtotal <- apples + bananas + oranges + bread\n",
    "tax <- subtotal * 0.08\n",
    "total <- subtotal + tax\n",
    "\n",
    "total  # $16.20\n",
    "```\n",
    "\n",
    "## Exercise 6: Swapping Variables\n",
    "\n",
    "Swap the values of two variables without directly reassigning them to their opposite values.\n",
    "\n",
    "```\n",
    "a <- 10\n",
    "b <- 20\n",
    "# Write code to swap the values so a becomes 20 and b becomes 10\n",
    "# Hint: Use a temporary variable\n",
    "\n",
    "# Your solution here:\n",
    "```\n",
    "\n",
    "## Solution\n",
    "```\n",
    "a <- 10\n",
    "b <- 20\n",
    "\n",
    "# Swap using temporary variable\n",
    "temp <- a\n",
    "a <- b\n",
    "b <- temp\n",
    "\n",
    "a  # 20\n",
    "b  # 10\n",
    "```\n",
    "\n",
    "## Exercise 7\n",
    "\n",
    "Install the `tidyverse` package, then load it and explain what you get.\n",
    "\n",
    "*Hint: The `tidyverse` is actually a collection of multiple packages designed for data science. Use `install.packages()` to install it, then `library(tidyverse)` to load it. After loading, look at the message that appears in the console.*\n",
    "\n",
    "```{\n",
    "# Write your code here\n",
    "```\n",
    "\n",
    "1. How many packages are loaded when you run library(tidyverse)?\n",
    "\n",
    "2. List at least 5 of the core packages included in the tidyverse.\n",
    "\n",
    "3. What is the main purpose of the tidyverse?\n",
    "\n",
    "## Solution\n",
    "\n",
    "```\n",
    "# Install and load tidyverse\n",
    "install.packages(\"tidyverse\")\n",
    "library(tidyverse)\n",
    "\n",
    "# Question 1 Answer:\n",
    "# 8 packages (ggplot2, dplyr, tidyr, readr, purrr, tibble, stringr, forcats)\n",
    "\n",
    "# Question 2 Answer:\n",
    "# ggplot2 (visualization), dplyr (manipulation), tidyr (tidying), \n",
    "# readr (import), purrr (functional programming)\n",
    "\n",
    "# Question 3 Answer:\n",
    "# The tidyverse provides a consistent and efficient set of tools for \n",
    "# the entire data science workflow from importing to visualizing data.\n",
    "```"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "67d04f1d",
   "metadata": {
    "papermill": {
     "duration": 0.008539,
     "end_time": "2026-05-04T15:21:36.815364",
     "exception": false,
     "start_time": "2026-05-04T15:21:36.806825",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Variables Can Be Reassigned**\n",
    "\n",
    "A variable always holds its most recent value. When you assign a new value, the old one is replaced:"
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [],
   "dockerImageVersionId": 31330,
   "isGpuEnabled": false,
   "isInternetEnabled": false,
   "language": "r",
   "sourceType": "notebook"
  },
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
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 4.142476,
   "end_time": "2026-05-04T15:21:36.949657",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2026-05-04T15:21:32.807181",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
