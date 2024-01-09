--Select Sum(total_payment) as Total_Payment_Amount
--From dbo.bank_loan_data


--Select Count(id) as Mtd_Total_Loan_Applications
--From dbo.bank_loan_data
--Where Month(issue_date)=12 and Year(issue_date)=2021

--Select Count(id) as PMTD_Total_Loan_Applications
--From dbo.bank_loan_data
--Where Month(issue_date)=11 and Year(issue_date)=2021

--Select Sum(loan_amount)as MTD_Total_Loan
--From dbo.bank_loan_data
--Where Month(issue_date)=12 and Year(issue_date)=2021

--Select Sum(loan_amount)as PMTD_Total_Loan
--From dbo.bank_loan_data
--Where Month(issue_date)=11 and Year(issue_date)=2021


--Select Sum(total_payment)as PMTD_Total_Payment
--From dbo.bank_loan_data
--Where Month(issue_date)=11 and Year(issue_date)=2021

--Select Sum(total_payment)as MTD_Total_Payment
--From dbo.bank_loan_data
--Where Month(issue_date)=12 and Year(issue_date)=2021


--Select Round(AVG(int_rate)*100,2) AS Avg_Interest_rate
--From dbo.bank_loan_data

--Select Count(loan_status) as Good_Loan_Applicants
--FRom dbo.bank_loan_data
--Where loan_status= 'Fully Paid' or loan_status='Current' 

--Select Cast(Round(Count(Case When loan_status= 'Fully Paid' or loan_status='Current' Then id End) *100
--/
--count(id),0) as nvarchar(5)) + '%' as Good_Loan_Percentage

--From dbo.bank_loan_data




--Select Sum(loan_amount) as Good_Loan_Funded
--From dbo.bank_loan_data
--Where loan_status= 'Fully Paid' or loan_status='Current'

--Select Sum(total_payment) as Good_Loan_Funded
--From dbo.bank_loan_data
--Where loan_status= 'Fully Paid' or loan_status='Current'


--Select Count(loan_status) as Bad_Loan_Applicants
--FRom dbo.bank_loan_data
--Where loan_status= 'Charged Off'

--Select Cast(Round(Count(Case When loan_status= 'Fully Paid' or loan_status='Current' Then id End) *100
--/
--count(id),0) as nvarchar(5)) + '%' as Good_Loan_Percentage

--From dbo.bank_loan_data 



--Select Sum(total_payment) as Good_Loan_Funded
--From dbo.bank_loan_data
--Where loan_status= 'Fully Paid' or loan_status='Current'


--Select Cast(Round(Count(Case When loan_status= 'Charged Off' Then id End) *100
--/
--count(id),0) as nvarchar(5)) + '%' as Good_Loan_Percentage

--From dbo.bank_loan_data 


--Select (Count(Case When loan_status = 'Charged off' Then id End)*100.0) /
--           Count(id) as Bad_Loan_Percentage
--From dbo.bank_loan_data

--Select Sum(loan_amount) as Bad_Loan_Funded
--From dbo.bank_loan_data
--Where loan_status= 'Charged off'


--Select Sum(total_payment) as Bad_Loan_Funded
--From dbo.bank_loan_data
--Where loan_status= 'Charged off'

--Select Month(issue_date)as Month_Number,
--DATENAME(Month,issue_date)as Month_Name,
--Count(id) as Total_Loan_Applications,
--Sum(loan_amount)as Total_Loan_Amount,
--Sum(total_payment) as Total_Payment_Amount
--from dbo.bank_loan_data
--GROUP BY Month(issue_date), DATENAME(Month,issue_date)
--order by 1

--Select address_state as Address_State,
--Count(id) as Total_Loan_Applications,
--Sum(loan_amount)as Total_Funded_Amount,
--Sum(total_payment) as Total_Received_Amount
--from dbo.bank_loan_data
--GROUP BY address_state
--order by Total_Loan_Applications desc

--Select term as Term,
--Count(id) as Total_Loan_Applications,
--Sum(loan_amount)as Total_Funded_Amount,
--Sum(total_payment) as Total_Received_Amount
--from dbo.bank_loan_data
--GROUP BY term
--order by 1


--Select emp_length as Emp_Length,
--Count(id) as Total_Loan_Applications,
--Sum(loan_amount)as Total_Funded_Amount,
--Sum(total_payment) as Total_Received_Amount
--from dbo.bank_loan_data
--GROUP BY emp_length
--order by emp_length

                                                      Purpose
Select purpose as Purpose,
Count(id) as Total_Loan_Applications,
Sum(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_Received_Amount
from dbo.bank_loan_data
GROUP BY purpose
order by Total_Loan_Applications desc

                                       home_ownership
Select home_ownership as Home_Ownership,
Count(id) as Total_Loan_Applications,
Sum(loan_amount)as Total_Funded_Amount,
Sum(total_payment) as Total_Received_Amount
from dbo.bank_loan_data
GROUP BY home_ownership
order by Total_Loan_Applications desc











