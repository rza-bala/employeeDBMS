USE employeeDB_dev;

INSERT INTO Department VALUES 
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Sales'),
(6, 'Research and Development'),
(7, 'Customer Service'),
(8, 'Product Management'),
(9, 'Operations'),
(10, 'Legal');

INSERT INTO Position VALUES 
(1, 'Software Engineer'),
(2, 'HR Manager'),
(3, 'Accountant'),
(4, 'Marketing Director'),
(5, 'Sales Representative'),
(6, 'Research Analyst'),
(7, 'Customer Service Rep'),
(8, 'Product Manager'),
(9, 'Operations Manager'),
(10, 'Legal Advisor');

INSERT INTO Project VALUES 
(1, 3, 'Data Migration', 'Migrating data to a new system', '2021-01-01', '2021-06-30'),
(2, 2, 'Annual Budget', 'Preparing annual financial statements', '2021-02-01', NULL),
(3, 4, 'Market Research', 'Conducting comprehensive market research', '2021-03-01', '2021-09-30'),
(4, 5, 'Sales Strategy', 'Developing a new sales strategy', '2021-04-01', '2021-10-31'),
(5, 6, 'New Product Research', 'Research for new product development', '2021-05-01', '2021-11-30'),
(6, 1, 'Employee Training Program', 'Implementing a new training program', '2021-06-01', NULL),
(7, 7, 'Customer Feedback Analysis', 'Analyzing customer feedback', '2021-07-01', '2021-12-31'),
(8, 8, 'Product Launch', 'Launching a new product', '2021-08-01', NULL),
(9, 9, 'Supply Chain Optimization', 'Optimizing the supply chain process', '2021-09-01', '2022-01-31'),
(10, 10, 'Legal Compliance Review', 'Reviewing legal compliance issues', '2021-10-01', '2022-02-28');

INSERT INTO Employee VALUES 
(1, 'John', 'Doe', '1990-05-15', 'M', 'john.doe@example.com', '1234567890', '123 Main St', 'Springfield', 'IL', '62701', 3, 1, '2020-06-01', 75000.00, 1),
(2, 'Jane', 'Smith', '1985-08-20', 'F', 'jane.smith@example.com', '0987654321', '456 Elm St', 'Springfield', 'IL', '62702', 1, 2, '2019-04-01', 65000.00, NULL),
(3, 'Alice', 'Johnson', '1988-09-12', 'F', 'alice.johnson@example.com', '1234567891', '789 Pine St', 'Oakland', 'CA', '94612', 2, 3, '2018-03-15', 80000.00, 2),
(4, 'Michael', 'Brown', '1992-11-08', 'M', 'michael.brown@example.com', '1234567892', '321 Oak St', 'Chicago', 'IL', '60614', 4, 4, '2017-08-01', 85000.00, 3),
(5, 'Emily', 'Davis', '1990-01-26', 'F', 'emily.davis@example.com', '1234567893', '654 Maple Ave', 'Houston', 'TX', '77005', 5, 5, '2019-11-20', 70000.00, 4),
(6, 'David', 'Wilson', '1986-04-17', 'M', 'david.wilson@example.com', '1234567894', '987 Cedar Rd', 'Atlanta', 'GA', '30329', 6, 6, '2020-01-10', 65000.00, 5),
(7, 'Sophia', 'Martinez', '1993-07-30', 'F', 'sophia.martinez@example.com', '1234567895', '213 Birch Ln', 'Denver', 'CO', '80220', 7, 7, '2018-06-22', 72000.00, 6),
(8, 'James', 'Anderson', '1989-02-14', 'M', 'james.anderson@example.com', '1234567896', '456 Spruce St', 'Seattle', 'WA', '98101', 8, 8, '2016-12-01', 78000.00, 7),
(9, 'Isabella', 'Thomas', '1994-05-19', 'F', 'isabella.thomas@example.com', '1234567897', '789 Elm St', 'San Francisco', 'CA', '94102', 9, 9, '2020-07-15', 82000.00, 8),
(10, 'Christopher', 'Jackson', '1985-10-24', 'M', 'christopher.jackson@example.com', '1234567898', '321 Pine St', 'New York', 'NY', '10001', 10, 10, '2015-05-01', 90000.00, 9),
(11, 'Emma', 'White', '1992-03-17', 'F', 'emma.white@example.com', '1234567899', '654 Oak Ave', 'Los Angeles', 'CA', '90001', 1, 1, '2019-02-20', 68000.00, 10);

