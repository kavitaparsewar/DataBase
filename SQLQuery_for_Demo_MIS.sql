create database DemoMIS;

use DemoMIS;

CREATE TABLE fellowship_candidates (
  id int NOT NULL,
  first_name varchar(100) NOT NULL,
  middle_name varchar(100) DEFAULT NULL,
  last_name varchar(100) NOT NULL,
  email varchar(50) NOT NULL,
  mobile_num bigint NOT NULL,
  hired_city varchar(50) NOT NULL,
  hired_date datetime NOT NULL,
  degree varchar(50) NOT NULL,
  aggr_per float  NULL,
  current_pincode int DEFAULT NULL,
  permanent_pincode int DEFAULT NULL,
  hired_lab varchar(20) DEFAULT NULL,
  attitude_remark varchar(15) DEFAULT NULL,
  communication_remark varchar(15) DEFAULT NULL,
  knowledge_remark varchar(15) DEFAULT NULL,
  birth_date date NOT NULL,
  is_birth_date_verified int  DEFAULT 0,
  parent_name varchar(50) DEFAULT NULL,
  parent_occupation varchar(100) NOT NULL,
  parent_mobile_num bigint NOT NULL,
  parent_annual_sal float  NULL,
  local_addr varchar(255) NOT NULL,
  permanent_addr varchar(150) DEFAULT NULL,
  photo_path varchar(500) DEFAULT NULL,
  joining_date date DEFAULT NULL,
  candidate_status varchar(20) NOT NULL,
  personal_info_filled int  DEFAULT 0,
  bank_info_filled int  DEFAULT 0,
  educational_info_filled int  DEFAULT 0,
  doc_status varchar(20) DEFAULT NULL,
  remark varchar(150) DEFAULT NULL,
  creator_stamp datetime DEFAULT NULL,
  creator_user int DEFAULT NULL,
  PRIMARY KEY (id)
);


insert into fellowship_candidates values(1, 'deepak', 'Kiran', 'Patil', 'deepak.63584@gmail.com ', 8956748596,
 'Pune','2019-12-13','B.E', 75.25,5245,5478,'Mumbai', 'Good', 'Good', 'Good', '1999-12-13', 1, 'Kiran',
  'Farmer', 7584962547, 300000, 'Pune', 'Pune', 'photo_path', '2019-12-13', 'Good', 1, 1, 1, 'Correct',
   'Good', null, 1);


CREATE TABLE tblTemporary_MIS
(
Date_Time  DATE NOT NULL,
Cpu_Count int NOT NULL,
Cpu_Working_Time Decimal(11,3) NOT NULL,
Cpu_idle_Time Decimal(11,3) NOT NULL,
cpu_percent Decimal(11,3) NOT NULL,
Usage_cpu_count int NOT NULL,
number_of_software_interrupts_since_boot Decimal(11,3) NOT NULL,
number_of_system_calls_since_boot int NOT NULL,
number_of_interrupts_since_boot int NOT NULL,
cpu_avg_load_over_1_min Decimal(11,3) NOT NULL,
cpu_avg_load_over_5_min   Decimal(11,3) NOT NULL,
cpu_avg_load_over_15_min Decimal(11,3) NOT NULL,
system_total_memory BIGINT NOT NULL,
system_used_memory BIGINT NOT NULL,
system_free_memory BIGINT NOT NULL,
system_active_memory BIGINT NOT NULL,
system_inactive_memory BIGINT NOT NULL,
system_buffers_memory BIGINT  NOT NULL,
system_cached_memory BIGINT NOT NULL,
system_shared_memory BIGINT NOT NULL,
system_avalible_memory BIGINT NOT NULL,
disk_total_memory BIGINT NOT NULL,
disk_used_memory BIGINT NOT NULL,
disk_free_memory BIGINT NOT NULL,
disk_read_count BIGINT NOT NULL,
disk_write_count BIGINT NOT NULL,
disk_read_bytes BIGINT NOT NULL,
disk_write_bytes BIGINT NOT NULL,
time_spent_reading_from_disk BIGINT NOT NULL,
time_spent_writing_to_disk BIGINT NOT NULL,
time_spent_doing_actual_Input_Output BIGINT NOT NULL,
number_of_bytes_sent BIGINT NOT NULL,
number_of_bytes_received BIGINT NOT NULL,
number_of_packets_sent BIGINT NOT NULL,
number_of_packets_recived BIGINT NOT NULL,
total_number_of_errors_while_receiving BIGINT NOT NULL,
total_number_of_errors_while_sending BIGINT NOT NULL,
total_number_of_incoming_packets_which_were_dropped BIGINT NOT NULL,
total_number_of_outgoing_packets_which_were_dropped BIGINT NOT NULL,
boot_time varchar(100) NOT NULL,
user_name varchar(50) NOT NULL,
keyboard int NOT NULL,
mouse int NOT NULL,
technology varchar(100) NOT NULL,
files_changed int NOT NULL,
PRIMARY KEY (user_name)
);


