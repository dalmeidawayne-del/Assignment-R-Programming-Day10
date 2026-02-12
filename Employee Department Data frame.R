
#WAP in to create folowing data frame 

#Department:-deptid (1,2,3),deptname("hr","sales","admin")

#Employees:-empId,empname,salary,deptid 

#Display employees details with their department detail
#Display employees who is working in hr department
#Display department wise sum in salary

# To  Create Department data frame
Department <- data.frame(
  deptid = c(1, 2, 3),
  deptname = c("hr", "sales", "admin")
)

# To Create Employees data frame
Employees <- data.frame(
  empId = c(101, 102, 103, 104, 105),
  empname = c("Amit", "Neha", "Raj", "Simran", "John"),
  salary = c(30000, 45000, 40000, 35000, 50000),
  deptid = c(1, 2, 1, 3, 2)
)
 #1. ToDisplay employees with department details (JOIN)

Empdept <- merge(Employees, Department, by = "deptid")
print(paste("Employees with Department Details:\n"))
print(Empdept)

# To Display employees working in HR department

# Display employees working in HR department
HREmp <- subset(Empdept, deptname == "hr")

print(paste("Employees working in HR Department:\n"))

# To Diplay the  sum ofSalaryDepartment-wise 

DeptSalSum <- aggregate(salary ~ deptname, data = Empdept, sum)
print(paste("Employees working in HR Department:\n"))

print(DeptSalSum)