INSERT INTO Task VALUES 
(1, 1, 'Database Optimization', '2021-07-15', FALSE),
(2, 2, 'Recruitment Plan 2021', '2021-06-30', TRUE),
(3, 3, 'Annual Report Preparation', '2021-08-31', FALSE),
(4, 4, 'Marketing Campaign for Q3', '2021-09-15', TRUE),
(5, 5, 'Sales Data Analysis for Q2', '2021-07-20', FALSE),
(6, 6, 'Product Prototype Development', '2021-10-05', TRUE),
(7, 7, 'Customer Satisfaction Survey', '2021-11-10', FALSE),
(8, 8, 'Product Launch Planning', '2021-12-01', TRUE),
(9, 9, 'Inventory Audit', '2021-09-30', FALSE),
(10, 10, 'Legal Documentation Update', '2021-10-15', TRUE),
(11, 11, 'Employee Onboarding Process', '2021-08-20', FALSE),
(12, 2, 'Recruitment Interviews', '2021-07-25', TRUE);

INSERT INTO Attendance VALUES 
(1, 1, '2021-03-01', '08:00:00', '17:00:00'),
(2, 2, '2021-03-01', '09:00:00', '18:00:00'),
(3, 3, '2021-03-02', '08:30:00', '17:30:00'),
(4, 4, '2021-03-02', '09:15:00', '18:15:00'),
(5, 5, '2021-03-03', '08:00:00', '17:00:00'),
(6, 6, '2021-03-03', '08:45:00', '17:45:00'),
(7, 7, '2021-03-04', '09:00:00', '18:00:00'),
(8, 8, '2021-03-04', '08:30:00', '17:30:00'),
(9, 9, '2021-03-05', '09:15:00', '18:15:00'),
(10, 10, '2021-03-05', '08:00:00', '17:00:00'),
(11, 1, '2021-03-06', '08:45:00', '17:45:00'),
(12, 2, '2021-03-06', '09:00:00', '18:00:00');

INSERT INTO EmployeeLeave VALUES 
(1, 2, '2021-07-01', '2021-07-15', 'Vacation'),
(2, 3, '2021-08-05', '2021-08-12', 'Sick Leave'),
(3, 4, '2021-12-20', '2022-01-03', 'Vacation'),
(4, 5, '2021-09-15', '2021-09-22', 'Sick Leave'),
(5, 6, '2021-11-01', '2021-11-08', 'Personal Leave'),
(6, 7, '2021-07-03', '2021-07-10', 'Vacation'),
(7, 8, '2021-04-12', '2021-04-19', 'Vacation'),
(8, 9, '2021-10-05', '2021-10-12', 'Sick Leave'),
(9, 10, '2021-06-07', '2021-06-14', 'Personal Leave'),
(10, 1, '2021-05-20', '2021-05-27', 'Vacation'),
(11, 2, '2021-08-23', '2021-08-30', 'Personal Leave');

INSERT INTO Training VALUES 
(1, 1, 'SQL Advanced Course', '2021-08-01', FALSE),
(2, 2, 'Leadership Skills Workshop', '2021-09-01', TRUE),
(3, 3, 'Financial Reporting Standards', '2021-07-15', FALSE),
(4, 4, 'Digital Marketing Trends', '2021-08-20', TRUE),
(5, 5, 'Advanced Sales Techniques', '2021-10-10', FALSE),
(6, 6, 'Innovative Research Methods', '2021-11-05', TRUE),
(7, 7, 'Customer Service Excellence', '2021-09-25', FALSE),
(8, 8, 'Effective Product Management', '2021-12-15', TRUE),
(9, 9, 'Supply Chain Management Fundamentals', '2021-08-30', FALSE),
(10, 10, 'Legal Compliance in Business', '2021-10-20', TRUE),
(11, 1, 'Team Building Activities', '2021-09-10', FALSE);