select * from tblTemporary_MIS;


BULK INSERT dbo.tblTemporary_MIS
FROM 'C:\Users\lenovo\Downloads\LMSDB\CpuLogData1.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
)
GO


CREATE TABLE user_engagement_MIS(
id int NOT NULL Identity,
candidate_id int NOT NULL,
Date_Time  DATE NOT NULL,
Cpu_Count int NOT NULL,
Cpu_Working_Time Decimal(11,3) NOT NULL,
Cpu_idle_Time Decimal(11,3) NOT NULL,
cpu_percent Decimal(11,3) NOT NULL,
Usage_cpu_count int NOT NULL,
number_of_software_interrupts_since_boot Decimal(11,3) NOT NULL,
number_of_system_calls_since_boot int NOT NULL,
number_of_interrupts_since_boot int NOT NULL,
cpu_avg_load_over_1_min Decimal(11,3) NOT NULL,
cpu_avg_load_over_5_min   Decimal(11,3) NOT NULL,
cpu_avg_load_over_15_min Decimal(11,3) NOT NULL,
system_total_memory BIGINT NOT NULL,
system_used_memory BIGINT NOT NULL,
system_free_memory BIGINT NOT NULL,
system_active_memory BIGINT NOT NULL,
system_inactive_memory BIGINT NOT NULL,
system_buffers_memory BIGINT NOT NULL,
system_cached_memory BIGINT NOT NULL,
system_shared_memory BIGINT NOT NULL,
system_avalible_memory BIGINT NOT NULL,
disk_total_memory BIGINT NOT NULL,
disk_used_memory BIGINT NOT NULL,
disk_free_memory BIGINT NOT NULL,
disk_read_count BIGINT NOT NULL,
disk_write_count BIGINT NOT NULL,
disk_read_bytes BIGINT NOT NULL,
disk_write_bytes BIGINT NOT NULL,
time_spent_reading_from_disk BIGINT NOT NULL,
time_spent_writing_to_disk BIGINT NOT NULL,
time_spent_doing_actual_Input_Output BIGINT NOT NULL,
number_of_bytes_sent BIGINT NOT NULL,
number_of_bytes_received BIGINT NOT NULL,
number_of_packets_sent BIGINT NOT NULL,
number_of_packets_recived BIGINT NOT NULL,
total_number_of_errors_while_receiving BIGINT NOT NULL,
total_number_of_errors_while_sending BIGINT NOT NULL,
total_number_of_incoming_packets_which_were_dropped BIGINT NOT NULL,
total_number_of_outgoing_packets_which_were_dropped BIGINT NOT NULL,
boot_time varchar(100) NOT NULL,
keyboard int NOT NULL,
mouse int NOT NULL,
technology varchar(100) NOT NULL,
files_changed int NOT NULL,
CONSTRAINT FK_user_engagemnt_mis_candidate_id FOREIGN KEY (candidate_id) REFERENCES fellowship_candidates (id),
PRIMARY KEY (id)
);



select * from user_engagement_MIS;
select count(*) from tblTemporary_MIS where USER_NAME='deepak.63584@gmail.com ';


select * from fellowship_candidates;


