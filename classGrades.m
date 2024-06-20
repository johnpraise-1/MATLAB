% question 8 :manipulating Variables
load classGrades.mat% load the grades
namesAndGrades(1:5,:)% the first 5 rows
grades=namesAndGrades(:,2:end); % get only the grades out
meanGrades=mean(grades);% calculate the mean of each
meanGrades% show the meanGrades
meanGrades=nanmean(grades)% calculate nanmean grades
meanMatrix=ones(size(grades,1),1)*meanGrades % compress the range so the mean is 3.5
curvedGrades=(grades./meanMatrix)*3.5;
nanmean(curvedGrades)
curvedGrades(find(curvedGrades>5))=5;% calculates the total grade for each student
totalGrade=ceil(nanmean(curvedGrades,2));
letters='FDCBA';
letterGrades=letters(totalGrade);
disp(['Grades:' letterGrades]);