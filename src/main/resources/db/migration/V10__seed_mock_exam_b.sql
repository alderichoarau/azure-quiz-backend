-- Examen blanc officiel B (AZ900_Test_B.docx) - real AZ-900 mock exam content
-- 50 questions with answers/explanations from the same document (self-contained practice test).
-- This is an official, complete mock exam: it must stay independent from other mock exams and
-- from course modules - it is excluded from the random cross-module exam draw (module type
-- MOCK_EXAM, see QuestionRepository.findRandomActiveByCertification).

INSERT INTO module (id, certification_id, code, title, description, position, type)
VALUES ('ac47b83a-7a78-4a78-be60-383b3b4b08c5', '00000000-0000-0000-0000-000000000001', 'mock-exam-b', 'Examen blanc officiel B',
        'Examen blanc officiel AZ-900 complet, 50 questions - a realiser en une seule fois.', 8, 'MOCK_EXAM');

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c0275e7e-43a6-4fc4-a813-89312bc6ffd4', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'MULTIPLE_CHOICE', 'What two types (tiers) of Azure DDoS protection are available? Select two.',
        'DDoS Network Protection is a tier of Azure DDoS protection that provides protection for Azure resources against network layer attacks. It helps to mitigate DDoS attacks targeting the network infrastructure of Azure services.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ca49c300-dd61-41d1-ba5d-d460fca36415', 'c0275e7e-43a6-4fc4-a813-89312bc6ffd4', 'DDoS Network Protection', TRUE, 1),
    ('8a138381-a5f2-44a8-921c-8b5d8b1f4733', 'c0275e7e-43a6-4fc4-a813-89312bc6ffd4', 'DDoS IP Protection', TRUE, 2),
    ('ba50a5ea-c545-47e3-a197-fd20aae2be51', 'c0275e7e-43a6-4fc4-a813-89312bc6ffd4', 'DDoS Advanced Protection', FALSE, 3),
    ('be32c8d1-7175-418b-9d45-278e850a83b0', 'c0275e7e-43a6-4fc4-a813-89312bc6ffd4', 'DDoS Premium Protection', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4c173468-53f2-4cca-91d5-b83114c6ac43', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which optional security feature does Azure Application Gateway provide that the Azure Load Balancer does not?',
        'Azure Application Gateway provides a Web Application Firewall (WAF) as an optional security feature, which allows for protection against common web vulnerabilities and attacks. This feature is not available in Azure Load Balancer, making it a key differentiator in terms of security capabilities.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6a793b11-385c-47f3-8216-0830c402399e', '4c173468-53f2-4cca-91d5-b83114c6ac43', 'Web Application Firewall (or WAF)', TRUE, 1),
    ('d3a27c70-10f3-49f4-b207-4db4825f8c98', '4c173468-53f2-4cca-91d5-b83114c6ac43', 'Advanced DDoS Protection', FALSE, 2),
    ('d6c62f17-81f3-45a0-9209-89d54293f21c', '4c173468-53f2-4cca-91d5-b83114c6ac43', 'Azure AD Advanced Information Protection', FALSE, 3),
    ('daa2c81d-efc0-47b6-849e-32769dda9055', '4c173468-53f2-4cca-91d5-b83114c6ac43', 'Multi-Factor Authentication', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f2768feb-a36f-4bb2-9d99-7f4fcf6bbcbd', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which free Azure network security feature evaluates traffic entering or leaving a subnet against rule-based filters and allows or denies it?',
        'Network Security Group (NSG) is a free Azure network security feature that acts as a basic firewall for controlling traffic to network interfaces, VMs, and subnets. It evaluates traffic against rule-based filters and allows or denies it based on the defined rules, making it the correct choice for this scenario.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('51d2e27f-87ec-4d46-85c9-e8eb9dea44e1', 'f2768feb-a36f-4bb2-9d99-7f4fcf6bbcbd', 'Azure DDoS Protection', FALSE, 1),
    ('f8f5da87-c80f-42e4-9df9-92f6baa2f81f', 'f2768feb-a36f-4bb2-9d99-7f4fcf6bbcbd', 'Azure Firewall', FALSE, 2),
    ('68709615-066d-4b37-9ea0-846e1e0082c0', 'f2768feb-a36f-4bb2-9d99-7f4fcf6bbcbd', 'Network Security Group', TRUE, 3),
    ('e5397444-32dd-404e-8d51-9bfed1026e22', 'f2768feb-a36f-4bb2-9d99-7f4fcf6bbcbd', 'Advanced Threat Protection (ARP)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ff42ace8-a369-4e0a-bb1b-a62996db4777', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'You''re using the Azure CLI from a command prompt to manage Azure resources. Which command do you run to sign in interactively to your Azure account using the Azure CLI?',
        'The correct command to log in to your Azure account using Azure CLI is ''az login''. This command initiates the login process and prompts you to enter your Azure account credentials to authenticate and access your resources.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('50041fe4-5f4a-4fb3-8d3d-90ce07dca9de', 'ff42ace8-a369-4e0a-bb1b-a62996db4777', 'az login', TRUE, 1),
    ('41ac2dec-1c17-4bcd-9a6e-1a17162bf8ee', 'ff42ace8-a369-4e0a-bb1b-a62996db4777', 'az account connect', FALSE, 2),
    ('68029c5a-aaf2-4174-b75b-dcaf014c9832', 'ff42ace8-a369-4e0a-bb1b-a62996db4777', 'az account login', FALSE, 3),
    ('a8fe773f-f7af-44f9-bf1a-9b3bcbfe04f4', 'ff42ace8-a369-4e0a-bb1b-a62996db4777', 'az connect', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7113879b-84d7-490f-b3f4-56ed771b48cf', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'What is a primary benefit of using a command-line tool (PowerShell or the Azure CLI) instead of the Azure portal?',
        'Automation is the key advantage of using a command-line tool like PowerShell or the Azure CLI. By scripting tasks and processes, users can automate repetitive tasks, streamline workflows, and ensure consistent configurations across environments. This not only saves time but also improves overall efficiency and reduces the potential for errors.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b3acb4d5-e526-4c21-852b-e98ab562741d', '7113879b-84d7-490f-b3f4-56ed771b48cf', 'Quicker to deploy VMs', FALSE, 1),
    ('94a0512e-2a10-40dc-90a8-391e18ad97b4', '7113879b-84d7-490f-b3f4-56ed771b48cf', 'Automation', TRUE, 2),
    ('651f5679-0f41-4a65-a3ba-967d74188456', '7113879b-84d7-490f-b3f4-56ed771b48cf', 'Cheaper', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('43e12ff9-ba1f-4e86-8f30-82a20a129d11', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'In the Azure portal, where do you browse and acquire third-party virtual machine images and other third-party offers?',
        'Azure Marketplace is the correct platform within the Azure portal where users can browse and acquire third-party virtual machine images and other third-party offers. It provides a wide range of solutions and services from various vendors for users to choose from.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5a276ba8-0bd4-4df4-ac6c-8d6bfa973b96', '43e12ff9-ba1f-4e86-8f30-82a20a129d11', 'Bing', FALSE, 1),
    ('ba68dc36-1523-49d0-83d6-073a08b28c4f', '43e12ff9-ba1f-4e86-8f30-82a20a129d11', 'Azure Marketplace', TRUE, 2),
    ('9cb38c86-5d5e-43e1-9c6f-267fd6cd2673', '43e12ff9-ba1f-4e86-8f30-82a20a129d11', 'Choose an image when creating a VM', FALSE, 3),
    ('6536030a-49b8-4a46-a662-aa5a882ca59b', '43e12ff9-ba1f-4e86-8f30-82a20a129d11', 'Azure mobile app', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5176bbcd-5322-4654-9f92-6c7f0c6728f5', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which Azure database service is specifically designed to provide extremely low-latency responses for small, frequent read/write requests?',
        'Cosmos DB is a globally distributed, multi-model database service in Azure that is specifically designed to provide extremely low-latency responses for small, frequent read/write requests. It offers high availability, scalability, and low latency for real-time applications and services.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('44fa4c3a-9b7c-4a12-9917-2ae2672fea5e', '5176bbcd-5322-4654-9f92-6c7f0c6728f5', 'SQL Server in a VM', FALSE, 1),
    ('b99fc91f-a446-4776-a5b1-37ab0a79f0e4', '5176bbcd-5322-4654-9f92-6c7f0c6728f5', 'SQL Database', FALSE, 2),
    ('1acd0f08-6ca0-4a78-93de-07692e77157c', '5176bbcd-5322-4654-9f92-6c7f0c6728f5', 'Synapse Analytics', FALSE, 3),
    ('fe0eae46-b5af-41b6-b344-58f8c789f2a6', '5176bbcd-5322-4654-9f92-6c7f0c6728f5', 'Cosmos DB', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cea2983a-98a8-458d-9050-0a19efcc344c', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which Azure Storage service is best suited for storing unstructured data such as text or binary data?',
        'Azure Blob Storage is the best choice for storing unstructured data such as text or binary data. It is designed to store large amounts of unstructured data, making it perfect for documents, images, videos, and other file types.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5776c82e-fd16-4636-bb31-810cd1e8a4ce', 'cea2983a-98a8-458d-9050-0a19efcc344c', 'Azure Table Storage', FALSE, 1),
    ('ebb1f76f-cfe3-40b7-b2fc-0af6b76bc5ca', 'cea2983a-98a8-458d-9050-0a19efcc344c', 'Azure Blob Storage', TRUE, 2),
    ('2fccbd6c-a32b-4020-b7da-8b9caa43de5a', 'cea2983a-98a8-458d-9050-0a19efcc344c', 'Azure Queue Storage', FALSE, 3),
    ('40751a74-cd55-4bee-9aab-7833c104e0e3', 'cea2983a-98a8-458d-9050-0a19efcc344c', 'Azure File Storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('184ee5e7-7978-42b7-8df5-39ff2c5ce19d', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Your company hosts a global web application that serves large media files and static website assets. Users in different regions report slow loading times. How can Azure Content Delivery Network (CDN) improve performance for these users?',
        'Azure Content Delivery Network (CDN) improves performance by caching static content like images, videos, and scripts at edge locations closer to users. This reduces the distance data needs to travel, resulting in faster loading times for users in different regions.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0c26f71f-055e-4c07-b786-52c1c880cff3', '184ee5e7-7978-42b7-8df5-39ff2c5ce19d', 'By caching static content such as images, videos, and scripts at edge locations closer to users', TRUE, 1),
    ('1075da8f-cd29-4d94-8baa-cbae1b2c715c', '184ee5e7-7978-42b7-8df5-39ff2c5ce19d', 'By moving the application’s compute resources into each user’s local region', FALSE, 2),
    ('2598f27c-fe4d-4202-8186-881c31a8f6b8', '184ee5e7-7978-42b7-8df5-39ff2c5ce19d', 'By encrypting traffic between users and Azure Storage', FALSE, 3),
    ('050f010c-7818-42e1-baaf-10026bf2d741', '184ee5e7-7978-42b7-8df5-39ff2c5ce19d', 'By increasing the virtual machine size that hosts the web application', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('61a82002-c6a2-492f-952e-f01325e97b88', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which Azure service distributes incoming network traffic across multiple identical virtual machines so they share the workload and respond to requests?',
        'Load Balancer or Application Gateway is the correct choice as they are Azure services specifically designed to distribute incoming network traffic across multiple identical virtual machines to ensure they share the workload and respond to requests efficiently. Load Balancer operates at the network layer (Layer 4) and Application Gateway operates at the application layer (Layer 7) for more advanced load balancing capabilities.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('67989ad9-eec6-4628-897a-0f19b511c6ea', '61a82002-c6a2-492f-952e-f01325e97b88', 'Azure App Services', FALSE, 1),
    ('f0e8e5fb-4728-4b8d-a2d5-84d2826e916d', '61a82002-c6a2-492f-952e-f01325e97b88', 'Azure Logic Apps', FALSE, 2),
    ('7ee3fd68-ebf2-4c16-aa40-e801dc67caab', '61a82002-c6a2-492f-952e-f01325e97b88', 'Virtual Network', FALSE, 3),
    ('bfd6f8fa-c112-4fb9-8a15-0b66d082e149', '61a82002-c6a2-492f-952e-f01325e97b88', 'Load Balancer or Application Gateway', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ed3e37d2-3042-4d08-a680-c2f06d50e226', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which of the following is NOT a typical characteristic of Azure Functions?',
        'Azure Functions are not designed for long-running backend batch applications that run continuously. Instead, they are intended for short-lived, event-driven functions that scale automatically based on demand. This serverless architecture is ideal for handling individual tasks or processes in a scalable and cost-effective manner.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2bfd1e0b-89d7-4535-9bc7-636d07e22994', 'ed3e37d2-3042-4d08-a680-c2f06d50e226', 'You can edit function code directly in the Azure portal for quick testing and troubleshooting', FALSE, 1),
    ('46bf72ee-2707-45fc-9b92-2c8341083e60', 'ed3e37d2-3042-4d08-a680-c2f06d50e226', 'Functions can be triggered by Azure events (for example, when a new file is added to a Storage blob container)', FALSE, 2),
    ('594fff4c-042c-470c-86f4-8fb5a6354689', 'ed3e37d2-3042-4d08-a680-c2f06d50e226', 'On the consumption plan, there is a monthly free grant, so small workloads can potentially cost nothing', FALSE, 3),
    ('642a5bb6-1b6e-47a3-bd5d-280aedd57608', 'ed3e37d2-3042-4d08-a680-c2f06d50e226', 'They are designed for long-running backend batch applications that run continuously', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ec06a49f-e98e-4a4d-8e4e-72b46a969218', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which Azure service lets you automatically scale a group of identical virtual machines (auto-scale from a single instance to many instances) and provides built-in load balancing for those VMs?',
        'Virtual Machine Scale Sets in Azure enable you to automatically scale a group of identical virtual machines based on demand. This feature allows you to easily increase or decrease the number of VM instances in the set, providing scalability and built-in load balancing for those VMs.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('af6970e9-292f-490b-9a2f-56e82999f48a', 'ec06a49f-e98e-4a4d-8e4e-72b46a969218', 'Azure Virtual Machines', FALSE, 1),
    ('8c2b480f-3a86-4109-95e1-15ee6f38988e', 'ec06a49f-e98e-4a4d-8e4e-72b46a969218', 'Azure App Services', FALSE, 2),
    ('de6f39a8-72e1-4834-879a-40591f203330', 'ec06a49f-e98e-4a4d-8e4e-72b46a969218', 'Virtual Machine Scale Sets', TRUE, 3),
    ('62b54041-3ad8-491f-80b8-b6e75dceeb48', 'ec06a49f-e98e-4a4d-8e4e-72b46a969218', 'Application Gateway', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7904841f-a96b-4665-992e-3ee22e5b36e3', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which of the following is a disadvantage of using capital expenditures (CapEx) instead of operating expenditures (OpEx)?',
        'This choice is correct because one of the disadvantages of using capital expenditures (CapEx) is that you must wait over a period of years to depreciate that investment on your taxes. This delayed tax benefit is a key difference between CapEx and OpEx.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('42179ed3-24b0-45db-a71b-4106b3e3c663', '7904841f-a96b-4665-992e-3ee22e5b36e3', 'You can deduct expenses as they occur', FALSE, 1),
    ('382909c5-1724-4e70-a79e-23c011bf1cc9', '7904841f-a96b-4665-992e-3ee22e5b36e3', 'You are not guaranteed to make a profit', FALSE, 2),
    ('c4be7e6c-8937-4815-991f-8605c35a439f', '7904841f-a96b-4665-992e-3ee22e5b36e3', 'You must wait over a period of years to depreciate that investment on your taxes', TRUE, 3),
    ('b2beaf2a-72a6-4b2e-9b30-cfee074338fc', '7904841f-a96b-4665-992e-3ee22e5b36e3', 'It does not require a lot of up front money', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('05b36ea0-f594-44f1-9179-cfa06995756e', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which concept describes the ability to run your applications and access data in another environment quickly after an outage or failure?',
        'Business Continuity / Disaster Recovery (BC/DR) is the correct choice as it specifically refers to the ability to maintain operations and quickly recover from unexpected events such as outages or failures. This concept ensures that applications can be run and data can be accessed in alternative environments to minimize downtime and maintain business operations.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cd0c40bc-3ebc-467f-b2ec-11ae63724a3a', '05b36ea0-f594-44f1-9179-cfa06995756e', 'Reproducible deployments', FALSE, 1),
    ('4020670a-7829-4ad2-b26b-da06ca8ce0d5', '05b36ea0-f594-44f1-9179-cfa06995756e', 'Business Continuity / Disaster Recovery (BC/DR)', TRUE, 2),
    ('80697b1f-024b-4113-a1a3-19f5e1cd05f5', '05b36ea0-f594-44f1-9179-cfa06995756e', 'Azure Devops', FALSE, 3),
    ('84873c39-f818-4ba4-a2fa-e1745b823687', '05b36ea0-f594-44f1-9179-cfa06995756e', 'Azure Policy', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f96ed28f-b1a2-4e37-9239-7f929f085287', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which cloud service model places the greatest responsibility on the customer for managing the operating system and underlying infrastructure?',
        'Infrastructure as a Service (IaaS) places the greatest responsibility on the customer for managing the operating system and underlying infrastructure. With IaaS, the customer is responsible for managing the virtual machines, storage, networking, and operating system configurations.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7ff5750a-d6d3-4d24-9c00-e10b60c8a834', 'f96ed28f-b1a2-4e37-9239-7f929f085287', 'IaaS', TRUE, 1),
    ('06575446-c942-4d2f-a60b-170a234ff368', 'f96ed28f-b1a2-4e37-9239-7f929f085287', 'PaaS', FALSE, 2),
    ('3fa82cf2-2fd3-409b-878b-c83a3994fb16', 'f96ed28f-b1a2-4e37-9239-7f929f085287', 'SaaS', FALSE, 3),
    ('1ed0f5ce-0be3-49b8-8498-ba6b8773d48c', 'f96ed28f-b1a2-4e37-9239-7f929f085287', 'FaaS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d899de7e-15ad-4533-bc69-61574e8bb83b', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Why is Azure App Services considered Platform as a Service?',
        'Azure App Services is considered Platform as a Service because users provide Azure with their code and configuration, and Azure manages the underlying hardware and infrastructure. Users do not have direct access to or control over the underlying hardware, which aligns with the characteristics of PaaS offerings.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('85c698d0-398d-49f1-98ac-1204a9e00c86', 'd899de7e-15ad-4533-bc69-61574e8bb83b', 'You are responsible for keeping the operating system up to date with the latest patches', FALSE, 1),
    ('4a920236-1eca-43f4-b3cc-49a0a6b6af61', 'd899de7e-15ad-4533-bc69-61574e8bb83b', 'You can decide on what type of virtual machine it runs - A-series, or D-series, or even H-series', FALSE, 2),
    ('3451370f-b38c-4945-ab8e-a4395cf68fbc', 'd899de7e-15ad-4533-bc69-61574e8bb83b', 'You give Azure the code and configuration, and you have no access to the underlying hardware', TRUE, 3),
    ('131bfca6-f9c4-47a6-89f5-fec0c61b4a21', 'd899de7e-15ad-4533-bc69-61574e8bb83b', 'Azure App Services is not PaaS, it''s Software as a Service.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7918d8a1-1c91-4910-962e-be65f78e3774', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which of the following is NOT an example of Infrastructure as a Service (IaaS) in Azure?',
        'Azure SQL Database is NOT an example of Infrastructure as a Service (IaaS) in Azure, as it is a Platform as a Service (PaaS) offering that provides a fully managed SQL database service.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('48ceb4af-2deb-41c9-bd95-ab72ca35f0fc', '7918d8a1-1c91-4910-962e-be65f78e3774', 'Virtual Machine', FALSE, 1),
    ('1b0588bf-609d-41d9-91b9-22e20389cb5c', '7918d8a1-1c91-4910-962e-be65f78e3774', 'Virtual Network', FALSE, 2),
    ('52302f0b-6583-4760-821c-d02c7b83a98e', '7918d8a1-1c91-4910-962e-be65f78e3774', 'Virtual Machine Scale Sets', FALSE, 3),
    ('2ef467be-6beb-4d89-8583-3b128aaa9f42', '7918d8a1-1c91-4910-962e-be65f78e3774', 'SQL Server in a VM', FALSE, 4),
    ('4b8db40f-01f3-4c7f-8884-0c0081731aac', '7918d8a1-1c91-4910-962e-be65f78e3774', 'Azure SQL Database', TRUE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a282545b-8eb5-4ba8-bd73-ef671aa944f3', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which of the following is a good example of a Hybrid cloud?',
        NULL, 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('04528c44-40d7-4ce1-89d2-cad25ea73782', 'a282545b-8eb5-4ba8-bd73-ef671aa944f3', 'A server runs in your own environment, but places files in the cloud so that it can extend the amount of storage it has access to.', TRUE, 1),
    ('66d3e297-138d-406d-af2b-bf9c6fab4a31', 'a282545b-8eb5-4ba8-bd73-ef671aa944f3', 'Your code is a mobile app that runs on iOS and Android phones, but it uses a database in the cloud.', FALSE, 2),
    ('4aea238d-693e-4023-adfb-1d49ec9bd930', 'a282545b-8eb5-4ba8-bd73-ef671aa944f3', 'Your users are inside your corporate network but your applications and data are in the cloud.', FALSE, 3),
    ('ced688d8-7bc7-4be3-9b85-6c57bb3554ca', 'a282545b-8eb5-4ba8-bd73-ef671aa944f3', 'Technology that allows you to grow living tissue on top of an exoskeleton, making Terminators impossible to spot among humans.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9fa75007-0e87-4b6b-9200-b9bb87f5b301', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Your company manages access to several Software-as-a-Service (SaaS) applications like Salesforce and ServiceNow. They want employees to sign in once and then access all apps without re-entering passwords. Which Microsoft Entra ID feature should the company implement?',
        'Single Sign-On (SSO) is the correct choice for the company''s requirement. SSO allows users to authenticate once and then access multiple applications without the need to re-enter their credentials. It provides a seamless user experience and improves productivity by reducing the number of passwords users need to remember.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5323fcb6-0854-4541-b6c1-d09a66c996a4', '9fa75007-0e87-4b6b-9200-b9bb87f5b301', 'Conditional Access', FALSE, 1),
    ('56424f27-e45b-4965-b5b3-b8ee19cf6828', '9fa75007-0e87-4b6b-9200-b9bb87f5b301', 'Single Sign-On (SSO)', TRUE, 2),
    ('b1a054b6-8bf5-42c7-bdeb-49765b4115bb', '9fa75007-0e87-4b6b-9200-b9bb87f5b301', 'Privileged Identity Management', FALSE, 3),
    ('48d5105e-d4eb-49d2-8e5a-0df7ec4e3924', '9fa75007-0e87-4b6b-9200-b9bb87f5b301', 'Identity Protection', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ab954415-b15e-47a0-bc1b-ba8c96bf3daf', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'An analytics team needs to process and visualize petabytes of structured and unstructured data from IoT devices in near real time. Which Azure service is most appropriate for this scenario?',
        'Azure Synapse Analytics is the most appropriate Azure service for processing and visualizing petabytes of structured and unstructured data in near real time. It provides capabilities for data integration, big data analytics, and data warehousing, making it ideal for handling large volumes of data from IoT devices efficiently.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2a1c1aa8-1d80-4218-bb23-3a68fca21ba2', 'ab954415-b15e-47a0-bc1b-ba8c96bf3daf', 'Azure Synapse Analytics', TRUE, 1),
    ('befb5c2b-8163-4cbd-b967-5dcaefba846a', 'ab954415-b15e-47a0-bc1b-ba8c96bf3daf', 'Azure SQL Database', FALSE, 2),
    ('db28d3bc-9b54-4098-b678-013a15695ee8', 'ab954415-b15e-47a0-bc1b-ba8c96bf3daf', 'Azure App Service', FALSE, 3),
    ('49e49e50-0215-4546-9128-79f6fc01c779', 'ab954415-b15e-47a0-bc1b-ba8c96bf3daf', 'Microsoft Power BI', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1418a491-246c-4353-a858-f366743846f2', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Your company requires a disaster recovery strategy ensuring that if one Azure region becomes unavailable, resources and data remain accessible. How does Azure help meet this requirement?',
        'Azure helps meet the disaster recovery requirement by automatically replicating data to a paired region within the same geography. This ensures that if one Azure region becomes unavailable, resources and data can still be accessed from the paired region, providing high availability and continuity of operations.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('87980268-caf7-4243-962c-9b5fc8efe5b2', '1418a491-246c-4353-a858-f366743846f2', 'By replicating data automatically to a paired region within the same geography', TRUE, 1),
    ('e024d8f4-03dc-408f-bd01-790740041eda', '1418a491-246c-4353-a858-f366743846f2', 'By providing unlimited storage replication across any global region', FALSE, 2),
    ('46ae9abf-b620-456f-aa46-6b0c261a5fd1', '1418a491-246c-4353-a858-f366743846f2', 'By mirroring resources between different tenants', FALSE, 3),
    ('36471f6e-40c8-4357-838d-19d448166e9d', '1418a491-246c-4353-a858-f366743846f2', 'By requiring customers to manually copy data between regions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6f704b9d-4a66-43bf-9559-1a71d0a39e9f', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'An administrator wants to manage Azure resources from a browser without installing any tools locally. They prefer using command-line interfaces like Bash or PowerShell. Which Azure tool should they use?',
        'Azure Cloud Shell provides a browser-based shell experience that enables administrators to manage Azure resources using Bash or PowerShell without the need to install any tools locally. It offers a pre-configured environment with common tools and Azure command-line tools already installed.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f382234e-6e5e-47a5-a1e2-47a231ed46de', '6f704b9d-4a66-43bf-9559-1a71d0a39e9f', 'Azure CLI locally installed', FALSE, 1),
    ('092243d6-fcae-4fef-8d65-0f2e62f43535', '6f704b9d-4a66-43bf-9559-1a71d0a39e9f', 'Azure Cloud Shell', TRUE, 2),
    ('6ad3c2e8-9293-48f0-af3e-796403dca6a9', '6f704b9d-4a66-43bf-9559-1a71d0a39e9f', 'Azure PowerShell module', FALSE, 3),
    ('7c003348-804a-4b1e-9030-75235a2b25a7', '6f704b9d-4a66-43bf-9559-1a71d0a39e9f', 'Azure Portal Dashboard', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d01a053d-7da5-4337-9799-81704fec4e6e', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'A company needs to deploy Azure resources in a specific country to meet local data residency laws while maintaining low latency for users in that area. Which Azure concept allows them to choose the best location for deployment?',
        'Azure Regions are geographic locations where Azure resources are deployed. By choosing the appropriate Azure region, a company can ensure compliance with local data residency laws and minimize latency for users in that specific area. This makes Azure Regions the ideal concept for selecting the best location for deployment.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7daf611f-add6-4958-b534-576d0aea2cb1', 'd01a053d-7da5-4337-9799-81704fec4e6e', 'Availability Zones', FALSE, 1),
    ('1b11e05f-7e7d-4b5c-befe-f2b74a5d95aa', 'd01a053d-7da5-4337-9799-81704fec4e6e', 'Azure Regions', TRUE, 2),
    ('fc71b820-6a47-4bff-a977-6252b92b4133', 'd01a053d-7da5-4337-9799-81704fec4e6e', 'Resource Groups', FALSE, 3),
    ('55b46bd9-0477-41ea-8b07-0ce725fb44c5', 'd01a053d-7da5-4337-9799-81704fec4e6e', 'Management Groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('78f2bc1e-d421-4619-bebf-fffd91709100', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'What is the Azure Service Level Agreement (SLA) uptime guarantee for two or more Virtual Machines deployed in the same Availability Set?',
        '99.95% uptime guarantee is the correct SLA for two or more Virtual Machines deployed in the same Availability Set in Azure. This level of uptime guarantee ensures high availability and reliability for the Virtual Machines within the set.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0192ac3e-572e-41d8-ab4e-ddc8aafeec5a', '78f2bc1e-d421-4619-bebf-fffd91709100', '99.99%', FALSE, 1),
    ('ae3f2fe4-42e0-49db-8f44-a98c87f710df', '78f2bc1e-d421-4619-bebf-fffd91709100', '99.90%', FALSE, 2),
    ('9f6912fb-8c25-4d55-b950-1a3fb951295f', '78f2bc1e-d421-4619-bebf-fffd91709100', '99.95%', TRUE, 3),
    ('d7a43e97-dc11-49ab-9ab2-0705443d16d0', '78f2bc1e-d421-4619-bebf-fffd91709100', '100%', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('46bb24e2-664d-4057-ab5c-de73b162d54c', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'How do you get access to services in Private Preview mode?',
        'To gain access to services in Private Preview mode, users typically need to apply for access. This process allows the service provider to control who can test the service, gather feedback, and ensure a smooth transition to general availability.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f6418e7f-1144-446d-8b98-4147c2485847', '46bb24e2-664d-4057-ab5c-de73b162d54c', 'They are available in the marketplace. You simply use them.', FALSE, 1),
    ('dbb346b4-6827-4fba-ba24-e553395a5b79', '46bb24e2-664d-4057-ab5c-de73b162d54c', 'You must agree to a terms of use first.', FALSE, 2),
    ('0471cba8-fac7-4459-8807-b932455ab134', '46bb24e2-664d-4057-ab5c-de73b162d54c', 'You must apply to use them.', TRUE, 3),
    ('72cb475e-b27e-40c8-ac5d-9a9e8bbc80bf', '46bb24e2-664d-4057-ab5c-de73b162d54c', 'You cannot use private preview services.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b74af24b-0e35-49ad-9d2c-4ead5c22c08b', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'What is the service level agreement for two or more Azure Virtual Machines that have been manually placed into different Availability Zones in the same region?',
        'The service level agreement for Azure Virtual Machines that have been manually placed into different Availability Zones in the same region is 99.99%. This choice accurately reflects the SLA for this scenario, providing a high level of availability and reliability.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('53af2388-2fae-4d4e-be14-8dee4e1e5d90', 'b74af24b-0e35-49ad-9d2c-4ead5c22c08b', '99.90%', FALSE, 1),
    ('a6974c0e-15f6-45fc-bbb1-cb1bac47aefe', 'b74af24b-0e35-49ad-9d2c-4ead5c22c08b', '99.95%', FALSE, 2),
    ('0e1f1914-22ca-453b-a5ae-094a267bbe4a', 'b74af24b-0e35-49ad-9d2c-4ead5c22c08b', '99.99%', TRUE, 3),
    ('677990ea-214e-4d5b-827c-9f78fea48c51', 'b74af24b-0e35-49ad-9d2c-4ead5c22c08b', '100%', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('68bd19d8-620f-42ca-8a85-e4364cad9397', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'A startup is experimenting with Azure but wants to avoid unexpected costs while testing services. They plan to deploy and delete resources frequently. Which statement best describes how Azure charges for resource usage?',
        'Azure charges only for the resources that are provisioned and running. This means that if a startup deploys resources for testing purposes and then deletes them, they will not incur any charges for those resources once they are no longer running. This flexibility in billing helps startups avoid unexpected costs while testing services.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('98acaea0-7206-4d98-b4cc-e152bd60c98b', '68bd19d8-620f-42ca-8a85-e4364cad9397', 'Azure bills a fixed monthly fee for each subscription, even if no resources are used.', FALSE, 1),
    ('5515820e-e632-412a-9ac2-4475d2edc636', '68bd19d8-620f-42ca-8a85-e4364cad9397', 'Azure charges only for the resources that are provisioned and running.', TRUE, 2),
    ('0a34338f-3e82-4660-bd21-e105dc99b279', '68bd19d8-620f-42ca-8a85-e4364cad9397', 'Azure requires a one-time setup fee when creating a new account.', FALSE, 3),
    ('0400ffd9-4260-4b2e-9433-50ae2e3c0fcb', '68bd19d8-620f-42ca-8a85-e4364cad9397', 'Azure charges for inactive virtual machines at a reduced rate.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7e6ca66b-0862-4a8b-98c5-9c92963e567f', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which Azure pricing model allows you to pay for compute resources by the second, with no long-term commitment?',
        'The Pay-As-You-Go pricing model in Azure allows you to pay for compute resources by the second, with no long-term commitment. This model is flexible and ideal for users who want to pay only for what they use without any upfront costs or termination fees.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6bb54f66-c923-494c-8025-e17dc3fe3954', '7e6ca66b-0862-4a8b-98c5-9c92963e567f', 'Pay-As-You-Go', TRUE, 1),
    ('0481b78f-17fa-4339-b956-d170cef89113', '7e6ca66b-0862-4a8b-98c5-9c92963e567f', 'Reserved Instances', FALSE, 2),
    ('05199174-f336-4555-9d2d-f12336c7278b', '7e6ca66b-0862-4a8b-98c5-9c92963e567f', 'Spot Pricing', FALSE, 3),
    ('6ec02876-f63c-4f43-8e99-255975c16f78', '7e6ca66b-0862-4a8b-98c5-9c92963e567f', 'Enterprise Agreement', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3c4c80ff-d9ea-408f-9ab1-89166e8d28b4', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Your organization has several teams deploying resources in Azure. You need a way to apply consistent naming conventions and restrict which regions resources can be created in. Which Azure feature should you use?',
        'Azure Policy is the correct choice for enforcing consistent naming conventions and restricting resource deployment regions in Azure. Azure Policy allows you to define and enforce rules and regulations for resources in your Azure environment, ensuring compliance with organizational standards and best practices.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5bd48c50-9b78-4d33-96af-278096d2a9ea', '3c4c80ff-d9ea-408f-9ab1-89166e8d28b4', 'Azure Resource Locks', FALSE, 1),
    ('04e39968-277a-4bce-a9b9-6dea1a500c60', '3c4c80ff-d9ea-408f-9ab1-89166e8d28b4', 'Azure Policy', TRUE, 2),
    ('53f44ff9-44f2-4a4a-8d4c-0a6c2f6875ab', '3c4c80ff-d9ea-408f-9ab1-89166e8d28b4', 'Microsoft Purview Compliance Manager', FALSE, 3),
    ('7d900076-f69b-469f-a696-7d172c524128', '3c4c80ff-d9ea-408f-9ab1-89166e8d28b4', 'Azure Advisor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e68bed51-1d41-4ef3-a707-5bf42a676b4a', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'A company wants to run seasonal workloads in Azure where capacity can automatically expand during peak demand and shrink afterward. Which benefit of cloud computing provides this capability?',
        'Elasticity is a key benefit of cloud computing that allows resources to automatically scale up or down based on demand. This capability is essential for running seasonal workloads in Azure where capacity needs to expand during peak demand and shrink afterward.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6a669d61-3915-423a-8d83-c9afa82dfde5', 'e68bed51-1d41-4ef3-a707-5bf42a676b4a', 'Fault tolerance', FALSE, 1),
    ('fbb197f3-6a82-41c1-8923-040d8bc0de90', 'e68bed51-1d41-4ef3-a707-5bf42a676b4a', 'Elasticity', TRUE, 2),
    ('f9d75e0c-8b19-44af-b5ef-20748f97b3d6', 'e68bed51-1d41-4ef3-a707-5bf42a676b4a', 'High availability', FALSE, 3),
    ('d44be763-cfe9-4da9-adad-997fc1860b45', 'e68bed51-1d41-4ef3-a707-5bf42a676b4a', 'Disaster recovery', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a18c182e-6fe2-4953-bcb2-edc5fc97be51', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'A company hosts a web application on Azure App Service (PaaS). They’re unsure which security tasks are their responsibility and which are Microsoft’s. Which action is the company responsible for?',
        'Securing the application code from vulnerabilities is the company''s responsibility. While Microsoft ensures the security of the underlying infrastructure, the company is responsible for securing the application code to prevent vulnerabilities and potential security breaches.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5af0bf9c-a15f-4878-aee6-eb469d1486df', 'a18c182e-6fe2-4953-bcb2-edc5fc97be51', 'Patching the underlying operating system', FALSE, 1),
    ('994b9db4-efd6-41fd-b51f-b41a6a4d91d1', 'a18c182e-6fe2-4953-bcb2-edc5fc97be51', 'Securing the application code from vulnerabilities', TRUE, 2),
    ('8c4e2121-29b0-46b1-81a3-bc66b961609e', 'a18c182e-6fe2-4953-bcb2-edc5fc97be51', 'Maintaining physical security of Azure datacenters', FALSE, 3),
    ('0bf59989-688a-4160-a968-cd6151526a8f', 'a18c182e-6fe2-4953-bcb2-edc5fc97be51', 'Applying network isolation between Azure tenants', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ab23743a-8398-4f60-8a5f-91d28cdb9c28', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'A development team runs test environments in Azure that are used only eight hours per day, Monday through Friday. They want to minimize cost while keeping the environments available during working hours. Which combination of pricing and resource management practices should they use?',
        'Pay-as-you-go pricing with automation to stop VMs after hours is the most suitable choice for the development team''s scenario. By utilizing automation to stop VMs during non-working hours, the team can minimize costs while ensuring the environments are available when needed. This approach aligns with the goal of minimizing costs while keeping the environments available during working hours.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e6ecdb61-5653-4a6a-9c2b-195e62423bd9', 'ab23743a-8398-4f60-8a5f-91d28cdb9c28', 'Reserved Instances with 3-year terms', FALSE, 1),
    ('c4cbb07e-28a0-479e-965f-8c022a5a609a', 'ab23743a-8398-4f60-8a5f-91d28cdb9c28', 'Pay-as-you-go pricing with automation to stop VMs after hours', TRUE, 2),
    ('6c759e2d-2148-4f80-8257-77842c9c0358', 'ab23743a-8398-4f60-8a5f-91d28cdb9c28', 'Spot VMs for all environments', FALSE, 3),
    ('34eed245-f478-4004-81c0-409d6bcdea7e', 'ab23743a-8398-4f60-8a5f-91d28cdb9c28', 'Premium-tier virtual machines with continuous operation', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4f42ea7b-7e25-450d-b07d-fdcac8b45b1d', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'An organization wants to strengthen sign-in security. They decide that users can log in from managed corporate devices without extra verification, but all other sign-ins must require Multi-Factor Authentication (MFA). Which Microsoft Entra ID feature should they configure?',
        'Conditional Access policies based on device state allow organizations to control access to resources based on the state of the device being used for sign-in. By configuring Conditional Access policies, the organization can enforce the requirement for MFA for all sign-ins except those from managed corporate devices, effectively strengthening sign-in security as per the organization''s requirement.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0ac183f2-69bb-4480-9d20-c0d2750b70b3', '4f42ea7b-7e25-450d-b07d-fdcac8b45b1d', 'Identity Protection risk policies', FALSE, 1),
    ('8d8f57d2-9af3-4572-bf4d-a46871cbf12e', '4f42ea7b-7e25-450d-b07d-fdcac8b45b1d', 'Conditional Access policies based on device state', TRUE, 2),
    ('3ae2a83a-b6cb-44fe-a421-2197bc57924f', '4f42ea7b-7e25-450d-b07d-fdcac8b45b1d', 'Privileged Identity Management (PIM)', FALSE, 3),
    ('1a0a0fc8-7594-4a03-b8f4-cd6ef3f09059', '4f42ea7b-7e25-450d-b07d-fdcac8b45b1d', 'Access Reviews for user groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('87c38017-e0e6-440d-8408-3655bec3cd4c', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which Azure pricing option provides significant discounts for committing to a specific amount of resource usage for a 1-year or 3-year term?',
        'Reserved Instances is the correct choice as it provides significant discounts for committing to a specific amount of resource usage for a 1-year or 3-year term. By committing to a reservation, you can save costs compared to Pay-As-You-Go pricing for the same resources.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('113bb739-56cb-4219-973a-dc9273df8de0', '87c38017-e0e6-440d-8408-3655bec3cd4c', 'Pay-As-You-Go', FALSE, 1),
    ('9a286a72-d96b-48e1-b881-3ae2e55e1f62', '87c38017-e0e6-440d-8408-3655bec3cd4c', 'Spot Pricing', FALSE, 2),
    ('ac75b806-28d6-4242-97c6-ef6e44760d2b', '87c38017-e0e6-440d-8408-3655bec3cd4c', 'Reserved Instances', TRUE, 3),
    ('d4ba8f30-b272-47c9-96bd-ee8cc09c140d', '87c38017-e0e6-440d-8408-3655bec3cd4c', 'Free Tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('45afe0a1-5705-447c-b37e-9f64a96f332c', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'What would be a good reason to have multiple Azure subscriptions?',
        'In a scenario where multiple people have accounts in Azure but resources are paid for by a single person/credit card, having multiple subscriptions is crucial to ensure that resources are properly segregated between clients. This segregation helps in maintaining data privacy, security, and compliance with client agreements, reducing the risk of unauthorized access or exposure of sensitive information.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b4b6972b-b1c4-4341-9e1d-a6f0197371dd', '45afe0a1-5705-447c-b37e-9f64a96f332c', 'There is one person/credit card paying for resources, and only one person who logs into Azure to manage the resources, but you want to be able to know which resources are used for which client project.', FALSE, 1),
    ('4bcfaa60-dcc6-4db7-b7bb-0afdf3338256', '45afe0a1-5705-447c-b37e-9f64a96f332c', 'There is one person/credit card paying for resources, but many people who have accounts in Azure, and you need to separate out resources between clients so that there is absolutely no chance of resources being exposed between them.', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('007902b5-0f53-40fa-8f53-da094b71b96e', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'If you are a US federal, state, local, or tribal government entities and their solution providers, which Azure option should you be looking to register for?',
        'Azure Government is the correct option for US federal, state, local, or tribal government entities and their solution providers. It is a dedicated instance of Azure that meets strict compliance requirements for government use, including FedRAMP, CJIS, and ITAR.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ede25ce1-41f1-4081-b47c-34e20ad360fe', '007902b5-0f53-40fa-8f53-da094b71b96e', 'Azure Public Portal', FALSE, 1),
    ('6588a52b-d2f5-43ef-b816-76f223f1b0f0', '007902b5-0f53-40fa-8f53-da094b71b96e', 'Azure is not available for government officials', FALSE, 2),
    ('037e3b6d-9b94-484c-be53-b030538686c4', '007902b5-0f53-40fa-8f53-da094b71b96e', 'Azure Department of Defence', FALSE, 3),
    ('f3809b7d-0e74-4e37-94ab-e11a4666542e', '007902b5-0f53-40fa-8f53-da094b71b96e', 'Azure Government', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('533d0eee-18da-44cd-8ab0-114425cce3ce', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Your company operates in the European Union and must ensure that customer data stored in Azure meets strict privacy and data protection requirements. Which Azure tool or resource helps you understand how Microsoft services comply with global standards such as GDPR and ISO 27001?',
        'Microsoft Purview Compliance Manager is the correct choice as it helps organizations understand how Microsoft services comply with global standards such as GDPR and ISO 27001. It provides visibility into compliance status, assessments, and recommendations to help meet data protection requirements.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5a34420c-c964-42ce-920e-7eddd1debe4f', '533d0eee-18da-44cd-8ab0-114425cce3ce', 'Microsoft Defender for Cloud', FALSE, 1),
    ('b600cdb2-4c85-4ae0-be80-ee02b916ac22', '533d0eee-18da-44cd-8ab0-114425cce3ce', 'Azure Policy', FALSE, 2),
    ('8af56967-384a-409b-83d9-3a83447be486', '533d0eee-18da-44cd-8ab0-114425cce3ce', 'Microsoft Purview Compliance Manager', TRUE, 3),
    ('d5288930-8924-4a20-825e-4e3ca35e806b', '533d0eee-18da-44cd-8ab0-114425cce3ce', 'Azure Monitor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('da86d7c5-a023-4567-a80e-e0f6cceb1e52', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Besides Azure Service Health, where else can you find out any issues that affect the Azure global network that affect you?',
        'Each Virtual Machine has a Resource Health blade in the Azure portal that provides real-time status and health information about the VM. This includes information about any ongoing issues that may be affecting the VM due to Azure global network problems, making it a reliable source of information for users.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cf999aae-93ba-439e-a116-6e5ea1d73289', 'da86d7c5-a023-4567-a80e-e0f6cceb1e52', 'Azure will email you', FALSE, 1),
    ('db569f4a-b096-4425-a77a-c13d315aa44e', 'da86d7c5-a023-4567-a80e-e0f6cceb1e52', 'Azure Updates Blog', FALSE, 2),
    ('7efdf77d-2e62-4aed-ace1-325cfba4b4bd', 'da86d7c5-a023-4567-a80e-e0f6cceb1e52', 'Each Virtual Machine has a Resource Health blade', TRUE, 3),
    ('ffab98db-7bfb-4aaf-bdbf-2e758689eb7a', 'da86d7c5-a023-4567-a80e-e0f6cceb1e52', 'Install the Azure app on your phone', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c4db12ff-2a40-4f51-9039-5aebe39a5756', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'An organization notices that several Azure resources in the West Europe region are unavailable. The administrator wants to:Confirm whether Microsoft is aware of an outage in that region, andReceive alerts automatically if similar incidents occur in the future. Which Azure service should they use?',
        'Azure Service Health is the correct choice as it provides personalized guidance and support during service incidents, including outages in Azure regions. It allows administrators to confirm whether Microsoft is aware of an outage in a specific region and receive alerts automatically for similar incidents in the future.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ef13eaa2-d05f-4fa0-b7c6-cada093b4ad9', 'c4db12ff-2a40-4f51-9039-5aebe39a5756', 'Azure Monitor', FALSE, 1),
    ('14ccf882-f24e-4bcb-92d7-bbc633aaae82', 'c4db12ff-2a40-4f51-9039-5aebe39a5756', 'Azure Service Health', TRUE, 2),
    ('a8f00b58-66e1-458e-84ac-b469449edaa7', 'c4db12ff-2a40-4f51-9039-5aebe39a5756', 'Microsoft Purview Compliance Manager', FALSE, 3),
    ('71eaea21-b562-4f0b-b53d-432dce50d608', 'c4db12ff-2a40-4f51-9039-5aebe39a5756', 'Azure Advisor', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d545e1ed-b180-4633-9bc5-b51e51443253', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'What is the primary purpose of Microsoft Purview in Azure?',
        'This choice is correct because the primary purpose of Microsoft Purview in Azure is to provide a unified data governance solution for managing on-premises, multi-cloud, and SaaS data. It helps organizations discover, classify, and protect sensitive data across their entire data estate.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('42c256f8-c764-4b67-8d21-89aa15666430', 'd545e1ed-b180-4633-9bc5-b51e51443253', 'To provide virtual machine scalability and performance monitoring.', FALSE, 1),
    ('efd13018-fb00-485b-b253-5c9ee52cd1c6', 'd545e1ed-b180-4633-9bc5-b51e51443253', 'To offer a unified data governance solution for managing on-premises, multi-cloud, and SaaS data.', TRUE, 2),
    ('0023b1e3-1165-4909-aa88-5bbb5e23f048', 'd545e1ed-b180-4633-9bc5-b51e51443253', 'To enable real-time data analytics and visualization.', FALSE, 3),
    ('63cbaf63-2ff0-4308-8ca9-6abc7a062fd4', 'd545e1ed-b180-4633-9bc5-b51e51443253', 'To automate the deployment of infrastructure as code (IaC).', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4f2e77b3-85c8-43a9-900d-915a24490feb', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which of the following scenarios would Azure Policy be a recommended method for enforcement?',
        'Azure Policy can be used to prevent certain Azure Virtual Machine instance types from being used in a resource group by defining specific rules and conditions that must be met. This helps enforce compliance and governance standards within the organization.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('58178e7e-ea97-43ea-907a-b14f6238bb6d', '4f2e77b3-85c8-43a9-900d-915a24490feb', 'Prevent certain Azure Virtual Machine instance types from being used in a resource group', TRUE, 1),
    ('83e413c8-c432-4ff6-9487-3c4a73855409', '4f2e77b3-85c8-43a9-900d-915a24490feb', 'Require a virtual machine to always update to the latest security patches', FALSE, 2),
    ('15a0d2b1-8d94-4cb6-8371-b0620332a7a5', '4f2e77b3-85c8-43a9-900d-915a24490feb', 'Allow only one specific roles of users to have access to a resource group', FALSE, 3),
    ('5fa622ca-1168-4867-bb72-5cb9cfc912d4', '4f2e77b3-85c8-43a9-900d-915a24490feb', 'Add an additional prompt when creating a resource without a specific tag to ask the user if they are really sure they want to continue?', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c6bbb129-91c2-4e58-9b7a-2f8b889207a7', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Administrators use Remote Desktop Protocol (RDP) to access Windows VMs and SSH to access Linux VMs. What is the recommended approach to secure these management protocols in Azure?',
        'The correct recommendation for ensuring the security of RDP and SSH protocols is to not allow public Internet access directly to the server over these ports. Instead, using a secure server like Bastion to control access to the servers behind adds an extra layer of security and helps protect against unauthorized access.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8082cfb3-0b67-4f6d-b3d4-0302a48237db', 'c6bbb129-91c2-4e58-9b7a-2f8b889207a7', 'Ensure strong passwords on your Windows admin accounts', FALSE, 1),
    ('6d023e8d-5a77-4131-a6db-9d86df836ac8', 'c6bbb129-91c2-4e58-9b7a-2f8b889207a7', 'Disable RDP access using the Windows Services control panel admin tool', FALSE, 2),
    ('770aeaf8-ee84-4c09-a316-08355d4aeb8b', 'c6bbb129-91c2-4e58-9b7a-2f8b889207a7', 'Do not enable SSH access for Linux servers', FALSE, 3),
    ('1f5bd0e6-f57d-4d61-b4c6-590e8d2108ed', 'c6bbb129-91c2-4e58-9b7a-2f8b889207a7', 'Do not allow public Internet access over the RDP and SSH ports directly to the server. Instead use a secure server like Bastion to control access to the servers behind.', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('041d5abc-9708-4d76-9821-0f1720ce717c', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which Microsoft cloud service provides Identity-as-a-Service (IDaaS) for authentication, single sign-on, and identity management in Azure?',
        'Microsoft Entra ID is a cloud service in Azure that provides Identity-as-a-Service (IDaaS) capabilities for authentication, single sign-on, and identity management. It allows organizations to manage user identities, control access to resources, and enable secure authentication mechanisms in Azure.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('969f68b1-1393-4735-a020-ea850218037f', '041d5abc-9708-4d76-9821-0f1720ce717c', 'Identity and Access Management (IAM)', FALSE, 1),
    ('b7b6c755-f516-4ea5-ad44-504402fc569e', '041d5abc-9708-4d76-9821-0f1720ce717c', 'Azure Portal', FALSE, 2),
    ('70bde806-93fe-4c03-b68a-b753e03efdfd', '041d5abc-9708-4d76-9821-0f1720ce717c', 'Microsoft Entra ID', TRUE, 3),
    ('df4ba9eb-b295-47c0-879a-513d9f255d1f', '041d5abc-9708-4d76-9821-0f1720ce717c', 'Azure Front Door', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('aee738f9-71a3-41b6-99e7-5dec39911dc3', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Which of the following is an example of a perimeter (network-boundary) security control?',
        'Using a firewall is an example of a perimeter security control as it acts as a barrier between a trusted internal network and untrusted external networks, filtering incoming and outgoing network traffic based on a set of security rules. Firewalls help prevent unauthorized access and protect the network from external threats.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1a9481a8-9de8-433d-98fa-3cf4051c0dbe', 'aee738f9-71a3-41b6-99e7-5dec39911dc3', 'Separate servers into distinct subnets by role', FALSE, 1),
    ('a8e65378-b48a-44ab-8cd6-eac742f843d7', 'aee738f9-71a3-41b6-99e7-5dec39911dc3', 'Locks on the data center doors', FALSE, 2),
    ('1c6aed96-ccc7-49e0-9b93-ec4f0e794dbd', 'aee738f9-71a3-41b6-99e7-5dec39911dc3', 'Keep operating systems up to date with patches', FALSE, 3),
    ('94f37284-cc6e-49a8-a740-ac9aeb1dfa03', 'aee738f9-71a3-41b6-99e7-5dec39911dc3', 'Use a firewall', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a1b43cd3-f85f-4775-8322-572fe524c33d', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'In what way does Multi-Factor Authentication (MFA) increase the security of a user account?',
        'Multi-Factor Authentication (MFA) increases the security of a user account by requiring the user to provide an additional form of verification, such as a phone to receive an SMS code, using a mobile app like an authenticator, or biometric identification. This additional step adds an extra layer of security beyond just a password.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('35de0b38-cc44-4edd-af7d-aa0ddd8b0395', 'a1b43cd3-f85f-4775-8322-572fe524c33d', 'It requires single sign-on functionality', FALSE, 1),
    ('6a280408-20a4-423f-a5c7-19e704f163af', 'a1b43cd3-f85f-4775-8322-572fe524c33d', 'It requires the user to possess something like their phone to read an SMS, use a mobile app, or biometric identification.', TRUE, 2),
    ('4585674f-8167-43d3-b2f0-04aa1da3f96d', 'a1b43cd3-f85f-4775-8322-572fe524c33d', 'It requires users to be approved before they can log in for the first time.', FALSE, 3),
    ('4a23a2bc-691e-452a-b28a-b4c7b1e32047', 'a1b43cd3-f85f-4775-8322-572fe524c33d', 'It doesn''t. Multi-Factor Authentication is more about access and authentication than account security.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('46294941-5e38-492f-b6f6-4e1014835c18', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'Your organization needs to ensure that all Azure resources comply with internal naming conventions and can only be deployed in approved regions. Which Azure service should you use?',
        'Azure Policy is the correct choice because it allows you to enforce naming conventions and region restrictions across all Azure resources. It provides centralized management and control over resource deployment and configuration, ensuring compliance with organizational standards.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('40e0dd3e-a434-447a-b3c8-67f32d013192', '46294941-5e38-492f-b6f6-4e1014835c18', 'Azure Policy', TRUE, 1),
    ('91591cbe-e20a-474f-aa04-f8c0856539b8', '46294941-5e38-492f-b6f6-4e1014835c18', 'Microsoft Purview Governance Portal', FALSE, 2),
    ('6450b84c-4225-4a54-b6ad-559e522c464f', '46294941-5e38-492f-b6f6-4e1014835c18', 'Azure Resource Manager (ARM)', FALSE, 3),
    ('f4816a29-2c27-477c-980f-0971d8a7e4d8', '46294941-5e38-492f-b6f6-4e1014835c18', 'Microsoft Defender for Cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b2cb3aaa-d5a1-4431-be25-31fad97e2f6c', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'A company wants to forecast its future Azure spending based on planned usage before actually deploying any resources. Which Azure tool should they use?',
        'Azure Pricing Calculator allows users to estimate the cost of Azure services based on planned usage before actually deploying any resources. It helps users understand the pricing of different Azure services and forecast future spending accurately.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('42f3c224-715b-4a91-8c9d-c0029163aa9e', 'b2cb3aaa-d5a1-4431-be25-31fad97e2f6c', 'Azure Cost Management + Billing', FALSE, 1),
    ('96979138-7f0b-485c-9280-f3fa15c91598', 'b2cb3aaa-d5a1-4431-be25-31fad97e2f6c', 'Azure Advisor', FALSE, 2),
    ('de1bd4b1-4c09-4a2f-93eb-929e5f71cc78', 'b2cb3aaa-d5a1-4431-be25-31fad97e2f6c', 'Azure Pricing Calculator', TRUE, 3),
    ('59f1363a-80b9-47c8-9424-f9d495dd50d6', 'b2cb3aaa-d5a1-4431-be25-31fad97e2f6c', 'Azure Portal Dashboard', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('48ba0212-c842-427e-8247-a9cf650ca788', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'A company needs secure, private communication between its virtual machines in different subnets within the same Azure region. Which Azure component enables this?',
        'Virtual Network (VNet) enables secure, private communication between resources within the same Azure region. By placing virtual machines in different subnets within the same VNet, the company can ensure secure communication between them.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('90af3f54-7288-4699-933a-ceecb95bdeb7', '48ba0212-c842-427e-8247-a9cf650ca788', 'Public IP addresses', FALSE, 1),
    ('35099497-4599-452b-bde5-33f33207c648', '48ba0212-c842-427e-8247-a9cf650ca788', 'Virtual Network (VNet)', TRUE, 2),
    ('ac25ea63-d5d0-4686-89b0-d839e1501fd6', '48ba0212-c842-427e-8247-a9cf650ca788', 'VPN Gateway', FALSE, 3),
    ('73377c12-5bf2-4109-9bea-3309c6615a79', '48ba0212-c842-427e-8247-a9cf650ca788', 'ExpressRoute', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('938931d8-60dd-4d04-965f-8749e2cb13dc', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'An IT administrator wants to ensure that only users in the HR department can access a payroll app registered in Microsoft Entra ID. Which feature should the administrator use?',
        'Conditional Access allows the administrator to control access to applications based on specific conditions, such as user location, device compliance, and user group membership. By configuring Conditional Access policies, the administrator can ensure that only users in the HR department have access to the payroll app registered in Microsoft Entra ID.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('03fbe4ce-ae7d-46c5-a740-abcb2281d617', '938931d8-60dd-4d04-965f-8749e2cb13dc', 'Conditional Access', TRUE, 1),
    ('18966f54-ef63-4d81-8c0a-33eac53492b4', '938931d8-60dd-4d04-965f-8749e2cb13dc', 'Multi-Factor Authentication', FALSE, 2),
    ('b677e5f6-3622-4e85-9353-2420e9ba46e1', '938931d8-60dd-4d04-965f-8749e2cb13dc', 'Application Proxy', FALSE, 3),
    ('8e5a4f4c-c895-42ba-a60b-d36fb2c123c2', '938931d8-60dd-4d04-965f-8749e2cb13dc', 'Role-Based Access Control (RBAC)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8915b0b5-b22a-4518-8776-b7403a4abf3b', 'ac47b83a-7a78-4a78-be60-383b3b4b08c5', 'SINGLE_CHOICE', 'A company runs two web servers in Azure across different Availability Zones in the same region. Which benefit does this configuration primarily provide? ✅',
        'Running web servers in different Availability Zones provides fault tolerance against datacenter failure. If one datacenter experiences an outage, the web servers in the other Availability Zone can continue to operate, ensuring high availability and reliability for the company''s services.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('72da2fb6-0ea5-4f0c-a89b-55236d5bb7f1', '8915b0b5-b22a-4518-8776-b7403a4abf3b', 'Lower latency', FALSE, 1),
    ('00a00ef9-2ed8-4302-bd0d-82eab8c5ea9e', '8915b0b5-b22a-4518-8776-b7403a4abf3b', 'Fault tolerance against datacenter failure', TRUE, 2),
    ('02623d7f-97b6-4f80-b4c4-c7a565965150', '8915b0b5-b22a-4518-8776-b7403a4abf3b', 'Simplified network routing', FALSE, 3),
    ('f3ce3496-e0d0-4ce6-9aea-6c271f30809f', '8915b0b5-b22a-4518-8776-b7403a4abf3b', 'Reduced subscription costs', FALSE, 4);