Insert into User_engagement_MIS(candidate_id,Date_Time,Cpu_Count,Cpu_Working_Time,Cpu_idle_Time,cpu_percent
,Usage_cpu_count,number_of_software_interrupts_since_boot,number_of_system_calls_since_boot,number_of_interrupts_since_boot,
cpu_avg_load_over_1_min,cpu_avg_load_over_5_min,cpu_avg_load_over_15_min,system_total_memory,system_used_memory,
system_free_memory,system_active_memory,system_inactive_memory,system_buffers_memory,system_cached_memory,system_shared_memory,
system_avalible_memory,disk_total_memory,disk_used_memory,disk_free_memory,disk_read_count,disk_write_count,disk_read_bytes,disk_write_bytes,
time_spent_reading_from_disk,time_spent_writing_to_disk,time_spent_doing_actual_Input_Output,number_of_bytes_sent,number_of_bytes_received,
number_of_packets_sent,number_of_packets_recived,total_number_of_errors_while_sending,total_number_of_errors_while_receiving,total_number_of_incoming_packets_which_were_dropped
,total_number_of_outgoing_packets_which_were_dropped,boot_time,keyboard,mouse,technology,files_changed)
Select id as candidate_id,Date_Time,Cpu_Count,Cpu_Working_Time,Cpu_idle_Time,cpu_percent
,Usage_cpu_count,number_of_software_interrupts_since_boot,number_of_system_calls_since_boot,number_of_interrupts_since_boot,
cpu_avg_load_over_1_min,cpu_avg_load_over_5_min,cpu_avg_load_over_15_min,system_total_memory,system_used_memory,
system_free_memory,system_active_memory,system_inactive_memory,system_buffers_memory,system_cached_memory,system_shared_memory,
system_avalible_memory,disk_total_memory,disk_used_memory,disk_free_memory,disk_read_count,disk_write_count,disk_read_bytes,disk_write_bytes,
time_spent_reading_from_disk,time_spent_writing_to_disk,time_spent_doing_actual_I_Os,number_of_bytes_sent,number_of_bytes_received,
number_of_packets_sent,number_of_packets_recived,total_number_of_errors_while_sending,total_number_of_errors_while_receiving,total_number_of_incoming_packets_which_were_dropped
,total_number_of_outgoing_packets_which_were_dropped,boot_time,keyboard,mouse,technology,files_changed from fellowship_candidates
Left join tblTemporary_MIS
On fellowship_candidates.email=tblTemporary_MIS.user_name;


select * from tblTemporary_MIS


update user_engagement_MIS set Date_Time=GETDATE() where id=1;


update user_engagement_MIS set Date_Time=GETDATE()-1 where id=2;

update user_engagement_MIS set Date_Time=GETDATE()-2 where id=3;

update user_engagement_MIS set Date_Time=GETDATE()-3 where id=4;

update user_engagement_MIS set Date_Time=GETDATE()-4 where id=5;


select * from user_engagement_MIS;


Create Partition Function Pt_DatePartition_fun (DATETIME)
as 
range Right for values
(
  '2019-11-17','2022-02-12','2022-02-13','2022-02-14','2022-02-15','2022-02-16'
);



Alter database DemoMIS
Add FileGroup Date1
Go

Alter database DemoMIS
Add FileGroup Date2
Go

Alter database DemoMIS
Add FileGroup Date3
Go

Alter database DemoMIS
Add FileGroup Date4
Go

Alter database DemoMIS
Add FileGroup Date5
Go

Alter database DemoMIS
Add FileGroup Date6
Go

Alter database DemoMIS
Add FileGroup Date7
Go

Alter database DemoMIS
Add FileGroup Date8
Go

Alter database DemoMIS
Add FileGroup Date9
Go

Alter database DemoMIS
Add FileGroup Date10
Go

Alter database DemoMIS
Add FileGroup Date11
Go

Alter database DemoMIS
Add FileGroup Date12
Go

Alter database DemoMIS
Add FileGroup Date13
Go

Alter database DemoMIS
Add FileGroup Date14
Go

Alter database DemoMIS
Add FileGroup Date15
Go

Alter database DemoMIS
Add FileGroup Date16
Go

