create Database UserEngagementMIS 

Use UserEngagementMIS


CREATE TABLE user_engagement_MIS(
id int identity (1,1) primary Key,
candidate_id int foreign key references fellowship_candidates(id),
Date_Time  DATE NOT NULL,
Cpu_Count int NOT NULL,
Cpu_Working_Time DECIMAL(11,3) NOT NULL,
Cpu_idle_Time DECIMAL(11,3) NOT NULL,
cpu_percent DECIMAL(11,3) NOT NULL,
Usage_cpu_count int NOT NULL,
number_of_software_interrupts_since_boot DECIMAL(11,3) NOT NULL,
number_of_system_calls_since_boot int NOT NULL,
number_of_interrupts_since_boot int NOT NULL,
cpu_avg_load_over_1_min DECIMAL(11,3) NOT NULL,
cpu_avg_load_over_5_min   DECIMAL(11,3) NOT NULL,
cpu_avg_load_over_15_min DECIMAL(11,3) NOT NULL,
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
files_changed int NOT NULL
) 


CREATE TABLE fellowship_candidates (
  id int PRIMARY KEY identity (1,1),
  first_name varchar(100) NOT NULL,
  middle_name varchar(100) DEFAULT NULL,
  last_name varchar(100) NOT NULL,
  email varchar(50) NOT NULL,
  mobile_num bigint NOT NULL,
  hired_city varchar(50) NOT NULL,
  hired_date datetime NOT NULL,
  degree varchar(50) NOT NULL,
  aggr_per DECIMAL DEFAULT NULL,
  current_pincode int DEFAULT NULL,
  permanent_pincode int DEFAULT NULL,
  hired_lab varchar(20) DEFAULT NULL,
  attitude_remark varchar(15) DEFAULT NULL,
  communication_remark varchar(15) DEFAULT NULL,
  knowledge_remark varchar(15) DEFAULT NULL,
  birth_date date NOT NULL,
  is_birth_date_verified int DEFAULT 0,
  parent_name varchar(50) DEFAULT NULL,
  parent_occupation varchar(100) NOT NULL,
  parent_mobile_num bigint NOT NULL,
  parent_annual_sal DECIMAL DEFAULT NULL,
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
 
) 


select * from DataWareHouse




CREATE TABLE temporary_MIS(
Date_Time  DATE NOT NULL,
Cpu_Count int NOT NULL,
Cpu_Working_Time float NOT NULL,
Cpu_idle_Time float NOT NULL,
cpu_percent float NOT NULL,
Usage_cpu_count int NOT NULL,
number_of_software_interrupts_since_boot float NOT NULL,
number_of_system_calls_since_boot int NOT NULL,
number_of_interrupts_since_boot int NOT NULL,
cpu_avg_load_over_1_min float NOT NULL,
cpu_avg_load_over_5_min   float NOT NULL,
cpu_avg_load_over_15_min float NOT NULL,
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
user_name varchar(50) NOT NULL,
keyboard int NOT NULL,
mouse int NOT NULL,
technology varchar(100) NOT NULL,
files_changed int NOT NULL,
PRIMARY KEY (user_name)
)



Insert into user_engagement_MIS values (1,5,2022-02-14 ,3,255.5,2566.3,55.2,3,25698745,0,
2523568,0,0.02,0.01,0,7856987523,9563214587,856945235,5236589745,2563145698,2548796325,
2569874535,45632585,45879654,5878965235,4587965245,56368902144,56368902144,297404,297404,
7027282944,3147111424,443342,443343,376355,2064439602,8563258658,5263784,0,0,50,0,
2:47:41.170801,abc@gmail.com,0,0,android,5)




select * from user_engagement_MIS

select * from DataWareHouse 

Update DataWareHouse set DateTime = getdate() where user_name='ismpraful@gmail.com'


--order by

select * from DataWareHouse order By DateTime DESC 

select * from DataWareHouse where DateTime=getdate() group by DateTime 



--date partitioning 

alter database UserEngagementMIS
add Filegroup Weight_50
Go 

alter database UserEngagementMIS
add Filegroup Weight_60
Go

alter database UserEngagementMIS
add Filegroup Weight_70
Go


--location 

alter database UserEngagementMIS
add File
(
  Name=PartWeights_50,
  FileName='C:\Users\lenovo\Desktop\User_Engagement_MIS\PartWeights_50ndf',


  Size=1024 KB,
  Maxsize=unlimited,
  Filegrowth=200 kb
)
To FileGroup Weight_50
Go



alter database UserEngagementMIS
add File
(
  Name=PartWeights_60,
  FileName='C:\Users\lenovo\Desktop\User_Engagement_MIS\PartWeights_60ndf',


  Size=1024 KB,
  Maxsize=unlimited,
  Filegrowth=200 kb
)
To FileGroup Weight_60
Go


alter database UserEngagementMIS
add File
(
  Name=PartWeights_70,
  FileName='C:\Users\lenovo\Desktop\User_Engagement_MIS\PartWeights_70ndf',


  Size=1024 KB,
  Maxsize=unlimited,
  Filegrowth=200 kb
)
To FileGroup Weight_70
Go


--partitioning 


create partition function pt_Weightwise_fun(int)
as range left for values (50,60)


create partition scheme pt_Weightwise_Sch
As
Partition pt_Weightwise_fun
To
(Weight_50,Weight_60,Weight_70);


create table Pt_Employees
(
Id int ,
Name varchar(max),
weight int
) On pt_Weightwise_Sch (weight);

select * from Pt_Employees

select * from sys.filegroups



create partition function partitionbydate(datetime)
as range right for values('20191117','20220216' 
               );


create partition scheme partitionbydatescheme
as partition partitionbydate
to (January, february, march, april, may, june , july , august, september,october, november, december)


--to create the partition table
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
)On partitionbydatescheme(Date_Time)
-- checking wether the table created or not...
select * from Part_UserEngagement_MIS
--inserting the data into the partition table
insert into DatewisePartitionUser_engagement_MIS(id,candidate_id,Date_Time,Cpu_Count,Cpu_Working_Time,Cpu_idle_Time,cpu_percent
,Usage_cpu_count,number_of_software_interrupts_since_boot,number_of_system_calls_since_boot,number_of_interrupts_since_boot,
cpu_avg_load_over_1_min,cpu_avg_load_over_5_min,cpu_avg_load_over_15_min,system_total_memory,system_used_memory,
system_free_memory,system_active_memory,system_inactive_memory,system_buffers_memory,system_cached_memory,system_shared_memory,
system_avalible_memory,disk_total_memory,disk_used_memory,disk_free_memory,disk_read_count,disk_write_count,disk_read_bytes,disk_write_bytes,
time_spent_reading_from_disk,time_spent_writing_to_disk,time_spent_doing_actual_Input_Output,number_of_bytes_sent,number_of_bytes_received,
number_of_packets_sent,number_of_packets_recived,total_number_of_errors_while_sending,total_number_of_errors_while_receiving,total_number_of_incoming_packets_which_were_dropped
,total_number_of_outgoing_packets_which_were_dropped,boot_time,keyboard,mouse,technology,files_changed)
(select * from user_engagement_MIS);