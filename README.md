# Geospatial data analysis and visualization

## Goals

This content covers two weeks, where you will be introduced to working with spatial data in R. You will learn spatial data types, new packages to work with and analyze vector (`sf`) and raster (`terra`) data and visualize spatial data with new packages such as `tmap` and `mapview`.

We will also learn of some new R packages you can use to retrieve spatial data from different databases, such as the `rgbif` package which retrieves species occurrence data from the GBIF database and `soilDB` to retrieve snow depth data from SNOTEL sites around the U.S.

## Resources

Here are more resources on working with geospatial data in R:

\- [List of open-source geospatial datasets](https://libguides.mit.edu/gis/unitedstates)
\- [`sf` Documentation](https://r-spatial.github.io/sf/)
\- [`terra` Documentation](https://rspatial.github.io/terra/)
\- [`tmap` Documentation](https://r-tmap.github.io/tmap/)

## Material/Assignment

Since we cover Geospatial content for two weeks, you will have two separate assignments for each week as follows:


## Week 1: 

There are 2 required lesson plans for Week 1 that will count towards your assignment. Remember to first **Fork** this repository then **clone your forked repo**. Below are descriptions of each assignment with links to the associated video tutorials.  *Note that some of the `tmap` code in the videos has changed a bit in the lessons due to a big `tmap` package update this year.*

1.  **01_spatial_intro.Rmd** - Video: <https://youtu.be/lCUI-t6xx_8>
   - 2 Exercises at the end of the lesson plan (10 pts total).

3.  **02_spatial_analysis.Rmd** - Video: <https://youtu.be/kZsGTBXr4kE>
   - 6 Exercises throughout the lesson plan (10 pts total).

<br> To submit your assignment, remember to push all your file edits to GitHub and then submit a pull request by clicking 'Contribute' -\> 'Open a Pull Request' from the home page of your forked repo.

As a reminder, it is okay to submit the pull request before you've finished all assignments. Any new file changes pushed to GitHub after will just be appended to your existing pull request. For example, you can create the pull request for Week 1 material, and still push your assignment for Week 2 later.

#### Bonus Material

There is one more bonus lesson that is **not required** but may be worth your time (and extra credit..). Located in the 'bonus/' subfolder, you will find the following file:

-   **bonus/get_spatial_bonus.Rmd** : Worth up to 3 extra credit points if fully completed
    -   Video: <https://youtu.be/BWiaIWd9DTA>

## Week 2:

There is one lesson for Week 2: 1. **03_spatial_visualization.Rmd**

And one assignment: **The Map Challenge**.

You must create a new .Rmd with code to create a map that meets all of the critera below. In addition to the .Rmd with the code, you must also SAVE your map (png, jpeg, or pdf are all fine) and also push that saved map image to GitHub to include in your pull request.

### **Map Challenge! 20pts**

#### *Overview*

Put your spatial data visualization skills to the test! Create the most compelling, informative, or creative map using the techniques from this course, and meeting all of the requirements below.

#### *Requirements*

Your map must include:

1.  **At least two** spatial datasets. **At least ONE of these must be something we did not use in this week's lesson** (but they can be modifications of data we have used in the Geospatial lesson). You have been introduced to multiple packages in these lessons that you can retrieve spatial data from (tigris, elevatr, rgbif, soilDB) and there are many more. We also have a link in the Resources section with some additional geospatial databases. You can also search online for other spatial datasets, or use some from your own research! If there is a specific dataset you want to find, your instructors can help guide you to those resources. (8 pts)

2.  **A clear title** that describes what the map shows (2 pts)

3.  **A legend** (2 pts)

4.  The vital **cartographic elements**: (2 pts)

    -   Scale bar

    -   North arrow/compass

    -   Credits/data source
  
5. Must be a **static** map (i.e., do NOT submit an interactive map). You have learned how to create static maps in both `tmap` and `ggplot`, so choose your favorite method! (2 pts)
   
6. In addition to the .Rmd with the code used to import data and make the map, you must also include a saved image of your map (png, jpeg, or pdf) in your pull request. The easiest way to do so is to use the R Studio Export tool in the Plots pane (where you view the plot), or you can use functions like `ggsave()` and `tmap_save`, depending on what package you used to make your static map. (4 pts)


#### Creativity Encouraged!

Think beyond the examples in class. Consider:

-   Unusual color palettes or styling

-   Combining unexpected datasets

-   Telling a story with your map

-   Highlighting an interesting spatial pattern

-   Creating a map that answers a specific question