Alter database DemoMIS
Add FileGroup Date17
Go

Alter database DemoMIS
Add FileGroup Date18
Go

Alter database DemoMIS
Add FileGroup Date19
Go

Alter database DemoMIS
Add FileGroup Date20
Go

Alter database DemoMIS
Add FileGroup Date21
Go

Alter database DemoMIS
Add FileGroup Date22
Go

Alter database DemoMIS
Add FileGroup Date23
Go

Alter database DemoMIS
Add FileGroup Date24
Go

Alter database DemoMIS
Add FileGroup Date25
Go

Alter database DemoMIS
Add FileGroup Date26
Go

Alter database DemoMIS
Add FileGroup Date27
Go

Alter database DemoMIS
Add FileGroup Date28
Go

Alter database DemoMIS
Add FileGroup Date29
Go

Alter database DemoMIS
Add FileGroup Date30
Go


select * from sys.filegroups;


create Partition Scheme Pt_DatewisePartition_Scheme
As
Partition Pt_DatePartition_fun
To
(
  Date1,Date2,Date3,Date4,Date5,Date6,Date7,Date8,Date9,Date10,Date11,Date12,Date13,Date14,Date15,Date16,Date17,Date18
  ,Date19,Date20,Date21,Date22,Date23,Date24,Date25,Date26,Date27,Date28,Date29,Date30
)


Alter database DemoMIS
Add File
(
  Name=PartDate7,
  FileName='C:\Users\lenovo\Downloads\LMSDB\PartDate7.ndf',
  Size=1024 KB,
  MaxSize=UNLIMITED,
  FileGrowth=200KB
)
To FileGroup Date7
Go

Alter database DemoMIS
Add File
(
  Name=PartDate6,
  FileName='C:\Users\lenovo\Downloads\LMSDB\PartDate6.ndf',
  Size=1024 KB,
  MaxSize=UNLIMITED,
  FileGrowth=200KB
)
To FileGroup Date6
Go

Alter database DemoMIS
Add File
(
  Name=PartDate5,
  FileName='C:\Users\lenovo\Downloads\LMSDB\PartDate5.ndf',
  Size=1024 KB,
  MaxSize=UNLIMITED,
  FileGrowth=200KB
)
To FileGroup Date5
Go

Alter database DemoMIS
Add File
(
  Name=PartDate4,
  FileName='C:\Users\lenovo\Downloads\LMSDB\PartDate4.ndf',
  Size=1024 KB,
  MaxSize=UNLIMITED,
  FileGrowth=200KB
)
To FileGroup Date4
Go

Alter database DemoMIS
Add File
(
  Name=PartDate3,
  FileName='C:\Users\lenovo\Downloads\LMSDB\PartDate3.ndf',
  Size=1024 KB,
  MaxSize=UNLIMITED,
  FileGrowth=200KB
)
To FileGroup Date3
Go

Alter database DemoMIS
Add File
(
  Name=PartDate2,
  FileName='C:\Users\lenovo\Downloads\LMSDB\PartDate2.ndf',
  Size=1024 KB,
  MaxSize=UNLIMITED,
  FileGrowth=200KB
)
To FileGroup Date2
Go

Alter database DemoMIS
Add File
(
  Name=PartDate1,
  FileName='C:\Users\lenovo\Downloads\LMSDB\PartDate1.ndf',
  Size=1024 KB,
  MaxSize=UNLIMITED,
  FileGrowth=200KB
)
To FileGroup Date1
Go



