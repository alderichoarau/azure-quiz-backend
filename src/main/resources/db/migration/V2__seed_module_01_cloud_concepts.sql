-- Module 1 - Cloud Concepts (real AZ-900 content)
-- Standard questions + explanations sourced from AZ900_ANSWER_KEY_Formateur.docx
-- Scenario questions sourced from Module_01_Scenarios_AZ900.docx; that document has no
-- written answer key (trainer corrects live), so their correct answers/explanations were
-- determined from AZ-900 fundamentals rather than copied from an official source - please
-- give them a quick review.

INSERT INTO certification (id, code, title, description, position)
VALUES ('00000000-0000-0000-0000-000000000001', 'AZ-900', 'Microsoft Azure Fundamentals',
        'Notions fondamentales du cloud et des services Azure.', 1);

INSERT INTO module (id, certification_id, code, title, description, position)
VALUES ('087b4e3a-2038-4562-a0b0-4bfb032f5323', '00000000-0000-0000-0000-000000000001', 'module-01-cloud-concepts', 'Module 1 - Cloud Concepts',
        'Cloud computing, shared responsibility, cloud deployment models, benefits, IaaS/PaaS/SaaS.', 1);

-- Standard MCQ / True-False questions
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('eae01ada-e50c-4535-bece-ba0d8efa20df', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'What is cloud computing?',
        'Cloud computing is the delivery of computing services (servers, storage, databases, networking, software) over the internet.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e4998704-9fe1-438d-ab1d-982bff101734', 'eae01ada-e50c-4535-bece-ba0d8efa20df', 'Storing data on local hard drives', FALSE, 1),
    ('7f20aec1-f7ef-41c5-8053-dbedda24b174', 'eae01ada-e50c-4535-bece-ba0d8efa20df', 'Delivering computing services over the internet', TRUE, 2),
    ('7da96e32-8bdd-4bc3-a808-9e279c99df85', 'eae01ada-e50c-4535-bece-ba0d8efa20df', 'Installing software on physical servers', FALSE, 3),
    ('37ed07bb-99e0-42f3-883b-195cfe8e8a27', 'eae01ada-e50c-4535-bece-ba0d8efa20df', 'Using only private data centers', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2c10d077-300d-4431-9319-c73a23abed17', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud model allows organizations to create their own cloud environment within their data center?',
        'A private cloud is owned and operated by a single organization, hosted in their own data center.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('38a4a16e-405f-4db0-812a-9b34ca45996e', '2c10d077-300d-4431-9319-c73a23abed17', 'Public cloud', FALSE, 1),
    ('81f919b0-5b8c-4ef8-9d91-f923ea3260e5', '2c10d077-300d-4431-9319-c73a23abed17', 'Hybrid cloud', FALSE, 2),
    ('c0b50124-9b66-4550-a875-297651dcab72', '2c10d077-300d-4431-9319-c73a23abed17', 'Private cloud', TRUE, 3),
    ('24a1c31b-facc-4c0f-a388-8a11b48f638f', '2c10d077-300d-4431-9319-c73a23abed17', 'Community cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3b016f95-791b-4fb2-aabe-1747bd68c592', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud model is owned by a cloud service provider and offers resources to multiple organizations?',
        'A public cloud is owned by a third-party cloud service provider and delivers resources to multiple customers over the internet.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('42c85b6a-7697-4d21-b9cd-2dd795a84ee5', '3b016f95-791b-4fb2-aabe-1747bd68c592', 'Private cloud', FALSE, 1),
    ('9ac62a72-7b31-4fc4-8359-87d2781d5ad1', '3b016f95-791b-4fb2-aabe-1747bd68c592', 'Hybrid cloud', FALSE, 2),
    ('12ae2f7c-8824-4184-9057-25a50bdce7d4', '3b016f95-791b-4fb2-aabe-1747bd68c592', 'Community cloud', FALSE, 3),
    ('6cd7f23e-69e8-43ad-8cf8-eb27beb6eee8', '3b016f95-791b-4fb2-aabe-1747bd68c592', 'Public cloud', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('637f8a73-9ee3-4f94-b976-3248ef6442b8', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud model combines public and private clouds to allow applications to run in the most appropriate location?',
        'A hybrid cloud combines public and private clouds, allowing data and applications to run in the most appropriate environment.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9281ae30-3da5-4894-be0a-7b11ecf58484', '637f8a73-9ee3-4f94-b976-3248ef6442b8', 'Private cloud', FALSE, 1),
    ('cd2316bd-db1a-4662-aeff-3e9d20ec6a1b', '637f8a73-9ee3-4f94-b976-3248ef6442b8', 'Public cloud', FALSE, 2),
    ('cba7f0ff-1bae-4c1b-abde-0b2f583ae9bf', '637f8a73-9ee3-4f94-b976-3248ef6442b8', 'Hybrid cloud', TRUE, 3),
    ('d0e5e1c9-c6bb-446d-a251-ad8bb705eedc', '637f8a73-9ee3-4f94-b976-3248ef6442b8', 'Multi-cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('75629c78-21d8-4b3a-8f8b-6f78599fe669', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'What does CapEx stand for in the context of cloud computing?',
        'CapEx (Capital Expenditure) refers to upfront spending on physical infrastructure, such as buying servers.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('27b0aff5-fa4a-4b2d-8001-689adb880ee3', '75629c78-21d8-4b3a-8f8b-6f78599fe669', 'Capital Expenditure', TRUE, 1),
    ('8544338a-02b0-42a0-b01e-c8da48677b44', '75629c78-21d8-4b3a-8f8b-6f78599fe669', 'Cloud Application Expense', FALSE, 2),
    ('8de0b8a9-32a9-4a34-9965-82edd7c93017', '75629c78-21d8-4b3a-8f8b-6f78599fe669', 'Compute Application Exchange', FALSE, 3),
    ('9fc6b70e-fe26-4421-9d02-1809706a565e', '75629c78-21d8-4b3a-8f8b-6f78599fe669', 'Capital Application Execution', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7b942c7c-54d3-4c4f-84ee-a129c7a472ac', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'What does OpEx stand for in the context of cloud computing?',
        'OpEx (Operational Expenditure) refers to ongoing costs for services or products, like paying for cloud services monthly.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d56aa454-7e72-4fea-a624-d3d13aec4789', '7b942c7c-54d3-4c4f-84ee-a129c7a472ac', 'Operational Execution', FALSE, 1),
    ('f28163f1-36ef-4f18-b8ee-6bb412f4382c', '7b942c7c-54d3-4c4f-84ee-a129c7a472ac', 'Optimized Expense', FALSE, 2),
    ('f9a8c2ed-1661-4262-88ca-ff8a0ff5e96d', '7b942c7c-54d3-4c4f-84ee-a129c7a472ac', 'Operational Expenditure', TRUE, 3),
    ('1f329e81-1aca-42bc-8f2c-6f07812a4bee', '7b942c7c-54d3-4c4f-84ee-a129c7a472ac', 'Open Exchange', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9cd3cef3-63e3-42b9-9620-749de1b0a938', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud service model gives you the most control over the operating system and installed applications?',
        'IaaS (Infrastructure as a Service) gives the most control - you manage the OS, middleware, runtime, data, and applications.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7092648d-bd2d-4029-b1d2-72c1a46cc64f', '9cd3cef3-63e3-42b9-9620-749de1b0a938', 'SaaS', FALSE, 1),
    ('d1d4b577-2cc7-4965-90ea-f10533d69b80', '9cd3cef3-63e3-42b9-9620-749de1b0a938', 'PaaS', FALSE, 2),
    ('6299eeb6-bcd8-4b21-9375-b8b39c23d395', '9cd3cef3-63e3-42b9-9620-749de1b0a938', 'IaaS', TRUE, 3),
    ('54228176-0224-4be1-b0a4-387e2bc59a6f', '9cd3cef3-63e3-42b9-9620-749de1b0a938', 'FaaS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7f66b829-03ad-4430-b3c5-c930c5a07cf2', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud service model is best for developers who want to build applications without managing the underlying infrastructure?',
        'PaaS (Platform as a Service) provides a managed platform so developers can focus on building apps without worrying about infrastructure.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('741ad715-e499-45d0-b36a-f6b791c6a21c', '7f66b829-03ad-4430-b3c5-c930c5a07cf2', 'IaaS', FALSE, 1),
    ('9a36ca4a-e39e-4c6b-8c9a-bbc0391db819', '7f66b829-03ad-4430-b3c5-c930c5a07cf2', 'SaaS', FALSE, 2),
    ('dd03f1de-0bb7-429e-bb8c-527e12d0c57b', '7f66b829-03ad-4430-b3c5-c930c5a07cf2', 'PaaS', TRUE, 3),
    ('9ca30461-ad7b-4abd-aef4-ba0870c6beca', '7f66b829-03ad-4430-b3c5-c930c5a07cf2', 'On-premises', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cc8d314d-e7f5-46de-acb8-59d3e71ac15b', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud service model provides fully functional software applications over the internet?',
        'SaaS (Software as a Service) delivers fully functional applications over the internet, such as Microsoft 365 or Gmail.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0d2fef60-6703-4e5b-a852-d01e8fc069a2', 'cc8d314d-e7f5-46de-acb8-59d3e71ac15b', 'IaaS', FALSE, 1),
    ('f4c66e67-18bc-4415-8b15-84672959d7db', 'cc8d314d-e7f5-46de-acb8-59d3e71ac15b', 'PaaS', FALSE, 2),
    ('d3403d04-532e-4df9-bc48-ca46dd04505a', 'cc8d314d-e7f5-46de-acb8-59d3e71ac15b', 'SaaS', TRUE, 3),
    ('460aa6d6-5163-4954-b889-b1abea693e16', 'cc8d314d-e7f5-46de-acb8-59d3e71ac15b', 'DaaS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('37c0555b-1745-401f-a524-e344f932502a', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'In the shared responsibility model, which of the following is ALWAYS the customer''s responsibility?',
        'Information and data remain the customer''s responsibility regardless of the cloud service model (IaaS, PaaS, or SaaS).', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('df284819-3311-4876-a4bd-6a8e1275ea74', '37c0555b-1745-401f-a524-e344f932502a', 'Physical datacenter security', FALSE, 1),
    ('d7b3bb6d-d203-4067-bc65-dfaa5f104df0', '37c0555b-1745-401f-a524-e344f932502a', 'Network controls', FALSE, 2),
    ('0becdae4-1a96-41bd-8f5a-586edc59cbd6', '37c0555b-1745-401f-a524-e344f932502a', 'Information and data', TRUE, 3),
    ('08cc38d0-8acc-4972-bb3c-73bf5ccc4c34', '37c0555b-1745-401f-a524-e344f932502a', 'Host infrastructure', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c6436a71-d1d2-4b38-941a-873ab4c6b770', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud benefit refers to the ability to quickly expand or reduce IT resources to meet demand?',
        'Elasticity is the ability to automatically scale resources up or down based on demand.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a7f981ea-9e88-4494-9035-2282dad0284a', 'c6436a71-d1d2-4b38-941a-873ab4c6b770', 'High availability', FALSE, 1),
    ('79d0e1e6-dd26-4d26-8d9a-a3fc5a6bba61', 'c6436a71-d1d2-4b38-941a-873ab4c6b770', 'Elasticity', TRUE, 2),
    ('66724adf-e59d-4cdf-87f9-3fd3327abca2', 'c6436a71-d1d2-4b38-941a-873ab4c6b770', 'Disaster recovery', FALSE, 3),
    ('941a0309-760b-48c0-beec-4a0d0f4da0fe', 'c6436a71-d1d2-4b38-941a-873ab4c6b770', 'Geo-distribution', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4623cd5a-95ff-4a95-b099-5bd45d629f37', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud benefit ensures that services remain available even when components fail?',
        'High availability ensures systems remain operational with minimal downtime, even during hardware or software failures.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7712ec02-d085-4380-8997-8fc8a7c795f6', '4623cd5a-95ff-4a95-b099-5bd45d629f37', 'Scalability', FALSE, 1),
    ('4b83052c-35fd-42b4-864c-3ddaf554c424', '4623cd5a-95ff-4a95-b099-5bd45d629f37', 'Elasticity', FALSE, 2),
    ('a1664da6-ca3d-44f3-a48d-d821e5d153e5', '4623cd5a-95ff-4a95-b099-5bd45d629f37', 'High availability', TRUE, 3),
    ('f4761a02-a467-41b7-84da-c058689b5c4a', '4623cd5a-95ff-4a95-b099-5bd45d629f37', 'Agility', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('241ee6ad-8cae-4e48-9eb4-0375d5a82d99', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud benefit allows organizations to deploy resources in multiple geographic locations around the world?',
        'Geo-distribution allows deploying applications and data across multiple geographic regions to serve customers closer to their location.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e62c1fc3-34aa-4734-883e-fb890862da83', '241ee6ad-8cae-4e48-9eb4-0375d5a82d99', 'High availability', FALSE, 1),
    ('f824b917-4183-4acd-abc8-851b428ea5fb', '241ee6ad-8cae-4e48-9eb4-0375d5a82d99', 'Elasticity', FALSE, 2),
    ('8fd5e8f1-5f95-4179-bf7c-3462f2f07427', '241ee6ad-8cae-4e48-9eb4-0375d5a82d99', 'Agility', FALSE, 3),
    ('8bc7589e-9114-4137-99bb-e35a76ec3f0a', '241ee6ad-8cae-4e48-9eb4-0375d5a82d99', 'Geo-distribution', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3223b0b6-b32e-453d-a088-798da3b1e8b4', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud benefit allows organizations to rapidly develop and deploy new services?',
        'Agility enables organizations to quickly deploy and configure cloud resources, reducing time-to-market for new services.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fbdd53a2-2791-46db-858b-da63b9d702fb', '3223b0b6-b32e-453d-a088-798da3b1e8b4', 'Scalability', FALSE, 1),
    ('05cc4a9e-f1af-45df-bd0b-c2009512ed41', '3223b0b6-b32e-453d-a088-798da3b1e8b4', 'Geo-distribution', FALSE, 2),
    ('5bc5695f-3d26-4ff7-b022-9107ee8dc81a', '3223b0b6-b32e-453d-a088-798da3b1e8b4', 'Disaster recovery', FALSE, 3),
    ('f1ace14d-5711-4164-817c-4f8c7ff79831', '3223b0b6-b32e-453d-a088-798da3b1e8b4', 'Agility', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c790d387-92d2-47bc-b7bd-6962c979710e', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A company wants to keep sensitive data on their own servers while using cloud resources for other workloads. Which cloud model should they use?',
        'A hybrid cloud lets companies keep sensitive data on-premises (private) while leveraging public cloud for other workloads.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('86720e1c-cae1-462b-963f-aef61370196e', 'c790d387-92d2-47bc-b7bd-6962c979710e', 'Public cloud', FALSE, 1),
    ('f1c236f8-3e1f-4ddf-9fa6-d35bdbf3ccf0', 'c790d387-92d2-47bc-b7bd-6962c979710e', 'Private cloud', FALSE, 2),
    ('3e840b61-fd3b-4831-b6bb-a7a6401f5ae2', 'c790d387-92d2-47bc-b7bd-6962c979710e', 'Hybrid cloud', TRUE, 3),
    ('6e2d9ff6-c356-49d5-82b6-01f177b9dcd7', 'c790d387-92d2-47bc-b7bd-6962c979710e', 'SaaS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a768ec29-c30d-440f-b8fb-3e155a5ebe8e', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which of the following is an example of SaaS?',
        'Microsoft 365 (Word, Excel, Outlook online) is a SaaS solution - the software is delivered and managed entirely by Microsoft.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1938d9a5-676c-4d81-963a-bddc71bef492', 'a768ec29-c30d-440f-b8fb-3e155a5ebe8e', 'Azure Virtual Machines', FALSE, 1),
    ('3354e824-9c1d-47c8-9a08-e7986faed690', 'a768ec29-c30d-440f-b8fb-3e155a5ebe8e', 'Azure App Service', FALSE, 2),
    ('90b0baf8-0bf7-43ed-9745-065d95420cce', 'a768ec29-c30d-440f-b8fb-3e155a5ebe8e', 'Microsoft 365', TRUE, 3),
    ('c44f476c-6afd-4719-9957-b64fd720c5b0', 'a768ec29-c30d-440f-b8fb-3e155a5ebe8e', 'Azure Kubernetes Service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4811e30a-36f8-48a1-9377-40537a5f611a', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which of the following is an example of IaaS?',
        'Azure Virtual Machines is IaaS - you control the OS, patches, and applications while Microsoft manages physical hardware.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6bf88019-24d4-4d3f-bcb7-debb042dd880', '4811e30a-36f8-48a1-9377-40537a5f611a', 'Microsoft 365', FALSE, 1),
    ('ac8e3426-36b2-4771-bcde-bbfd1f1c6b29', '4811e30a-36f8-48a1-9377-40537a5f611a', 'Salesforce', FALSE, 2),
    ('f4660cde-aea0-4949-bc90-df02efc10f20', '4811e30a-36f8-48a1-9377-40537a5f611a', 'Azure Virtual Machines', TRUE, 3),
    ('221f36e9-711a-4af0-960f-effd769cc03f', '4811e30a-36f8-48a1-9377-40537a5f611a', 'Azure SQL Database (fully managed)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4b7eeedd-76fa-4e34-86d4-39d4f4036bcd', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Which cloud benefit helps organizations recover from disasters or outages by duplicating data and applications to remote sites?',
        'Disaster recovery ensures business continuity by replicating systems to another location so they can be restored after an outage.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('656b7c76-14b0-406b-a745-e802be1587f5', '4b7eeedd-76fa-4e34-86d4-39d4f4036bcd', 'Agility', FALSE, 1),
    ('dd465abb-e379-452c-babd-41600385a8a5', '4b7eeedd-76fa-4e34-86d4-39d4f4036bcd', 'Elasticity', FALSE, 2),
    ('3c5aa148-c368-4d1b-87a8-80274d15d9d4', '4b7eeedd-76fa-4e34-86d4-39d4f4036bcd', 'Disaster recovery', TRUE, 3),
    ('1bb11782-0c0f-4b13-9af7-88bb73de8851', '4b7eeedd-76fa-4e34-86d4-39d4f4036bcd', 'High availability', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8a4ff2d7-e83f-43b8-8103-fd53d3fcbdba', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'In the shared responsibility model, who is responsible for the physical datacenter security?',
        'In all cloud models, the cloud provider is always responsible for physical security of datacenters, network, and host infrastructure.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('70b98f1e-55e2-43f2-81fc-7881c4202837', '8a4ff2d7-e83f-43b8-8103-fd53d3fcbdba', 'The customer', FALSE, 1),
    ('9552797d-8a25-4263-b62d-83be79c850fd', '8a4ff2d7-e83f-43b8-8103-fd53d3fcbdba', 'The cloud provider', TRUE, 2),
    ('c0b7941c-f079-4ea5-aebe-2850549722ad', '8a4ff2d7-e83f-43b8-8103-fd53d3fcbdba', 'Both equally', FALSE, 3),
    ('88f61aaf-bbb9-42df-9838-1ab04154a78f', '8a4ff2d7-e83f-43b8-8103-fd53d3fcbdba', 'A third-party auditor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('91ea7ebc-c893-4aa0-9fac-9059212d0338', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A startup wants to host a web application without managing servers or operating systems. Which cloud model is MOST appropriate?',
        'PaaS lets developers host and build applications without managing the underlying infrastructure, ideal for a startup.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f410cbad-622f-4cb3-9b38-344823ed2f0f', '91ea7ebc-c893-4aa0-9fac-9059212d0338', 'IaaS', FALSE, 1),
    ('088266ba-1ee8-44bc-8573-13f2ba9b2164', '91ea7ebc-c893-4aa0-9fac-9059212d0338', 'PaaS', TRUE, 2),
    ('cd518642-e057-455c-8163-6bac17e17118', '91ea7ebc-c893-4aa0-9fac-9059212d0338', 'SaaS', FALSE, 3),
    ('db7a2b97-49ba-41c9-a2d9-fe1f7abb9dae', '91ea7ebc-c893-4aa0-9fac-9059212d0338', 'On-premises', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ee8d15ee-7dcc-44d9-85b5-ff0591ab0482', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'MULTIPLE_CHOICE', 'Which TWO of the following are benefits of cloud computing over on-premises infrastructure? (Choose 2)',
        'Cloud computing offers pay-as-you-go pricing and eliminates large upfront capital expenditures, unlike on-premises.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('06ad2aad-1321-47c8-b1ee-7af930f37695', 'ee8d15ee-7dcc-44d9-85b5-ff0591ab0482', 'Full control over physical hardware', FALSE, 1),
    ('85163994-3313-4a0c-ab7c-3e0881c2a783', 'ee8d15ee-7dcc-44d9-85b5-ff0591ab0482', 'Pay-as-you-go pricing', TRUE, 2),
    ('4e46a84f-74a4-427d-a7d1-45c690f6cb0d', 'ee8d15ee-7dcc-44d9-85b5-ff0591ab0482', 'Eliminate upfront CapEx costs', TRUE, 3),
    ('3e35c640-c800-4055-b6af-50c7040af3a5', 'ee8d15ee-7dcc-44d9-85b5-ff0591ab0482', 'Required purchase of server licenses', FALSE, 4),
    ('2bed3627-ddd7-40af-ad10-635fa04dafeb', 'ee8d15ee-7dcc-44d9-85b5-ff0591ab0482', 'Unlimited manual scaling only', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2714e7fd-c5b2-4657-b4e1-1f31aff325ac', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'MULTIPLE_CHOICE', 'Which TWO cloud models are described correctly? (Choose 2)',
        'A private cloud is in an organization''s own datacenter; a hybrid cloud combines public and private.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('276f8484-5376-4629-b6f7-5f1be26368fc', '2714e7fd-c5b2-4657-b4e1-1f31aff325ac', 'A public cloud is hosted only for one organization', FALSE, 1),
    ('de1a26ac-0ffc-4760-9ece-e70283d92078', '2714e7fd-c5b2-4657-b4e1-1f31aff325ac', 'A private cloud is hosted within an organization''s own datacenter', TRUE, 2),
    ('f842298e-4500-4f99-9b80-1d3d8cb139e4', '2714e7fd-c5b2-4657-b4e1-1f31aff325ac', 'A hybrid cloud combines public and private clouds', TRUE, 3),
    ('56dc37b9-0fe3-4095-9c07-da0a33000e29', '2714e7fd-c5b2-4657-b4e1-1f31aff325ac', 'A community cloud is always on-premises', FALSE, 4),
    ('93999071-b44e-41c6-866f-35031eb1d104', '2714e7fd-c5b2-4657-b4e1-1f31aff325ac', 'A public cloud is free to all users', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f0851c6e-7200-423d-abd4-8dc7c9f6d393', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'MULTIPLE_CHOICE', 'Which TWO features describe the SaaS cloud service model? (Choose 2)',
        'In SaaS, the provider manages all infrastructure and software; users simply access the app (e.g., via browser).', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2f05d3cc-30f3-4eb6-9631-4e14fcfe20a6', 'f0851c6e-7200-423d-abd4-8dc7c9f6d393', 'Users manage the operating system', FALSE, 1),
    ('788b1ed5-b720-4020-b3b9-0c5a4219aae9', 'f0851c6e-7200-423d-abd4-8dc7c9f6d393', 'The cloud provider manages everything except user data', TRUE, 2),
    ('7ee78dc6-c175-4b51-808d-a7d813a51f0c', 'f0851c6e-7200-423d-abd4-8dc7c9f6d393', 'Users access software via a web browser or app', TRUE, 3),
    ('4064ac04-f053-41e7-98f7-2db506755aa0', 'f0851c6e-7200-423d-abd4-8dc7c9f6d393', 'Users are responsible for patching the application', FALSE, 4),
    ('cf994712-7df6-429c-b214-862af6df1f9e', 'f0851c6e-7200-423d-abd4-8dc7c9f6d393', 'Users deploy their own virtual machines', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6f28374e-3050-4b7e-8316-ba47661abb02', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'MULTIPLE_CHOICE', 'Which TWO of the following are characteristics of cloud elasticity? (Choose 2)',
        'Elasticity allows scaling out (add resources) when demand rises and scaling in (remove resources) when demand drops.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f739b9df-4112-4db9-8dd2-d79ef338ba53', '6f28374e-3050-4b7e-8316-ba47661abb02', 'Resources are permanently over-provisioned', FALSE, 1),
    ('cf2b140e-498d-4477-a0c7-95c3c19b66d5', '6f28374e-3050-4b7e-8316-ba47661abb02', 'Resources can be scaled in when demand decreases', TRUE, 2),
    ('694043fc-d236-4851-99f0-5739ed6d5013', '6f28374e-3050-4b7e-8316-ba47661abb02', 'Resources can be scaled out when demand increases', TRUE, 3),
    ('2f367684-876d-4418-ba13-ecfc9adffc1a', '6f28374e-3050-4b7e-8316-ba47661abb02', 'Resources are only available in one region', FALSE, 4),
    ('e500d5d1-0fb9-41eb-b1dd-a415cce187e9', '6f28374e-3050-4b7e-8316-ba47661abb02', 'The organization must predict all future usage', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a5505ea8-b819-4f00-b06b-eaa40ab4764e', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'MULTIPLE_CHOICE', 'Which TWO statements correctly describe the shared responsibility model? (Choose 2)',
        'The provider always owns physical security; responsibility for OS/middleware shifts depending on IaaS, PaaS, or SaaS.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0211ee3b-45d6-4e9a-b588-433e293c8f57', 'a5505ea8-b819-4f00-b06b-eaa40ab4764e', 'The customer is always responsible for the physical datacenter', FALSE, 1),
    ('41b9b9fd-634c-4292-b54c-0b808be80741', 'a5505ea8-b819-4f00-b06b-eaa40ab4764e', 'The cloud provider is always responsible for physical security', TRUE, 2),
    ('1efb9aba-c29f-4bb0-b4a5-4e60aa2912d7', 'a5505ea8-b819-4f00-b06b-eaa40ab4764e', 'Responsibility for the OS depends on the service model', TRUE, 3),
    ('19460193-e772-4d30-a4dc-966ee8700831', 'a5505ea8-b819-4f00-b06b-eaa40ab4764e', 'The customer manages network infrastructure in SaaS', FALSE, 4),
    ('1de69967-d7ea-4b73-9505-ff64ddfedb09', 'a5505ea8-b819-4f00-b06b-eaa40ab4764e', 'The cloud provider owns all customer data', FALSE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('32ec8fd7-b8eb-4259-af10-5e611ff52068', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'TRUE_FALSE', 'In a public cloud, the cloud provider owns and operates the infrastructure, and multiple organizations share the same physical hardware.',
        'Public cloud infrastructure is owned by the provider and shared among multiple tenants, which enables economies of scale.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bebbedd4-c216-4408-9a86-7f896e3303ef', '32ec8fd7-b8eb-4259-af10-5e611ff52068', 'True', TRUE, 1),
    ('fb0de061-07e9-44a6-b394-e13efac3d3ea', '32ec8fd7-b8eb-4259-af10-5e611ff52068', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('eacf65ad-fe3a-46f9-b807-5f2a185de12a', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'TRUE_FALSE', 'With IaaS, the cloud provider is responsible for managing the operating system and installed applications.',
        'With IaaS, the customer manages the OS, middleware, runtime, and applications. The provider only manages physical hardware.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ee69340d-b226-4516-b0b7-9e973b32702d', 'eacf65ad-fe3a-46f9-b807-5f2a185de12a', 'True', FALSE, 1),
    ('bce9875c-9b76-4c62-a704-9b6e1372f40d', 'eacf65ad-fe3a-46f9-b807-5f2a185de12a', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a2f46570-69cd-47ae-8288-4422eadc7a73', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'TRUE_FALSE', 'Cloud computing eliminates all IT costs for organizations.',
        'Cloud computing shifts costs from CapEx to OpEx, but does not eliminate them. Organizations still pay for services consumed.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('dc24bd69-4f67-47e1-884e-38a7d8a93a36', 'a2f46570-69cd-47ae-8288-4422eadc7a73', 'True', FALSE, 1),
    ('90c6b3f7-2a02-422a-91ef-69a27b3eff6b', 'a2f46570-69cd-47ae-8288-4422eadc7a73', 'False', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5d0d8fb4-fdf8-48c1-b7ce-072bbca8897a', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'TRUE_FALSE', 'A hybrid cloud model allows workloads to run in both public and private cloud environments.',
        'A hybrid cloud connects on-premises (private) infrastructure with public cloud, allowing workloads to move between both.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0796ccc0-b939-4ed0-872e-0d4cd996722a', '5d0d8fb4-fdf8-48c1-b7ce-072bbca8897a', 'True', TRUE, 1),
    ('7e2c092d-69e2-4933-91af-a93ede58cc94', '5d0d8fb4-fdf8-48c1-b7ce-072bbca8897a', 'False', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4d1f7fe6-f474-4ee9-a334-b7e8d78734c1', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'TRUE_FALSE', 'Scalability in cloud computing means that resources can be added or removed automatically based on workload demand.',
        'Scalability allows resources to scale up (add capacity) or scale out (add instances) as workload demands change.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6d410d65-e7db-4b17-9abd-fcfc1edd14f9', '4d1f7fe6-f474-4ee9-a334-b7e8d78734c1', 'True', TRUE, 1),
    ('d6589c8a-ee46-426e-8e0d-89d9b2fb22dc', '4d1f7fe6-f474-4ee9-a334-b7e8d78734c1', 'False', FALSE, 2);

-- Scenario questions (answers derived from AZ-900 fundamentals, see note above)
INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0da1f5b9-baff-48ba-bfe8-488cbf475614', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'Your company currently maintains physical servers in its own datacenter. The IT manager wants to eliminate the large upfront cost of purchasing new server hardware every three years while still running the same workloads. Which solution best meets the company''s need?',
        'Moving workloads to a public cloud replaces upfront hardware purchases (CapEx) with pay-as-you-go operational spending (OpEx).', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('01e26daf-6562-4e24-b42a-4e96c1747ade', '0da1f5b9-baff-48ba-bfe8-488cbf475614', 'Upgrade the existing on-premises servers', FALSE, 1),
    ('2cd60293-0471-4f4e-9d8b-4b1e85cf6102', '0da1f5b9-baff-48ba-bfe8-488cbf475614', 'Move workloads to a public cloud', TRUE, 2),
    ('62faa8ed-0ea6-4226-a3bb-1281ea8b4f67', '0da1f5b9-baff-48ba-bfe8-488cbf475614', 'Build a private cloud in a new datacenter', FALSE, 3),
    ('72fb884e-ab0b-4962-95d3-3b4035a23c79', '0da1f5b9-baff-48ba-bfe8-488cbf475614', 'Purchase servers using a leasing agreement', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4ec61250-a957-4714-bdd5-d821666234e1', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A healthcare organization stores patient records that must remain within their own controlled environment due to strict data sovereignty regulations. However, they also want to use cloud services for non-sensitive workloads such as a public-facing website. Which cloud deployment model should the organization use?',
        'A hybrid cloud keeps regulated patient data on-premises while letting non-sensitive workloads use public cloud scalability.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('72dbc23d-4c54-43ac-9ddf-517b1020bab2', '4ec61250-a957-4714-bdd5-d821666234e1', 'Public cloud only', FALSE, 1),
    ('0378e77f-3f31-4fef-a2ac-e1391e2ad1f6', '4ec61250-a957-4714-bdd5-d821666234e1', 'Private cloud only', FALSE, 2),
    ('5c665200-4a3e-4db6-a5b9-cfb3503b5f13', '4ec61250-a957-4714-bdd5-d821666234e1', 'Hybrid cloud', TRUE, 3),
    ('e9cf6492-5d1a-4b28-aa40-21316401be73', '4ec61250-a957-4714-bdd5-d821666234e1', 'Community cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5d656e9e-ecd2-4c06-b167-27741c622318', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A software company wants to offer a customer relationship management (CRM) tool that its clients can access directly from a web browser. Clients should not need to install any software, and the company will manage all updates and infrastructure. Which cloud service model does this represent?',
        'A fully managed application accessed via a browser, with no client-side install or infrastructure management, is SaaS.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('896218d9-90dd-4e54-bec3-270e83b33f68', '5d656e9e-ecd2-4c06-b167-27741c622318', 'Infrastructure as a Service (IaaS)', FALSE, 1),
    ('cfded978-1966-428c-b254-81ef1f3ca056', '5d656e9e-ecd2-4c06-b167-27741c622318', 'Platform as a Service (PaaS)', FALSE, 2),
    ('9c065647-ce6a-4319-8953-78160bf6589a', '5d656e9e-ecd2-4c06-b167-27741c622318', 'Software as a Service (SaaS)', TRUE, 3),
    ('08b1f0eb-1520-421e-89ec-8e506aa21310', '5d656e9e-ecd2-4c06-b167-27741c622318', 'Function as a Service (FaaS)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2558527f-534c-404b-a3a0-307873293780', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A development team wants to build and deploy a new web application. They want to focus exclusively on writing application code. They do not want to manage servers, operating systems, patching, or runtime environments. Which cloud service model best meets these requirements?',
        'PaaS provides a managed platform (OS, runtime, scaling, high availability) so developers only write and deploy application code.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('48bd307b-eea5-4d4f-a17d-4f728f89d1ae', '2558527f-534c-404b-a3a0-307873293780', 'IaaS', FALSE, 1),
    ('7196c292-f98b-48d6-91d1-5c7afd1814a0', '2558527f-534c-404b-a3a0-307873293780', 'PaaS', TRUE, 2),
    ('c118558c-9bdb-4840-b9e7-5afd5e36be8f', '2558527f-534c-404b-a3a0-307873293780', 'SaaS', FALSE, 3),
    ('b3fb1db1-f78e-4744-bd1e-21d25b93ebf9', '2558527f-534c-404b-a3a0-307873293780', 'On-premises with virtualization', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d86d10d4-a99a-47e9-ad08-03588e1ee2ee', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A company is migrating legacy applications to the cloud. The IT security team needs to determine who is responsible for securing the physical Azure datacenters, including locks, cameras, and physical access controls. Who is responsible for physical datacenter security in Azure?',
        'Physical security of datacenters is always Microsoft''s responsibility, in every service model (IaaS, PaaS, SaaS).', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('993a1e8c-3f4d-4202-8d03-011888e20fd4', 'd86d10d4-a99a-47e9-ad08-03588e1ee2ee', 'The customer', FALSE, 1),
    ('d3a149e4-2b9b-4eb5-8ab0-d289e47a9c48', 'd86d10d4-a99a-47e9-ad08-03588e1ee2ee', 'Microsoft (the cloud provider)', TRUE, 2),
    ('96040ad5-c452-4097-85ca-8cd641c1e302', 'd86d10d4-a99a-47e9-ad08-03588e1ee2ee', 'Both Microsoft and the customer equally', FALSE, 3),
    ('f060caa0-0934-4e0e-9a25-2d6ce9d8895e', 'd86d10d4-a99a-47e9-ad08-03588e1ee2ee', 'A third-party auditor designated by the customer', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9b4dd959-62fa-44c2-992b-0bb0e25dfe46', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'An e-commerce company experiences a 10x traffic spike every year during Black Friday weekend. For the remaining 51 weeks, traffic is minimal. The company wants to avoid paying for unused compute capacity during low-traffic periods. Which cloud benefit best addresses this scenario?',
        'Elasticity automatically scales resources out for demand spikes and back in afterwards, so cost tracks actual usage.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4787d24d-2c9e-49e0-b388-5d385ade5520', '9b4dd959-62fa-44c2-992b-0bb0e25dfe46', 'High availability', FALSE, 1),
    ('4708afd6-4d66-4a37-929d-fdedb563733c', '9b4dd959-62fa-44c2-992b-0bb0e25dfe46', 'Geo-distribution', FALSE, 2),
    ('0c5fc08b-05a5-496f-a4eb-9a7182e66009', '9b4dd959-62fa-44c2-992b-0bb0e25dfe46', 'Elasticity', TRUE, 3),
    ('3ad608ad-22c6-44de-bc01-a2f360e74332', '9b4dd959-62fa-44c2-992b-0bb0e25dfe46', 'Disaster recovery', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a3088a85-2bc8-4be1-8933-3ceed0304f28', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A global company wants to deploy its application in multiple geographic regions to ensure that users in Asia, Europe, and the Americas all experience low latency when accessing the application. Which cloud benefit does this deployment strategy leverage?',
        'Geo-distribution means deploying to multiple regions so users are served from a datacenter close to them, reducing latency.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ecd3ac9d-2824-4d52-8093-c213c125738a', 'a3088a85-2bc8-4be1-8933-3ceed0304f28', 'High availability', FALSE, 1),
    ('06efecd1-8225-4847-a801-975408cebf4c', 'a3088a85-2bc8-4be1-8933-3ceed0304f28', 'Elasticity', FALSE, 2),
    ('1a1f02f3-3ed1-4781-b03a-a4cad938b3bf', 'a3088a85-2bc8-4be1-8933-3ceed0304f28', 'Agility', FALSE, 3),
    ('b1b94886-d7da-40fc-8428-9795ddacdf81', 'a3088a85-2bc8-4be1-8933-3ceed0304f28', 'Geo-distribution', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9933ff9b-48e5-4459-837e-f17c4e4c6dcb', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A startup wants to launch a new mobile application backend. They need to provision development servers, a database, and a load balancer today and begin testing by tomorrow morning. In a traditional on-premises model, this would take 6 to 8 weeks. Which cloud benefit does this scenario describe?',
        'Agility is the ability to rapidly provision and configure cloud resources, drastically cutting time-to-market.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('311294a5-c2af-4b45-a2f6-65da1689fbb1', '9933ff9b-48e5-4459-837e-f17c4e4c6dcb', 'Scalability', FALSE, 1),
    ('3e3db373-c284-4c5b-9c2f-a6fb98a045f3', '9933ff9b-48e5-4459-837e-f17c4e4c6dcb', 'Disaster recovery', FALSE, 2),
    ('4a327972-0831-4acb-9074-ef09c3897d9e', '9933ff9b-48e5-4459-837e-f17c4e4c6dcb', 'Geo-distribution', FALSE, 3),
    ('def058c3-12f5-4e94-910e-aba2d72bd13d', '9933ff9b-48e5-4459-837e-f17c4e4c6dcb', 'Agility', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('834c2508-4925-482b-a5f8-901f6aa08877', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A manufacturing company is calculating the total cost of its current on-premises infrastructure. The costs include: server hardware ($500K/yr), datacenter facility rental ($120K/yr), electricity ($80K/yr), and IT staff for server maintenance ($200K/yr). They want to migrate to Azure and need to categorize these costs properly. Which type of expenditure do these on-premises costs represent?',
        'Server hardware purchases are Capital Expenditure (CapEx); facility rental, electricity, and staff are ongoing Operational Expenditure (OpEx). On-premises infrastructure always involves both.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('297e67c9-d7e8-4f48-a776-7cdda12d2028', '834c2508-4925-482b-a5f8-901f6aa08877', 'Operational Expenditure (OpEx)', FALSE, 1),
    ('0ed4b2f0-49af-4325-9819-3149f6f985ec', '834c2508-4925-482b-a5f8-901f6aa08877', 'Capital Expenditure (CapEx) and OpEx', TRUE, 2),
    ('96069d19-5aec-40ba-ac8c-409cd5712856', '834c2508-4925-482b-a5f8-901f6aa08877', 'Operational Expenditure (OpEx) only', FALSE, 3),
    ('789325c3-4aab-4f51-b259-175790cda378', '834c2508-4925-482b-a5f8-901f6aa08877', 'Capital Expenditure (CapEx) only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c9abbf31-c257-425d-a27c-301db150bbe1', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'An organization is using Azure Virtual Machines for its application. The security team needs to determine who is responsible for applying operating system patches and updates to these VMs. Who is responsible for patching the OS on Azure Virtual Machines?',
        'With IaaS (Azure VMs), the customer manages and patches the guest operating system; Microsoft manages the physical infrastructure only.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bc865809-2c2f-4a18-b50d-2209f8b1c93d', 'c9abbf31-c257-425d-a27c-301db150bbe1', 'Microsoft, as part of the IaaS service', FALSE, 1),
    ('856b54ef-3c1b-405d-bb4e-ae6f66b29cd1', 'c9abbf31-c257-425d-a27c-301db150bbe1', 'The customer', TRUE, 2),
    ('2f8a81d9-fac8-422c-b6bf-69aa50fa5699', 'c9abbf31-c257-425d-a27c-301db150bbe1', 'Both Microsoft and the customer share this responsibility equally', FALSE, 3),
    ('4155c41c-d1db-45c8-b68d-af01c8ca8204', 'c9abbf31-c257-425d-a27c-301db150bbe1', 'The customer''s managed service provider, automatically', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bd294d8a-4432-4ff1-b326-6c4917b6a7ea', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'MULTIPLE_CHOICE', 'A company is evaluating Microsoft 365 for its employees. The IT team is assessing the shared responsibility model. They need to identify which responsibilities remain with the company when using Microsoft 365. Which two responsibilities remain with the company when using Microsoft 365? (Choose 2)',
        'In SaaS, the customer always keeps responsibility for managing user accounts/access and protecting their own data; Microsoft manages the physical infrastructure and patches the application itself.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c8b50a70-e5da-4785-880a-732c05baa975', 'bd294d8a-4432-4ff1-b326-6c4917b6a7ea', 'Managing the physical datacenter security', FALSE, 1),
    ('76473485-fc5e-4190-af91-2e3e3cbb4bd9', 'bd294d8a-4432-4ff1-b326-6c4917b6a7ea', 'Managing user accounts and access permissions', TRUE, 2),
    ('0db8f778-b4cd-421f-bc7d-d0ff056ee20a', 'bd294d8a-4432-4ff1-b326-6c4917b6a7ea', 'Protecting company data and configuring data loss prevention', TRUE, 3),
    ('3a38e8ba-dbe9-4ddc-98dc-018a64aba8d8', 'bd294d8a-4432-4ff1-b326-6c4917b6a7ea', 'Patching the Microsoft 365 application code', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('449c73c3-e98a-45ef-9935-80715f940cd6', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A company''s CFO asks the cloud architect to explain the financial model of Azure. The company currently budgets for large server purchases every 3 years. They want to understand how Azure changes this model. How does Azure change the company''s financial model?',
        'Azure replaces large upfront CapEx investments with ongoing OpEx payments based on actual consumption.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('02e6fdbe-ff0d-4d39-a80b-408d33f7fc52', '449c73c3-e98a-45ef-9935-80715f940cd6', 'It replaces all costs with a single annual fixed payment', FALSE, 1),
    ('44a42df2-65bd-4bb7-8a53-9ce000e3becb', '449c73c3-e98a-45ef-9935-80715f940cd6', 'It eliminates all IT costs for the organization', FALSE, 2),
    ('59d11b73-ae49-49ec-9af1-94aad9bc7a2b', '449c73c3-e98a-45ef-9935-80715f940cd6', 'It converts large upfront CapEx investments into monthly OpEx payments based on usage', TRUE, 3),
    ('7008c43d-72c3-4a10-a7a4-94196bff22e3', '449c73c3-e98a-45ef-9935-80715f940cd6', 'It requires a 3-year commitment upfront to receive discounted pricing', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('625a60cf-1048-46d0-8ecf-d651b5331838', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'An organization is using Azure with a public cloud model. Their security team is performing a risk assessment and needs to identify which security responsibility is ALWAYS retained by the customer, regardless of whether they use IaaS, PaaS, or SaaS. Which responsibility always belongs to the customer in all cloud service models?',
        'Regardless of service model, the customer always retains responsibility for protecting their data and managing access to it.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5d757452-6570-449e-be85-ab9cd6b1c7db', '625a60cf-1048-46d0-8ecf-d651b5331838', 'Operating system management', FALSE, 1),
    ('605595d1-9277-415e-a3a7-00eca9a1a1bc', '625a60cf-1048-46d0-8ecf-d651b5331838', 'Physical security of datacenters', FALSE, 2),
    ('e1f9e99b-309c-4b9c-93ea-2a4ba5ce3931', '625a60cf-1048-46d0-8ecf-d651b5331838', 'Protection of customer data and access management', TRUE, 3),
    ('1be1651e-4d19-4b36-a9c4-02d673cf702e', '625a60cf-1048-46d0-8ecf-d651b5331838', 'Network infrastructure management', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('270f4a42-fbf8-4a71-8876-e27a2b084b49', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A company has a primary production site hosted on Azure. They are planning for business continuity and want to ensure that if the primary Azure region experiences a major outage, their application can recover in another region with minimal data loss. Which cloud benefit addresses this requirement?',
        'Disaster recovery replicates applications and data to another region so the service can be restored after a regional outage.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2be26b52-a323-40e0-a1d6-6305d72db6c4', '270f4a42-fbf8-4a71-8876-e27a2b084b49', 'High availability', FALSE, 1),
    ('b5c5217d-f737-4ca3-ac4c-f8e701968a75', '270f4a42-fbf8-4a71-8876-e27a2b084b49', 'Elasticity', FALSE, 2),
    ('93a2864f-3dd2-4fc4-a3e5-b1024bf6ce2a', '270f4a42-fbf8-4a71-8876-e27a2b084b49', 'Disaster recovery', TRUE, 3),
    ('8e02d672-fd06-4dcb-845c-513fe7acc618', '270f4a42-fbf8-4a71-8876-e27a2b084b49', 'Scalability', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4576af54-6420-43d5-90dc-e276abeea741', '087b4e3a-2038-4562-a0b0-4bfb032f5323', 'SINGLE_CHOICE', 'A company needs to choose between two cloud models. Model A: The company owns and operates all servers in their own datacenter. Model B: A third-party provider owns all hardware, and multiple organizations share the same physical infrastructure, accessible over the internet. What is Model B called?',
        'A public cloud is owned by a third-party provider and shared by multiple organizations (multi-tenant) over the internet.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('930115bd-2720-4b70-b00e-607eeac170b1', '4576af54-6420-43d5-90dc-e276abeea741', 'Private cloud', FALSE, 1),
    ('868e0755-0902-462f-85bd-3bc85cb04498', '4576af54-6420-43d5-90dc-e276abeea741', 'Hybrid cloud', FALSE, 2),
    ('4424f5aa-0bcd-4122-99cd-f8e0c6ca5e62', '4576af54-6420-43d5-90dc-e276abeea741', 'Community cloud', FALSE, 3),
    ('4df338b7-007c-4a7e-a6f9-97a3af70c6e8', '4576af54-6420-43d5-90dc-e276abeea741', 'Public cloud', TRUE, 4);