INSERT INTO PerformanceReview VALUES 
(1, 1, '2021-06-30', 'Jane Smith', 4, 'Excellent performance, but needs to work on communication skills.'),
(2, 2, '2021-07-15', 'Michael Brown', 3, 'Meets expectations, but can improve in client interactions.'),
(3, 3, '2021-08-20', 'Emily Davis', 5, 'Outstanding performance in financial management.'),
(4, 4, '2021-09-10', 'David Wilson', 4, 'Very good marketing strategies, needs to focus more on digital channels.'),
(5, 5, '2021-10-30', 'Sophia Martinez', 2, 'Sales targets not met, requires additional training.'),
(6, 6, '2021-11-25', 'James Anderson', 3, 'Satisfactory work, but lacks innovation in product design.'),
(7, 7, '2021-12-20', 'Isabella Thomas', 4, 'Great customer interaction, needs to improve reporting.'),
(8, 8, '2021-06-05', 'Christopher Jackson', 5, 'Excellent project management and team leadership.'),
(9, 9, '2021-05-15', 'Emma White', 3, 'Good performance, however, needs to work on time management.'),
(10, 10, '2021-04-22', 'John Doe', 4, 'Consistently meets legal requirements with high professionalism.'),
(11, 1, '2021-03-30', 'Jane Smith', 5, 'Exceptional HR management and employee engagement.');

INSERT INTO Benefits VALUES 
(1, 1, 'Health Insurance', '2020-06-01', '2021-06-01'),
(2, 2, 'Dental Insurance', '2019-04-01', '2020-04-01'),
(3, 3, 'Life Insurance', '2018-03-15', '2021-03-15'),
(4, 4, 'Health Insurance', '2017-08-01', '2022-08-01'),
(5, 5, 'Retirement Plan', '2019-11-20', '2029-11-20'),
(6, 6, 'Vision Insurance', '2020-01-10', '2021-01-10'),
(7, 7, 'Health Insurance', '2018-06-22', '2023-06-22'),
(8, 8, 'Dental Insurance', '2016-12-01', '2021-12-01'),
(9, 9, 'Life Insurance', '2020-07-15', '2025-07-15'),
(10, 10, 'Retirement Plan', '2015-05-01', '2035-05-01'),
(11, 1, 'Vision Insurance', '2019-02-20', '2024-02-20');

INSERT INTO EmployeeDocument VALUES 
(1, 1, 'Employment Contract', 'Contract', '2020-06-01', '/path/to/document'),
(2, 2, 'Employee Handbook', 'Handbook', '2019-04-01', '/documents/employee_handbook_2.pdf'),
(3, 3, 'Non-Disclosure Agreement', 'Contract', '2018-03-15', '/documents/nda_3.pdf'),
(4, 4, 'Insurance Form', 'Form', '2017-08-01', '/documents/insurance_form_4.pdf'),
(5, 5, 'Sales Report', 'Report', '2019-11-20', '/documents/sales_report_5.pdf'),
(6, 6, 'Research Paper', 'Research', '2020-01-10', '/documents/research_paper_6.pdf'),
(7, 7, 'Customer Feedback', 'Feedback', '2018-06-22', '/documents/customer_feedback_7.pdf'),
(8, 8, 'Product Specifications', 'Specs', '2016-12-01', '/documents/product_specs_8.pdf'),
(9, 9, 'Inventory List', 'Inventory', '2020-07-15', '/documents/inventory_list_9.pdf'),
(10, 10, 'Legal Compliance Checklist', 'Checklist', '2015-05-01', '/documents/compliance_checklist_10.pdf'),
(11, 1, 'Training Certificate', 'Certificate', '2019-02-20', '/documents/training_cert_1.pdf');