CREATE TABLE DatewisePartitionUser_engagement_MIS(
id int NOT NULL,
candidate_id int NOT NULL,
Date_Time  DATETIME NOT NULL,
Cpu_Count int NOT NULL,
Cpu_Working_Time Decimal(11,3) NOT NULL,
Cpu_idle_Time Decimal(11,3) NOT NULL,
cpu_percent Decimal(11,3) NOT NULL,
Usage_cpu_count int NOT NULL,
number_of_software_interrupts_since_boot Decimal(11,3) NOT NULL,
number_of_system_calls_since_boot int NOT NULL,
number_of_interrupts_since_boot int NOT NULL,
cpu_avg_load_over_1_min Decimal(11,3) NOT NULL,
cpu_avg_load_over_5_min   Decimal(11,3) NOT NULL,
cpu_avg_load_over_15_min Decimal(11,3) NOT NULL,
system_total_memory BIGINT NOT NULL,
system_used_memory BIGINT NOT NULL,
system_free_memory BIGINT NOT NULL,
system_active_memory BIGINT NOT NULL,
system_inactive_memory BIGINT NOT NULL,
system_buffers_memory BIGINT NOT NULL,
system_cached_memory BIGINT NOT NULL,
system_shared_memory BIGINT NOT NULL,
system_avalible_memory BIGINT NOT NULL,
disk_total_memory BIGINT NOT NULL,
disk_used_memory BIGINT NOT NULL,
disk_free_memory BIGINT NOT NULL,
disk_read_count BIGINT NOT NULL,
disk_write_count BIGINT NOT NULL,
disk_read_bytes BIGINT NOT NULL,
disk_write_bytes BIGINT NOT NULL,
time_spent_reading_from_disk BIGINT NOT NULL,
time_spent_writing_to_disk BIGINT NOT NULL,
time_spent_doing_actual_Input_Output BIGINT NOT NULL,
number_of_bytes_sent BIGINT NOT NULL,
number_of_bytes_received BIGINT NOT NULL,
number_of_packets_sent BIGINT NOT NULL,
number_of_packets_recived BIGINT NOT NULL,
total_number_of_errors_while_receiving BIGINT NOT NULL,
total_number_of_errors_while_sending BIGINT NOT NULL,
total_number_of_incoming_packets_which_were_dropped BIGINT NOT NULL,
total_number_of_outgoing_packets_which_were_dropped BIGINT NOT NULL,
boot_time varchar(100) NOT NULL,
keyboard int NOT NULL,
mouse int NOT NULL,
technology varchar(100) NOT NULL,
files_changed int NOT NULL,
CONSTRAINT FK_user_engagemnt_mis_candidates_id FOREIGN KEY (candidate_id) REFERENCES fellowship_candidates (id),
)On Pt_DatewisePartition_Scheme(Date_Time);



insert into DatewisePartitionUser_engagement_MIS(id,candidate_id,Date_Time,Cpu_Count,Cpu_Working_Time,Cpu_idle_Time,cpu_percent
,Usage_cpu_count,number_of_software_interrupts_since_boot,number_of_system_calls_since_boot,number_of_interrupts_since_boot,
cpu_avg_load_over_1_min,cpu_avg_load_over_5_min,cpu_avg_load_over_15_min,system_total_memory,system_used_memory,
system_free_memory,system_active_memory,system_inactive_memory,system_buffers_memory,system_cached_memory,system_shared_memory,
system_avalible_memory,disk_total_memory,disk_used_memory,disk_free_memory,disk_read_count,disk_write_count,disk_read_bytes,disk_write_bytes,
time_spent_reading_from_disk,time_spent_writing_to_disk,time_spent_doing_actual_Input_Output,number_of_bytes_sent,number_of_bytes_received,
number_of_packets_sent,number_of_packets_recived,total_number_of_errors_while_sending,total_number_of_errors_while_receiving,total_number_of_incoming_packets_which_were_dropped
,total_number_of_outgoing_packets_which_were_dropped,boot_time,keyboard,mouse,technology,files_changed)
(select * from user_engagement_MIS);


select $Partition.Pt_DatePartition_fun(Date_Time) as PartitionNumber ,*
from DatewisePartitionUser_engagement_MIS;

SELECT part.partition_number AS [Partition Number],
		fle.name AS [Partition Name],
		part.rows AS [Number of Rows]
FROM sys.partitions AS part
JOIN SYS.destination_data_spaces AS dest ON
part.partition_number = dest.destination_id
JOIN sys.filegroups AS fle ON
dest.data_space_id = fle.data_space_id
WHERE OBJECT_NAME(OBJECT_ID) = 'DatewisePartitionUser_engagement_MIS';


select * from sys.partitions;

select * from  SYS.destination_data_spaces



