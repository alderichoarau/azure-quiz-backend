-- Examen blanc officiel C (AZ900_Test_C.docx) - real AZ-900 mock exam content
-- 50 questions with answers/explanations from the same document (self-contained practice test).
-- This is an official, complete mock exam: it must stay independent from other mock exams and
-- from course modules - it is excluded from the random cross-module exam draw (module type
-- MOCK_EXAM, see QuestionRepository.findRandomActiveByCertification).

INSERT INTO module (id, certification_id, code, title, description, position, type)
VALUES ('f545c666-64cf-4849-8288-56032005bc12', '00000000-0000-0000-0000-000000000001', 'mock-exam-c', 'Examen blanc officiel C',
        'Examen blanc officiel AZ-900 complet, 50 questions - a realiser en une seule fois.', 9, 'MOCK_EXAM');

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('429a2e9f-f9b2-49ff-8c92-fc748df34489', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is the core problem that you need to solve in order to have a high-availability application?',
        NULL, 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a2381b38-b6fc-480c-8e3e-7db06a1fd1c7', '429a2e9f-f9b2-49ff-8c92-fc748df34489', 'You need to ensure your server has a lot of RAM and a lot of CPUs', FALSE, 1),
    ('549a46f9-9213-4603-8da4-983234d5fc2c', '429a2e9f-f9b2-49ff-8c92-fc748df34489', 'You need to ensure the capacity of your server exceeds your highest number of expected concurrent users', FALSE, 2),
    ('d3f2f3f1-9e04-4624-88eb-7dcf6cdd4c7b', '429a2e9f-f9b2-49ff-8c92-fc748df34489', 'You need to avoid single points of failure', TRUE, 3),
    ('a176fff2-749b-4c86-a7ee-0919a67ffbde', '429a2e9f-f9b2-49ff-8c92-fc748df34489', 'You should have a backup copy of your application on standby, ready to be started up when the main application fails.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b5734e4b-02ae-4249-b85e-b384149a76f4', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'How many minutes per month downtime is 99.99% availability?',
        NULL, 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c02acbd5-be21-4ebd-a784-57d688da2e0d', 'b5734e4b-02ae-4249-b85e-b384149a76f4', '1', FALSE, 1),
    ('98e9310e-2652-4b24-a271-b70e757a7be8', 'b5734e4b-02ae-4249-b85e-b384149a76f4', '4', TRUE, 2),
    ('965ac22c-cb78-472a-a4d4-a81b5e09e2bb', 'b5734e4b-02ae-4249-b85e-b384149a76f4', '40', FALSE, 3),
    ('5a623b1b-5781-4564-b0c7-27784dbf1a42', 'b5734e4b-02ae-4249-b85e-b384149a76f4', '100', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8d22b73b-e423-4af2-b538-de140eb0fd34', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which of the following is a key benefit of using cloud services like Microsoft Azure?',
        'Using cloud services like Microsoft Azure allows organizations to reduce their upfront capital expenditure (CapEx) by only paying for the resources and services they actually use. This pay-as-you-go model helps in cost optimization and financial flexibility.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3b898149-5616-4c92-b022-b3369bb5525b', '8d22b73b-e423-4af2-b538-de140eb0fd34', 'Reduced upfront capital expenditure (CapEx) by paying only for what you use.', TRUE, 1),
    ('3e3d7f05-8c64-4a99-ac86-8d310f83ae79', '8d22b73b-e423-4af2-b538-de140eb0fd34', 'Increased responsibility for managing physical hardware and infrastructure.', FALSE, 2),
    ('c156f232-dfb5-48d6-837a-620812407100', '8d22b73b-e423-4af2-b538-de140eb0fd34', 'Limited scalability and flexibility for changing workloads.', FALSE, 3),
    ('7b41ea12-50f3-4955-99de-3237d0f7675c', '8d22b73b-e423-4af2-b538-de140eb0fd34', 'Fixed costs that do not vary based on usage.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a732879e-0d0b-4d82-a7af-388b4b0ffc0e', 'f545c666-64cf-4849-8288-56032005bc12', 'MULTIPLE_CHOICE', 'What two advantages does cloud computing elasticity give to you? Pick two.',
        NULL, 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('99ecef06-45ad-4ca8-85ca-b8a718d8f3ef', 'a732879e-0d0b-4d82-a7af-388b4b0ffc0e', 'You can save money.', TRUE, 1),
    ('3e7cad7b-c618-402d-91b0-a7f3352466de', 'a732879e-0d0b-4d82-a7af-388b4b0ffc0e', 'Servers have become a commodity and Microsoft doesn''t even need to even fix servers that fail within Azure.', FALSE, 2),
    ('1357275b-64b8-4dda-b6d7-c20a7e462844', 'a732879e-0d0b-4d82-a7af-388b4b0ffc0e', 'You can do more regular backups and you won''t lose as much when that backup gets restored', FALSE, 3),
    ('ce17df44-fc62-4a34-a128-245adad7b7c5', 'a732879e-0d0b-4d82-a7af-388b4b0ffc0e', 'You can serve users better during peak traffic periods by automatically adding more capacity.', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e143cf59-0705-4fd2-a532-b17d639714a1', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which of the following services would NOT be considered Infrastructure as a Service?',
        NULL, 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1b3ffd3d-5575-4296-96ce-a6242ec4610e', 'e143cf59-0705-4fd2-a532-b17d639714a1', 'Virtual Machine', FALSE, 1),
    ('fa15befd-72cc-41d6-b386-2df8fb13ee53', 'e143cf59-0705-4fd2-a532-b17d639714a1', 'Virtual Network', FALSE, 2),
    ('da2acc9c-347f-441f-bbcf-b8f01ba1c9d7', 'e143cf59-0705-4fd2-a532-b17d639714a1', 'Virtual Network Interface Card (NIC)', FALSE, 3),
    ('8f753d87-0b3c-4264-89ec-9acc2bec5ad1', 'e143cf59-0705-4fd2-a532-b17d639714a1', 'Azure Functions App', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0d107523-43cf-44fc-b53e-56d6072b5fb0', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which style of computing is easiest when migrating an existing hosted application from your own data center into the cloud?',
        NULL, 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3fc9aebb-434d-4707-a631-e4a9eb539cb8', '0d107523-43cf-44fc-b53e-56d6072b5fb0', 'IaaS', TRUE, 1),
    ('8ef2c7bf-f86b-4b33-abc7-973da4598e38', '0d107523-43cf-44fc-b53e-56d6072b5fb0', 'PaaS', FALSE, 2),
    ('c3499ff1-f2a2-4783-b9df-09c8bca334f7', '0d107523-43cf-44fc-b53e-56d6072b5fb0', 'FaaS', FALSE, 3),
    ('b06a24e5-b198-4a24-9a98-6c5ef9afd9d7', '0d107523-43cf-44fc-b53e-56d6072b5fb0', 'Serverless', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('412bf774-9138-4222-be8d-fbbc4144f383', 'f545c666-64cf-4849-8288-56032005bc12', 'MULTIPLE_CHOICE', 'Deploying Azure App Services applications consists of what two components? Pick two.',
        NULL, 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0d750697-a184-4945-b0bf-18afa6c4d642', '412bf774-9138-4222-be8d-fbbc4144f383', 'Managing operating system updates', FALSE, 1),
    ('e80b382d-9bce-4df3-be2d-15228250586e', '412bf774-9138-4222-be8d-fbbc4144f383', 'Database scripts', FALSE, 2),
    ('f9a90090-a33a-489c-b124-343aea6b0118', '412bf774-9138-4222-be8d-fbbc4144f383', 'Packaged code', TRUE, 3),
    ('b23c2c16-2fe5-419f-bec8-bec7ec23b033', '412bf774-9138-4222-be8d-fbbc4144f383', 'Configuration', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('128071ea-ad1d-4ab5-aaee-aecdd374718d', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which of the following are one of the advantages of running your cloud in a private cloud?',
        NULL, 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6595f1a3-c520-4e18-8395-d0066e1e19c2', '128071ea-ad1d-4ab5-aaee-aecdd374718d', 'Private cloud is significantly cheaper than the public cloud.', FALSE, 1),
    ('ede8e6fb-12db-4497-a9ba-1f88220c4f5d', '128071ea-ad1d-4ab5-aaee-aecdd374718d', 'Assurance that your code, data and applications are running on isolated hardware, and on an isolated network.', TRUE, 2),
    ('eea87b58-4a11-4eef-9c92-174ba5faeb0f', '128071ea-ad1d-4ab5-aaee-aecdd374718d', 'You own the hardware, so you can change private cloud hosting providers easily.', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('019ab4d4-ee3d-4457-a263-33f2b42ed580', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'With Azure public cloud, anyone with a valid credit card can sign up and get services immediately',
        NULL, 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a0cdb3db-3873-4862-a717-ba51ff828508', '019ab4d4-ee3d-4457-a263-33f2b42ed580', 'TRUE', TRUE, 1),
    ('7304892e-0d87-4b9e-8fa3-54b01cbd3499', '019ab4d4-ee3d-4457-a263-33f2b42ed580', 'FALSE', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cce252ea-5dcc-469c-829c-ce84e999f3e1', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is the significance of the Azure region? Why is it important?',
        NULL, 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ed6dad0e-a031-4993-a941-ce3eaa074b72', 'cce252ea-5dcc-469c-829c-ce84e999f3e1', 'Region is just a folder structure in which you organize resources, much like file folders on a computer.', FALSE, 1),
    ('d6b1e6b8-0293-4465-b168-56dff26b7d62', 'cce252ea-5dcc-469c-829c-ce84e999f3e1', 'You must select a region when creating most resources, and the region is the area of the world where those resources will be physically located.', TRUE, 2),
    ('5373df04-eb24-4ff0-ab56-e8cf482b0c5d', 'cce252ea-5dcc-469c-829c-ce84e999f3e1', 'Once you select a region, you cannot create resources outside of that region. So selecting the right region is an important decision.', FALSE, 3),
    ('fe9b3d6c-08a5-4148-b92c-f9268d72f37e', 'cce252ea-5dcc-469c-829c-ce84e999f3e1', 'Even though you have to choose a region when creating resources, there''s generally no consequence of what you select. You can create a network in one region and then create virtual machines for that network in another region.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('70f14095-7866-4979-8072-bd8f4bd38bff', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What are groups of subscriptions called?',
        NULL, 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('faf579d9-2bed-46dd-a997-1f679751151c', '70f14095-7866-4979-8072-bd8f4bd38bff', 'Subscription Groups', FALSE, 1),
    ('b11474da-c029-44b5-8e7c-5baf48b8287e', '70f14095-7866-4979-8072-bd8f4bd38bff', 'Management Groups', TRUE, 2),
    ('a86cdd04-ad46-4d68-b23a-2cb9718f22b4', '70f14095-7866-4979-8072-bd8f4bd38bff', 'ARM Groups', FALSE, 3),
    ('b673547c-972e-4e3e-8fd9-0b8244be0276', '70f14095-7866-4979-8072-bd8f4bd38bff', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1f04e59c-6d78-4e24-97b2-85fc2923f9c0', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What are resource groups?',
        NULL, 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('90c0eb35-324c-4a93-a901-b1b1840de7b8', '1f04e59c-6d78-4e24-97b2-85fc2923f9c0', 'Automatically assigned groups of resources that all have the same type (virtual machine, app service, etc)', FALSE, 1),
    ('80ff4495-0531-41b7-aea3-6e3a2d6ea8f8', '1f04e59c-6d78-4e24-97b2-85fc2923f9c0', 'Based on the tag assigned to a resource by the deployment script, it is assigned to a group', FALSE, 2),
    ('bb43dc37-28ed-475a-bfbe-d9acf49487a9', '1f04e59c-6d78-4e24-97b2-85fc2923f9c0', 'A folder structure in Azure in which you organize resources like databases, virtual machines, virtual networks, or almost any resource', TRUE, 3),
    ('0d79da94-005f-4aea-9ad0-c0581701d93b', '1f04e59c-6d78-4e24-97b2-85fc2923f9c0', 'Within Azure security model, users are organized into groups, and those groups are granted permissions to resources', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('478349bb-95b2-4f3f-8cdb-733f7552ea6e', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What data format are ARM templates created in?',
        NULL, 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('51f5456a-6427-4044-9fa2-486fb0eafa07', '478349bb-95b2-4f3f-8cdb-733f7552ea6e', 'JSON', TRUE, 1),
    ('6ef64d83-9608-420c-86b5-9d83d633b032', '478349bb-95b2-4f3f-8cdb-733f7552ea6e', 'XML', FALSE, 2),
    ('483168b7-2d86-4ef2-966f-95c6388023cc', '478349bb-95b2-4f3f-8cdb-733f7552ea6e', 'YAML', FALSE, 3),
    ('84fb330b-2a56-466c-85fd-245a0934754f', '478349bb-95b2-4f3f-8cdb-733f7552ea6e', 'HTML', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('508ec9ee-c787-4e7f-ae77-2f85ddf43b4a', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which Azure compute service allows you to run containerized applications without managing the underlying infrastructure?',
        'Azure Container Instances is a serverless container service that enables you to run containers without the need to manage the underlying infrastructure. It offers a fast and efficient way to run containerized applications in Azure without the overhead of provisioning or maintaining servers, making it an ideal choice for running containerized applications without infrastructure management.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('955c2ebc-199e-4a06-a384-763e0c723f01', '508ec9ee-c787-4e7f-ae77-2f85ddf43b4a', 'Azure Virtual Machines', FALSE, 1),
    ('09329ecb-bb2d-4d3a-babe-160fef0f286e', '508ec9ee-c787-4e7f-ae77-2f85ddf43b4a', 'Azure Kubernetes Service (AKS)', FALSE, 2),
    ('70483503-4a4b-495f-90f2-67483ecb2d7b', '508ec9ee-c787-4e7f-ae77-2f85ddf43b4a', 'Azure App Service', FALSE, 3),
    ('e6ae5106-aeef-4a93-b81b-6fc41a73807e', '508ec9ee-c787-4e7f-ae77-2f85ddf43b4a', 'Azure Container Instances', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('70ae30e9-7d33-44af-9fb5-69873bdedec1', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What operating systems does an Azure Virtual Machine support?',
        NULL, 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b8790ad1-e869-439d-84aa-d26f93552fd1', '70ae30e9-7d33-44af-9fb5-69873bdedec1', 'Windows', FALSE, 1),
    ('67ccecec-8c38-4414-9125-cfe99219e213', '70ae30e9-7d33-44af-9fb5-69873bdedec1', 'Linux', FALSE, 2),
    ('c386969e-f98b-4d5b-8c3a-7e1111cb164b', '70ae30e9-7d33-44af-9fb5-69873bdedec1', 'Windows and Linux', TRUE, 3),
    ('a98d396f-672c-4d90-b16c-bf6683379e18', '70ae30e9-7d33-44af-9fb5-69873bdedec1', 'macOS', FALSE, 4),
    ('d25a9e10-897f-4dd6-a2c5-4c9a45d6be13', '70ae30e9-7d33-44af-9fb5-69873bdedec1', 'Windows, Linux and macOS', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1294ed60-fdac-4df3-a5f9-931e04267b70', 'f545c666-64cf-4849-8288-56032005bc12', 'MULTIPLE_CHOICE', 'Which two features does Virtual Machine Scale Sets provide as part of the core product? Pick two.',
        NULL, 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0ec1308d-470c-4091-ab33-1ff04d58eb69', '1294ed60-fdac-4df3-a5f9-931e04267b70', 'Autoscaling of virtual machines', TRUE, 1),
    ('6f6fea91-3c6a-4a56-a755-4fc16a41f42d', '1294ed60-fdac-4df3-a5f9-931e04267b70', 'Automatic installation of supporting apps and deployment of custom code', FALSE, 2),
    ('39a62a72-2abc-4a9d-adde-d50ab36161ba', '1294ed60-fdac-4df3-a5f9-931e04267b70', 'Load balancing between virtual machines', TRUE, 3),
    ('1a5d8f10-7787-4cd9-8a33-a9b2bae0d60c', '1294ed60-fdac-4df3-a5f9-931e04267b70', 'Content Delivery Network', FALSE, 4),
    ('95f5a4a0-a583-4576-87fa-66a3aa1c6704', '1294ed60-fdac-4df3-a5f9-931e04267b70', 'Firewall', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('eea24dd1-ed6d-4c1c-a19f-cb246f5c5418', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What advantage does an Application Gateway have over a Load Balancer?',
        NULL, 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('42ab13b2-b230-4002-b622-f4a137448244', 'eea24dd1-ed6d-4c1c-a19f-cb246f5c5418', 'Application Gateway is more like an enterprise-grade product. You should not use a load balancer in production.', FALSE, 1),
    ('4c7ac420-9b78-46e7-b434-255dfcef87bc', 'eea24dd1-ed6d-4c1c-a19f-cb246f5c5418', 'Application gateway understands the HTTP protocol and can interpret the URL and make decisions based on the URL.', TRUE, 2),
    ('e5a8d83b-a325-4618-beeb-51ec5de410de', 'eea24dd1-ed6d-4c1c-a19f-cb246f5c5418', 'Application Gateway can be scaled so that two, three or more instances of the gateway can support your application.', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8ec5b0f5-02cd-407f-89d6-c0b904ce685c', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which of the following would be an example of an Internet of Things (IoT) device?',
        NULL, 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('886aa511-0594-4318-a155-2d7100339fa7', '8ec5b0f5-02cd-407f-89d6-c0b904ce685c', 'A refrigerator that monitors how much milk you have left and sends you a text message when you are running low', TRUE, 1),
    ('942e722b-19f0-408f-a1fd-9425847851bc', '8ec5b0f5-02cd-407f-89d6-c0b904ce685c', 'A web application that people use to perform their banking tasks', FALSE, 2),
    ('2a2d8cb4-981f-46f9-a1d4-6a375e33bf81', '8ec5b0f5-02cd-407f-89d6-c0b904ce685c', 'A video game, installed on Windows clients around the world, that keep user scores in the cloud.', FALSE, 3),
    ('286a2bb2-1255-4749-9ae6-e23b8dca0c5f', '8ec5b0f5-02cd-407f-89d6-c0b904ce685c', 'A mobile application that is used to watch online video courses', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0b10c5fc-b92c-4213-b181-5a9d83650d03', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which database product offers &quot;sub 5 millisecond&quot; response times as a feature?',
        NULL, 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9927b492-9603-4bb1-852f-864119da8b2a', '0b10c5fc-b92c-4213-b181-5a9d83650d03', 'SQL Server in a VM', FALSE, 1),
    ('18ea0155-8aa1-45c0-a88c-1c95769f07a0', '0b10c5fc-b92c-4213-b181-5a9d83650d03', 'Azure SQL Database', FALSE, 2),
    ('4070da81-c225-4f03-ac63-8ed8387ba7ea', '0b10c5fc-b92c-4213-b181-5a9d83650d03', 'Cosmos DB', TRUE, 3),
    ('cfc94591-6969-4375-903b-c53330943df1', '0b10c5fc-b92c-4213-b181-5a9d83650d03', 'SQL Data Warehouse', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('27836700-32ec-4a0d-85ae-9917082823ae', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is the name of the collective set of APIs that provide machine learning and artificial intelligence services to your own applications like voice recognition, image tagging, and chat bot?',
        NULL, 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('af3e379f-387a-4717-b6c9-39ed49a34e19', '27836700-32ec-4a0d-85ae-9917082823ae', 'Azure Batch', FALSE, 1),
    ('9ad711fd-76bc-4971-8f71-2e5866750dc8', '27836700-32ec-4a0d-85ae-9917082823ae', 'Azure Machine Learning Studio', FALSE, 2),
    ('2dc33a7e-4cf6-4efc-995c-fdcdf99ff42b', '27836700-32ec-4a0d-85ae-9917082823ae', 'Azure AI Language services (formerly LUIS)', FALSE, 3),
    ('759c2f3e-05a9-4d3e-a436-3e75d3d36238', '27836700-32ec-4a0d-85ae-9917082823ae', 'Azure AI services (formerly Cognitive Services)', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c214330b-ea20-4f9b-935c-d2a2ba62171d', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is the primary benefit of using Azure Virtual Desktop (AVD)?',
        'The primary benefit of using Azure Virtual Desktop (AVD) is that it enables users to access virtualized desktops and applications from anywhere, on any device. This flexibility and accessibility are key advantages of using AVD.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('48cbc9c0-9f99-40aa-8eb3-4c0bf4c5dba3', 'c214330b-ea20-4f9b-935c-d2a2ba62171d', 'It provides a fully managed database service for relational and non-relational data.', FALSE, 1),
    ('46c22f76-7b01-4c54-b879-825fcc375c27', 'c214330b-ea20-4f9b-935c-d2a2ba62171d', 'It enables users to access virtualized desktops and applications from anywhere, on any device.', TRUE, 2),
    ('2e8e1859-c397-4d6c-9491-2cc7c0abf726', 'c214330b-ea20-4f9b-935c-d2a2ba62171d', 'It offers a serverless computing platform for running event-driven applications.', FALSE, 3),
    ('6540b578-8d37-4c28-abe8-9158da11732a', 'c214330b-ea20-4f9b-935c-d2a2ba62171d', 'It automates the deployment and management of containerized applications.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('18989349-a79b-4bf2-a7e3-29245f1ab6f5', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is the primary purpose of Azure Sovereign Regions?',
        'The correct answer. Azure Sovereign Regions are established to offer Azure services that comply with specific government regulations and data residency requirements. These regions are designed to ensure that sensitive data and workloads are kept within the boundaries of a specific country or region.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dc18daf8-7842-4615-adbf-5d8d23d6f23b', '18989349-a79b-4bf2-a7e3-29245f1ab6f5', 'To provide lower-cost Azure services for small and medium-sized businesses.', FALSE, 1),
    ('611400cb-958a-40ed-a6f6-26fef8f7141d', '18989349-a79b-4bf2-a7e3-29245f1ab6f5', 'To offer Azure services that comply with specific government regulations and data residency requirements.', TRUE, 2),
    ('9763da91-05f9-4fbe-a101-f40b577d84b2', '18989349-a79b-4bf2-a7e3-29245f1ab6f5', 'To enable faster performance for global applications by reducing latency.', FALSE, 3),
    ('b86efae0-60dc-4381-9167-2cce9cdfccf7', '18989349-a79b-4bf2-a7e3-29245f1ab6f5', 'To provide free Azure services for educational institutions and non-profits.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('570837b4-6917-4fc6-88bf-7696c35a306d', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is a key benefit of using Azure Cloud Shell?',
        'Azure Cloud Shell provides a pre-configured, browser-based shell that allows users to manage Azure resources without the need for local installations. This eliminates the need to set up and configure tools on individual machines, making it convenient and accessible for users to manage resources from any device with an internet connection.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4278840e-3b9a-4d5e-8b3c-443c384e0306', '570837b4-6917-4fc6-88bf-7696c35a306d', 'It provides a pre-configured, browser-based shell for managing Azure resources without requiring local installations.', TRUE, 1),
    ('4193cf93-3b30-4e8a-aabe-f30f7b8927b0', '570837b4-6917-4fc6-88bf-7696c35a306d', 'It allows you to run virtual machines directly in the browser.', FALSE, 2),
    ('59cab6d4-fea4-40e0-a096-af4ac88e2b35', '570837b4-6917-4fc6-88bf-7696c35a306d', 'It automatically optimizes the cost of your Azure resources.', FALSE, 3),
    ('d8fd56bb-d199-49ec-a053-73cb7f39b794', '570837b4-6917-4fc6-88bf-7696c35a306d', 'It provides a graphical user interface (GUI) for managing Azure services.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6152523f-f82a-4acf-9299-718b79f8f69b', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which tool within the Azure Portal will make specific recommendations based on your actual usage for how you can improve your use of Azure?',
        NULL, 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1f0062c9-c723-49fd-9de5-c5613feda4c6', '6152523f-f82a-4acf-9299-718b79f8f69b', 'Azure Service Health', FALSE, 1),
    ('d4f5201c-995e-4323-ba70-275afc3e3a13', '6152523f-f82a-4acf-9299-718b79f8f69b', 'Azure Dashboard', FALSE, 2),
    ('2a69de59-c46e-4a4f-8ea3-3cc0af56d0ed', '6152523f-f82a-4acf-9299-718b79f8f69b', 'Azure Advisor', TRUE, 3),
    ('2ab18342-0e5e-44d8-9ff1-f787206e3a41', '6152523f-f82a-4acf-9299-718b79f8f69b', 'Azure Monitor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b065d090-bf77-4b4f-ba87-426be601c559', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which Azure service, when enabled, will automatically block traffic to or from known malicious IP addresses and domains?',
        NULL, 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1b1a0fac-a736-481e-8070-999a6583a4b0', 'b065d090-bf77-4b4f-ba87-426be601c559', 'Azure Firewall', TRUE, 1),
    ('7648d255-f170-4716-a7af-8aed10da3d91', 'b065d090-bf77-4b4f-ba87-426be601c559', 'Azure Active Directory', FALSE, 2),
    ('8d700b8d-0865-41e9-b91f-8a0ebeb8eb07', 'b065d090-bf77-4b4f-ba87-426be601c559', 'Load Balancer', FALSE, 3),
    ('385cc6c2-3350-484c-8d0f-c81bbea674c6', 'b065d090-bf77-4b4f-ba87-426be601c559', 'Network Security Groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3e08613c-30a2-4475-8d66-b7ee0568a5f9', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is the goal of a DDoS attack?',
        NULL, 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('61767cc7-6e2e-4115-a4df-62282f4980a8', '3e08613c-30a2-4475-8d66-b7ee0568a5f9', 'To extract data from a database', FALSE, 1),
    ('3f02c311-8772-432c-ab8e-bb141adfc3df', '3e08613c-30a2-4475-8d66-b7ee0568a5f9', 'To crack the password from administrator accounts', FALSE, 2),
    ('e418f45e-86b7-4fa7-817e-e6776e078d7e', '3e08613c-30a2-4475-8d66-b7ee0568a5f9', 'To overwhelm and exhaust application resources', TRUE, 3),
    ('2ad2c8ba-932f-4a20-adbf-6d20a7d50bdc', '3e08613c-30a2-4475-8d66-b7ee0568a5f9', 'To trick users into giving up personal information', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f19dbc46-cb80-4de8-b33a-8f4a1c4640f8', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Why should you divide your application into multiple subnets as opposed to having all your web, application and database servers running on the same subnet?',
        NULL, 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2c170678-408f-4538-8419-cbbacba41801', 'f19dbc46-cb80-4de8-b33a-8f4a1c4640f8', 'Each server type of your application requires its own subnet. It''s not possible to mix web servers, database servers and application servers on the same subnet.', FALSE, 1),
    ('a67b7fa0-c8b8-4acb-8ec7-e60bed028dc1', 'f19dbc46-cb80-4de8-b33a-8f4a1c4640f8', 'Separating your application into multiple subnets allows you to have different NSG security rules for each subnet, which can make it harder for a hacker to get from one compromised server onto another.', TRUE, 2),
    ('ee9ae431-4277-4935-a2d9-001041cfa9ab', 'f19dbc46-cb80-4de8-b33a-8f4a1c4640f8', 'There are only a limited number of IP addresses available per subnet, so you need multiple subnets over a certain number.', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('39481465-f5c6-406e-bfa0-2feccdc649a4', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'How does Multi-Factor Authentication make a system more secure?',
        NULL, 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fd859a4f-587e-446b-a841-f9de2f8df4aa', '39481465-f5c6-406e-bfa0-2feccdc649a4', 'It doesn''t make it more secure', FALSE, 1),
    ('f70a9843-272d-48f2-a6ef-1a67172d854b', '39481465-f5c6-406e-bfa0-2feccdc649a4', 'It is another password that a user has to memorize, making it more secure', FALSE, 2),
    ('6d0cbb70-3f21-467e-92b3-4680b231400e', '39481465-f5c6-406e-bfa0-2feccdc649a4', 'It requires the user to have access to their verified phone in order to log in', TRUE, 3),
    ('5038b9eb-abc7-4fc9-a9e0-3444d1f247bb', '39481465-f5c6-406e-bfa0-2feccdc649a4', 'It allows the user to log in without a password because they have already previously been validated using a browser cookie', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c7fc68d2-442f-42f2-8da8-0450dc861034', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which Azure service can be enabled to enable Multi-Factor Authentication for administrators but not require it for regular users?',
        NULL, 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f4bbf5a2-9d58-4a60-ba43-50694031a0d8', 'c7fc68d2-442f-42f2-8da8-0450dc861034', 'Advanced Threat Protection', FALSE, 1),
    ('9fa471f0-b85f-4a08-b2cb-2d3277eaceb1', 'c7fc68d2-442f-42f2-8da8-0450dc861034', 'Privileged Identity Management', TRUE, 2),
    ('da7ddd91-86d2-4fdf-9e31-1601e1edf634', 'c7fc68d2-442f-42f2-8da8-0450dc861034', 'Azure Firewall', FALSE, 3),
    ('ae00f867-6d1d-4268-96ea-62381a7a90fc', 'c7fc68d2-442f-42f2-8da8-0450dc861034', 'Azure AD B2B', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('55f58a6b-00f5-4ee5-bf08-12c918b5361b', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What software is used to synchronize your on premises AD with your Azure AD?',
        NULL, 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('98270e0e-011a-43e1-ab7e-d60dd8196cfc', '55f58a6b-00f5-4ee5-bf08-12c918b5361b', 'LDAP', FALSE, 1),
    ('cecd07ba-4468-4e6f-9660-4c06f71d1c16', '55f58a6b-00f5-4ee5-bf08-12c918b5361b', 'Azure AD Federation Services', FALSE, 2),
    ('d09c8b28-fbb8-4344-b968-27ab47a2c597', '55f58a6b-00f5-4ee5-bf08-12c918b5361b', 'Azure AD Domain Services', FALSE, 3),
    ('9413e789-50ee-4f4d-96f0-c12aa9b86195', '55f58a6b-00f5-4ee5-bf08-12c918b5361b', 'AD Connect', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b6beb0f6-9899-467a-8843-61a9bebbbf9d', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What does it mean that security is a &quot;shared model&quot; in Azure?',
        NULL, 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7cdd5b19-8210-417d-8aaa-4be6ba0886d5', 'b6beb0f6-9899-467a-8843-61a9bebbbf9d', 'Both users and Azure have responsibilities for security.', TRUE, 1),
    ('292edbab-8119-4b11-8474-1ccea6bf1611', 'b6beb0f6-9899-467a-8843-61a9bebbbf9d', 'Azure takes care of security completely.', FALSE, 2),
    ('ba622460-e0b9-432c-a93b-b6c39a2c4763', 'b6beb0f6-9899-467a-8843-61a9bebbbf9d', 'Azure takes no responsibility for security.', FALSE, 3),
    ('87f1a775-a31b-4930-99e7-51c7de7a56bd', 'b6beb0f6-9899-467a-8843-61a9bebbbf9d', 'You must keep your security keys private and ensure it doesn''t get out.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('42144c3b-c441-41c4-bd6f-b3d105f204de', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which Azure networking service allows you to securely connect your on-premises network to Azure over the internet?',
        'Azure VPN Gateway enables you to establish secure, encrypted connections between your on-premises network and Azure over the public internet. It uses VPN protocols to ensure data privacy and security during data transmission. This service is specifically designed for securely connecting on-premises networks to Azure over the internet.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('43429838-687c-481d-9b8a-e8216330940a', '42144c3b-c441-41c4-bd6f-b3d105f204de', 'Azure Virtual Network (VNet)', FALSE, 1),
    ('85db0c49-20b2-4be0-9878-387ccf8c910e', '42144c3b-c441-41c4-bd6f-b3d105f204de', 'Azure ExpressRoute', FALSE, 2),
    ('98a68bd9-ebcd-4699-8e22-b19618f66d85', '42144c3b-c441-41c4-bd6f-b3d105f204de', 'Azure VPN Gateway', TRUE, 3),
    ('698a8d76-2903-410b-a712-2439b0519d68', '42144c3b-c441-41c4-bd6f-b3d105f204de', 'Azure Load Balancer', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('dacbcd91-4628-45e0-bbf0-d944d22063e1', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is the recommended way within Azure to store secrets such as private cryptographic keys?',
        NULL, 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5a526bf6-73b2-4986-b0e2-7df731fb3b74', 'dacbcd91-4628-45e0-bbf0-d944d22063e1', 'Within the application code', FALSE, 1),
    ('7942f0ca-88c5-4c51-be50-782de516b670', 'dacbcd91-4628-45e0-bbf0-d944d22063e1', 'In an Azure Storage account private blob container', FALSE, 2),
    ('6e9d510a-400f-4267-befb-8dd3cc7a7a9b', 'dacbcd91-4628-45e0-bbf0-d944d22063e1', 'Azure Key Vault', TRUE, 3),
    ('2d6ab38c-206b-49ff-94d1-522fef03346d', 'dacbcd91-4628-45e0-bbf0-d944d22063e1', 'Azure Advanced Threat Protection (ATP)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b7eaee2a-5da9-440b-bb9a-2d3bee78a941', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is a policy initiative in Azure?',
        NULL, 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6b1cf3fa-6c77-4d88-8a5e-716def353ee0', 'b7eaee2a-5da9-440b-bb9a-2d3bee78a941', 'A custom designed policy', FALSE, 1),
    ('9378cc5b-cc50-4f3e-913b-c66222a4b3fa', 'b7eaee2a-5da9-440b-bb9a-2d3bee78a941', 'The ability to group policies together', TRUE, 2),
    ('c22ffd94-3aeb-4481-b42f-ecea3ba3f472', 'b7eaee2a-5da9-440b-bb9a-2d3bee78a941', 'Requiring all resources in Azure to use tags', FALSE, 3),
    ('eff7b6e6-141e-4b8d-8039-3d14214c7963', 'b7eaee2a-5da9-440b-bb9a-2d3bee78a941', 'Assigning permissions to a role in Azure', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8471e3d9-e03c-4bc6-89f4-1a8b81da8c63', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What does the letter R in RBAC stand for?',
        NULL, 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('400ebeff-d6e3-4b9e-8db1-647f4cba429d', '8471e3d9-e03c-4bc6-89f4-1a8b81da8c63', 'Rule', FALSE, 1),
    ('378b52b2-49f8-4bc0-9e6d-d3398142ef8d', '8471e3d9-e03c-4bc6-89f4-1a8b81da8c63', 'Rights', FALSE, 2),
    ('f87aee42-8d83-4508-90a0-80cd8a3b3d14', '8471e3d9-e03c-4bc6-89f4-1a8b81da8c63', 'Review', FALSE, 3),
    ('f6998630-2deb-4bb7-bf77-1963a57876fe', '8471e3d9-e03c-4bc6-89f4-1a8b81da8c63', 'Role', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e9f22f9d-40ca-494e-bd60-2709f87a7751', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'If you wanted to get an alert every time a new virtual machine is created, where could you create that?',
        NULL, 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('26fb2b31-c92a-4dab-b607-30cfc0e33969', 'e9f22f9d-40ca-494e-bd60-2709f87a7751', 'Azure Monitor', TRUE, 1),
    ('cf8fdcf4-5225-4405-9660-40dbec18073e', 'e9f22f9d-40ca-494e-bd60-2709f87a7751', 'Subscription settings', FALSE, 2),
    ('257c22e3-9b59-4184-b1cc-ae177faf8065', 'e9f22f9d-40ca-494e-bd60-2709f87a7751', 'Azure Dashboard', FALSE, 3),
    ('41b1584d-28c4-416a-93c2-b4c409eb3680', 'e9f22f9d-40ca-494e-bd60-2709f87a7751', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('285f077a-9ef5-40b9-b54f-a3e49d8242f6', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which feature within Azure alerts you to service issues that happen in Azure itself, not specifically related to your own resources?',
        NULL, 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2913fa87-245e-4550-84bb-294eaa4ac948', '285f077a-9ef5-40b9-b54f-a3e49d8242f6', 'Azure Portal Dashboard', FALSE, 1),
    ('26dc96a9-8169-4b94-a47f-0613686549ae', '285f077a-9ef5-40b9-b54f-a3e49d8242f6', 'Azure Service Health', TRUE, 2),
    ('daa887f3-8718-4889-a946-dd518e7692a6', '285f077a-9ef5-40b9-b54f-a3e49d8242f6', 'Azure Monitor', FALSE, 3),
    ('14e28a15-79ad-46bf-a65a-414ffc35d0f0', '285f077a-9ef5-40b9-b54f-a3e49d8242f6', 'Azure Security Center', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f443bbc3-658f-419b-8a6f-91193e0ab120', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Where can you go to see what standards Microsoft is in compliance with?',
        NULL, 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0ec698ae-5161-45ae-b19b-a3fe8f0b38bd', 'f443bbc3-658f-419b-8a6f-91193e0ab120', 'Azure Privacy Page', FALSE, 1),
    ('2a662f5a-7b0f-459b-b0d2-f1330d1eca24', 'f443bbc3-658f-419b-8a6f-91193e0ab120', 'Azure Service Health', FALSE, 2),
    ('f4468e7b-c103-4643-a0ea-b6b09e2212bf', 'f443bbc3-658f-419b-8a6f-91193e0ab120', 'Azure Security Center', FALSE, 3),
    ('1c6b6c10-e5b5-43c7-b2a4-aa6c5021aaf3', 'f443bbc3-658f-419b-8a6f-91193e0ab120', 'Trust Center', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b5cedd90-6731-476c-af98-a9d5adbb23ee', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What type of documents does the Microsoft Service Trust Portal provide?',
        NULL, 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('59ee821b-7fab-4bc8-94ad-d3aed61c21be', 'b5cedd90-6731-476c-af98-a9d5adbb23ee', 'Documentation on the individual Azure services and solutions', FALSE, 1),
    ('9db6563b-50c7-49f3-b5ae-2fca2c4e2f6f', 'b5cedd90-6731-476c-af98-a9d5adbb23ee', 'A tool that helps you manage your compliance to various standards', FALSE, 2),
    ('c935e9b6-52f0-43b7-8e49-44a500c21630', 'b5cedd90-6731-476c-af98-a9d5adbb23ee', 'A list of standards that Microsoft follows, pen test results, security assessments, white papers, faqs, and other documents that can be used to show Microsoft''s compliance efforts', TRUE, 3),
    ('3de7b9f9-ada6-4123-85eb-1dff3075c272', 'b5cedd90-6731-476c-af98-a9d5adbb23ee', 'Specific recommendations about your usage of Azure and ways you can improve', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('828a6025-155e-40a5-804f-a4a9cba1a320', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is an Azure Subscription?',
        NULL, 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2920e5cd-1731-4534-b1ce-d612dd198b19', '828a6025-155e-40a5-804f-a4a9cba1a320', 'It is the level at which services are billed. All resources created under a subscription are billed to that subscription.', TRUE, 1),
    ('899595d4-ec88-4e22-874d-49e909f06a38', '828a6025-155e-40a5-804f-a4a9cba1a320', 'Each user account is associated with a unique subscription. If you need more than one subscription, you need to create multiple user accounts.', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0de4f7cb-bdec-4ac8-bced-eb9b53ca7703', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'If you have an Azure free account, with a $200 credit for the first month, what happens when you reach the $200 limit?',
        NULL, 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('43f47816-4aa4-4934-b981-8e47cb2f2985', '0de4f7cb-bdec-4ac8-bced-eb9b53ca7703', 'Your credit card is automatically billed.', FALSE, 1),
    ('db2246fe-9217-4e26-ae34-b705b91f2ebf', '0de4f7cb-bdec-4ac8-bced-eb9b53ca7703', 'You cannot create any more resources until you add more credits to the account.', FALSE, 2),
    ('a02a65f2-8aee-48ba-bc28-7501e3e7dcd5', '0de4f7cb-bdec-4ac8-bced-eb9b53ca7703', 'All services are stopped and you must decide whether you want to convert to a paid account or not.', TRUE, 3),
    ('6b97ea71-47b1-4a6d-bba8-449f318c1c36', '0de4f7cb-bdec-4ac8-bced-eb9b53ca7703', 'Your account is automatically closed.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ce46f423-d2ab-4f3a-89aa-748f4a00c239', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'How do you stop your Azure account from incurring costs above a certain level without your knowledge?',
        NULL, 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d760c697-f0f5-49ac-92e7-97c2e5885e8d', 'ce46f423-d2ab-4f3a-89aa-748f4a00c239', 'Set up a billing alert to send you an email when it reaches a certain level', FALSE, 1),
    ('d0dd3a46-dabc-4e5a-84b4-42fb919ff6e4', 'ce46f423-d2ab-4f3a-89aa-748f4a00c239', 'Implement the Azure spending limit in the Account Center', TRUE, 2),
    ('6874d01a-12f2-4681-a6eb-dfcf6cc11fd4', 'ce46f423-d2ab-4f3a-89aa-748f4a00c239', 'Switch to Azure Reserved Instances with Hybrid Benefit for VMs', FALSE, 3),
    ('20bc8e44-eb2b-4788-afab-77d9e2b1f21e', 'ce46f423-d2ab-4f3a-89aa-748f4a00c239', 'Only use Azure Functions which have a significant free limit', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('24d1f81a-5ebd-4b69-bcb7-d0c4b89cf226', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'How many hours are available free when using the Azure B1S General Purpose Virtual Machines under a Azure free account in the first 12 months?',
        NULL, 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c238cfeb-2cd0-43ba-8f27-fc13609fe1be', '24d1f81a-5ebd-4b69-bcb7-d0c4b89cf226', '300 hrs', FALSE, 1),
    ('1d56f17d-ba79-4ecf-9a72-abf152c5b3f5', '24d1f81a-5ebd-4b69-bcb7-d0c4b89cf226', '500 hrs', FALSE, 2),
    ('5e9c5620-54fd-40a8-9e51-d2ad22b37016', '24d1f81a-5ebd-4b69-bcb7-d0c4b89cf226', '750 hrs', TRUE, 3),
    ('a43e5e06-df2b-4dde-9f9f-37280cd74a94', '24d1f81a-5ebd-4b69-bcb7-d0c4b89cf226', 'Indefinite amount of hrs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1fc0cd42-a2b5-494f-8535-511df9abbf85', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which of the following scenarios is best addressed by using Microsoft Entra ID?',
        'Providing a centralized identity management solution for hybrid cloud environments is the primary use case for Microsoft Entra ID. It helps organizations manage user identities, access controls, and security policies across on-premises and cloud environments.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fad47359-2e90-4abd-a989-1dff1c9b6c26', '1fc0cd42-a2b5-494f-8535-511df9abbf85', 'Storing and analyzing large volumes of structured data.', FALSE, 1),
    ('f8f0e287-e3d6-492c-92fa-3739b637440f', '1fc0cd42-a2b5-494f-8535-511df9abbf85', 'Providing a centralized identity management solution for hybrid cloud environments.', TRUE, 2),
    ('f008dedb-10d3-45e4-a51b-abac1d0c2b94', '1fc0cd42-a2b5-494f-8535-511df9abbf85', 'Automating the deployment of virtual machines using Infrastructure as Code (IaC).', FALSE, 3),
    ('c90c8326-d65b-40b9-9544-8ae549e9e3d0', '1fc0cd42-a2b5-494f-8535-511df9abbf85', 'Monitoring the performance of Azure resources in real-time.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f5b6f4df-f7d4-4a35-ba2b-c15dc688ac8a', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'TRUE OR FALSE: Azure Tenant is a dedicated and trusted instance of Microsoft Entra ID that''s automatically created when your organization signs up for a Microsoft cloud service subscription.',
        NULL, 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3ecdf621-ca26-407a-8028-2531061a1bd3', 'f5b6f4df-f7d4-4a35-ba2b-c15dc688ac8a', 'TRUE', TRUE, 1),
    ('1597c484-d628-4fca-969d-1f4043663487', 'f5b6f4df-f7d4-4a35-ba2b-c15dc688ac8a', 'FALSE', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('50ca6d0a-4e41-4f53-86e5-1fbad762f068', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What happens if Azure does not meet its own Service Level Agreement guarantee (SLA)?',
        NULL, 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('20e03605-7d57-474d-9a79-8eab90bd82fc', '50ca6d0a-4e41-4f53-86e5-1fbad762f068', 'It''s not possible. Azure will always meet it''s SLA?', FALSE, 1),
    ('ba7ede59-b1d3-45c1-85ae-b8bc0f4b7c08', '50ca6d0a-4e41-4f53-86e5-1fbad762f068', 'You will be financially refunded a small amount of your monthly fee', TRUE, 2),
    ('0cc9fc4c-77b2-4288-bf30-a4844de5e909', '50ca6d0a-4e41-4f53-86e5-1fbad762f068', 'The service will be free that month', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('34a7fee6-0209-4175-bec7-18f0bf179216', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What is the service level agreement for two or more Azure Virtual Machines that have been placed into the same Availability Set in the same region?',
        NULL, 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fe70ac30-6544-48f8-8252-9ee536d66ce2', '34a7fee6-0209-4175-bec7-18f0bf179216', '99.90%', FALSE, 1),
    ('f8f8f5bf-b86a-4aa9-b6af-d3cc881b976a', '34a7fee6-0209-4175-bec7-18f0bf179216', '99.95%', TRUE, 2),
    ('780fbb13-a4fe-4745-8986-5905537730b7', '34a7fee6-0209-4175-bec7-18f0bf179216', '99.99%', FALSE, 3),
    ('fd86a27f-091b-4516-afcf-97c1256b984e', '34a7fee6-0209-4175-bec7-18f0bf179216', '100%', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5193f220-9477-47f0-b2e8-4d58946b1e1f', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'What does it mean if a service is in Private Preview mode?',
        NULL, 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d7b6b250-177b-4183-a246-f663f8d8b465', '5193f220-9477-47f0-b2e8-4d58946b1e1f', 'You have to apply to get selected in order to use that service', TRUE, 1),
    ('ca55f2a3-8cba-4215-88b7-5705e37f8ca9', '5193f220-9477-47f0-b2e8-4d58946b1e1f', 'Anyone can use the service for any reason', FALSE, 2),
    ('7215c08a-a835-430d-b75f-41ad59e3214e', '5193f220-9477-47f0-b2e8-4d58946b1e1f', 'Anyone can use the service but it must not be for production use', FALSE, 3),
    ('421d0ef4-5018-4070-89d1-f3b756305eb3', '5193f220-9477-47f0-b2e8-4d58946b1e1f', 'The service is generally available for use, and Microsoft will provide support for it', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2d8644a2-78d4-4f51-af3b-2768e0886887', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'True or false: If your feature is in the General Availability phase, then your feature will receive support from all Microsoft support channels.',
        NULL, 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0138d9a9-584a-4b4c-8474-f6a9346f9999', '2d8644a2-78d4-4f51-af3b-2768e0886887', 'TRUE', TRUE, 1),
    ('4ab921a8-0b65-437d-baa8-7fdc724ccb5a', '2d8644a2-78d4-4f51-af3b-2768e0886887', 'FALSE', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('514a8152-8c0a-4c89-b9bd-9fe131dba028', 'f545c666-64cf-4849-8288-56032005bc12', 'SINGLE_CHOICE', 'Which Azure management tool analyzes your usage of Azure and makes suggestions specifically targeted to help you optimize your usage of Azure regarding cost, security and performance? ✅',
        NULL, 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5524fe66-68e7-4802-b9b2-2e62db40721d', '514a8152-8c0a-4c89-b9bd-9fe131dba028', 'Azure Mobile App', FALSE, 1),
    ('d8df90db-7c81-4f8b-8249-4c4cc8e7862e', '514a8152-8c0a-4c89-b9bd-9fe131dba028', 'Azure Service Health', FALSE, 2),
    ('85ffc9be-7d95-4594-93ed-68c6b4ebc564', '514a8152-8c0a-4c89-b9bd-9fe131dba028', 'Azure Advisor', TRUE, 3),
    ('f4d97438-cc25-4550-a68d-734a51819260', '514a8152-8c0a-4c89-b9bd-9fe131dba028', 'Azure Firewall', FALSE, 4);
