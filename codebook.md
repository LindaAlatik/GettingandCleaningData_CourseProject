A subset of the features in the dataset 'getdata_projectfiles_UCI HAR Dataset' was used in this analysis. This subset consists of the mean and standard deviation (std) of measurements. The signals used to estimate the mean and standard deviation are:

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

where '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Using the mean and standard deviation variables, the mean of these variables was computed for each subject and each activity. The columns of the 'dataout.txt' dataset are:
1	subject
2	activity
3	tbodyacc_mean_x
4	tbodyacc_mean_y
5	tbodyacc_mean_z
6	tbodyacc_std_x
7	tbodyacc_std_y
8	tbodyacc_std_z
9	tgravityacc_mean_x
10	tgravityacc_mean_y
11	tgravityacc_mean_z
12	tgravityacc_std_x
13	tgravityacc_std_y
14	tgravityacc_std_z
15	tbodyaccjerk_mean_x
16	tbodyaccjerk_mean_y
17	tbodyaccjerk_mean_z
18	tbodyaccjerk_std_x
19	tbodyaccjerk_std_y
20	tbodyaccjerk_std_z
21	tbodygyro_mean_x
22	tbodygyro_mean_y
23	tbodygyro_mean_z
24	tbodygyro_std_x
25	tbodygyro_std_y
26	tbodygyro_std_z
27	tbodygyrojerk_mean_x
28	tbodygyrojerk_mean_y
29	tbodygyrojerk_mean_z
30	tbodygyrojerk_std_x
31	tbodygyrojerk_std_y
32	tbodygyrojerk_std_z
33	tbodyaccmag_mean
34	tbodyaccmag_std
35	tgravityaccmag_mean
36	tgravityaccmag_std
37	tbodyaccjerkmag_mean
38	tbodyaccjerkmag_std
39	tbodygyromag_mean
40	tbodygyromag_std
41	tbodygyrojerkmag_mean
42	tbodygyrojerkmag_std
43	fbodyacc_mean_x
44	fbodyacc_mean_y
45	fbodyacc_mean_z
46	fbodyacc_std_x
47	fbodyacc_std_y
48	fbodyacc_std_z
49	fbodyaccjerk_mean_x
50	fbodyaccjerk_mean_y
51	fbodyaccjerk_mean_z
52	fbodyaccjerk_std_x
53	fbodyaccjerk_std_y
54	fbodyaccjerk_std_z
55	fbodygyro_mean_x
56	fbodygyro_mean_y
57	fbodygyro_mean_z
58	fbodygyro_std_x
59	fbodygyro_std_y
60	fbodygyro_std_z
61	fbodyaccmag_mean
62	fbodyaccmag_std
63	fbodybodyaccjerkmag_mean
64	fbodybodyaccjerkmag_std
65	fbodybodygyromag_mean
66	fbodybodygyromag_std
67	fbodybodygyrojerkmag_mean
68	fbodybodygyrojerkmag_std
