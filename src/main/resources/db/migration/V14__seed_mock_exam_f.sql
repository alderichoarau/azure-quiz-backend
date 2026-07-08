-- Examen blanc officiel F (AZ900_Test_F.docx) - real AZ-900 mock exam content
-- 50 questions with answers/explanations from the same document (self-contained practice test).
-- This is an official, complete mock exam: it must stay independent from other mock exams and
-- from course modules - it is excluded from the random cross-module exam draw (module type
-- MOCK_EXAM, see QuestionRepository.findRandomActiveByCertification).

INSERT INTO module (id, certification_id, code, title, description, position, type)
VALUES ('18eb1648-4bac-4b9a-a88d-bcbb642a79a6', '00000000-0000-0000-0000-000000000001', 'mock-exam-f', 'Examen blanc officiel F',
        'Examen blanc officiel AZ-900 complet, 50 questions - a realiser en une seule fois.', 12, 'MOCK_EXAM');

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('194aa115-ae3b-4e7a-a49a-4e0ee905db48', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which of the following is a characteristic of cloud computing?',
        'This choice is correct because one of the fundamental characteristics of cloud computing is the availability of computing resources on-demand. Users can quickly provision and access resources as needed, without the need for long lead times or upfront investments.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0a4f8e69-3359-48e4-890a-636a49031ead', '194aa115-ae3b-4e7a-a49a-4e0ee905db48', 'Resources are only accessible within an organization''s private network.', FALSE, 1),
    ('ee66e630-87f6-49ba-8873-9e0f32ea9d47', '194aa115-ae3b-4e7a-a49a-4e0ee905db48', 'Users must manually scale resources up or down based on demand.', FALSE, 2),
    ('5817b335-dd59-498d-95ec-3c82d36a6aa5', '194aa115-ae3b-4e7a-a49a-4e0ee905db48', 'Computing resources are available on-demand and can be rapidly provisioned.', TRUE, 3),
    ('f45bd809-fa4a-4016-b6d6-b67b95a6e569', '194aa115-ae3b-4e7a-a49a-4e0ee905db48', 'Organizations are responsible for managing the physical infrastructure of the cloud.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8959ff67-4706-44db-9fc9-cf339c1bb749', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Fill in the blank: The ___________ model is a framework that outlines the division of responsibilities between a cloud provider and its customers.',
        'The Shared Responsibility model is a framework that defines the responsibilities of both the cloud provider and the customers in terms of security and compliance. It outlines who is responsible for securing data, managing access controls, and ensuring compliance with regulations.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('010511fc-ebff-4749-ad83-763d261801dc', '8959ff67-4706-44db-9fc9-cf339c1bb749', 'Shared responsibility', TRUE, 1),
    ('2689b387-1800-489e-a93d-ea3cf280bf0c', '8959ff67-4706-44db-9fc9-cf339c1bb749', 'Serverless', FALSE, 2),
    ('0839a57f-66f5-425a-9ae9-013d309c89d9', '8959ff67-4706-44db-9fc9-cf339c1bb749', 'Pay-as-you-go', FALSE, 3),
    ('969b984a-6759-4697-91b9-0e428459690f', '8959ff67-4706-44db-9fc9-cf339c1bb749', 'GDPR', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ca249777-30a1-4633-a0d7-169315a77dec', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which cloud model is often used by government agencies or organizations with strict compliance requirements?',
        'Private Cloud is a cloud model where services and infrastructure are maintained on a private network for a single organization. This cloud model is often used by government agencies or organizations with strict compliance requirements as it provides more control, security, and customization options.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a23a19c0-d63e-47a4-b248-36cb316d2175', 'ca249777-30a1-4633-a0d7-169315a77dec', 'Public Cloud', FALSE, 1),
    ('1454c993-a8a9-4d87-a1d2-0254c2d3c457', 'ca249777-30a1-4633-a0d7-169315a77dec', 'Hybrid Cloud', FALSE, 2),
    ('249eed87-475d-4b56-9ebe-feb1d0850281', 'ca249777-30a1-4633-a0d7-169315a77dec', 'Private Cloud', TRUE, 3),
    ('6a8c9a6b-d9c7-4f56-b030-9e173191f191', 'ca249777-30a1-4633-a0d7-169315a77dec', 'Community Cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('350e37a0-220e-4df5-ab69-7e20bebd7b1e', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'A healthcare organization with a mix of sensitive patient data and non-sensitive administrative data would be best suited for which cloud model?',
        'Hybrid Cloud offers a combination of public and private cloud services, allowing the organization to keep sensitive patient data on a private cloud while using the public cloud for non-sensitive administrative data. This model provides flexibility, scalability, and security for healthcare organizations with varying data needs.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c3a5d1a9-498c-4668-9644-7a420af77bd8', '350e37a0-220e-4df5-ab69-7e20bebd7b1e', 'Public Cloud', FALSE, 1),
    ('4c86f10a-9f1e-4c4d-b48f-3ae8e6152c86', '350e37a0-220e-4df5-ab69-7e20bebd7b1e', 'Hybrid Cloud', TRUE, 2),
    ('376205b6-573f-4da9-9863-a3f7d581438c', '350e37a0-220e-4df5-ab69-7e20bebd7b1e', 'Private Cloud', FALSE, 3),
    ('e04bc306-f8a1-4567-bc04-02ee17c6c244', '350e37a0-220e-4df5-ab69-7e20bebd7b1e', 'Community Cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e4b1fbbb-2d71-48c8-9e03-bc9f84ca30c3', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which cloud model typically utilizes the consumption-based pricing model?',
        NULL, 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('173cc588-7059-4961-b2cf-aaab02a8a43c', 'e4b1fbbb-2d71-48c8-9e03-bc9f84ca30c3', 'Private Cloud', FALSE, 1),
    ('6eee0414-d91e-4fa0-a9cc-37d4f5f2bb0f', 'e4b1fbbb-2d71-48c8-9e03-bc9f84ca30c3', 'Public Cloud', TRUE, 2),
    ('9a0368db-9019-421c-8077-0f8f9a0718a3', 'e4b1fbbb-2d71-48c8-9e03-bc9f84ca30c3', 'Hybrid Cloud', FALSE, 3),
    ('8ee90f9b-9642-49ad-bbfe-8748595291de', 'e4b1fbbb-2d71-48c8-9e03-bc9f84ca30c3', 'On-Premises', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('12ffc9eb-fbd2-421f-862e-5129f19261bc', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is the main advantage of using spot instances in the cloud?',
        'The main advantage of using spot instances in the cloud is that they provide significant cost savings compared to on-demand instances. This is because spot instances are priced lower due to their temporary and interruptible nature.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('725da734-a003-4751-802f-53721aefc10a', '12ffc9eb-fbd2-421f-862e-5129f19261bc', 'They offer the highest performance.', FALSE, 1),
    ('0c474653-35d3-47f4-a216-05385243100c', '12ffc9eb-fbd2-421f-862e-5129f19261bc', 'They are always available.', FALSE, 2),
    ('c84be1f2-4917-4773-9d70-c19caecb0eac', '12ffc9eb-fbd2-421f-862e-5129f19261bc', 'They provide significant cost savings.', TRUE, 3),
    ('214c2b0b-78cc-486b-bb81-ca56b271f053', '12ffc9eb-fbd2-421f-862e-5129f19261bc', 'They are ideal for applications with strict performance requirements.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('880217f7-172b-4734-ad14-d514f670e183', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is a major benefit of using serverless computing for applications with unpredictable workloads?',
        'Serverless computing allows organizations to pay only for the resources used during the execution of functions or applications, leading to reduced operational costs. This pay-as-you-go model eliminates the need to provision and manage servers continuously, resulting in cost savings for applications with unpredictable workloads.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e9f6fe3e-a429-4924-b131-82cd2fef8439', '880217f7-172b-4734-ad14-d514f670e183', 'Reduced operational costs', TRUE, 1),
    ('6e8bc1a0-c457-46b4-a68f-22634238d3f2', '880217f7-172b-4734-ad14-d514f670e183', 'Increased complexity', FALSE, 2),
    ('25506eb4-2d63-42bb-aa26-002f92566e3f', '880217f7-172b-4734-ad14-d514f670e183', 'Manual infrastructure management', FALSE, 3),
    ('f8d4b497-8562-4f18-be3e-47110247c3fb', '880217f7-172b-4734-ad14-d514f670e183', 'Fixed pricing structure', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8a1e5b30-62e2-4636-8034-c2f81926a351', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'How does high availability in cloud computing minimize downtime?',
        'High availability in cloud computing is achieved by automatically replicating resources across multiple regions or zones. This redundancy ensures that if one region or zone experiences an outage or failure, the workload can seamlessly failover to another region or zone, minimizing downtime and ensuring continuous operation.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a95faae8-ff12-4d66-9e63-39614c363754', '8a1e5b30-62e2-4636-8034-c2f81926a351', 'By providing backup power systems', FALSE, 1),
    ('07873a9c-2ecd-40a1-8090-a33b40c1edcf', '8a1e5b30-62e2-4636-8034-c2f81926a351', 'By automatically replicating resources across multiple regions or zones', TRUE, 2),
    ('54827b42-e042-46bf-803e-f6cd09f2c820', '8a1e5b30-62e2-4636-8034-c2f81926a351', 'By reducing the cost of infrastructure', FALSE, 3),
    ('e44721be-4cc2-49d1-94bc-d7b13d6592dd', '8a1e5b30-62e2-4636-8034-c2f81926a351', 'By limiting resource usage during peak times', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b322660a-f2d4-4ae2-9483-1b0d0f890511', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which phrase best describes the property of scalability?',
        'Scalability refers to the ability of a system to handle increased workload by adding resources dynamically. This means that as the demand on the system grows, it can easily scale up by adding more resources such as computing power, storage, or network capacity to accommodate the increased workload.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e4f72ba0-f3e4-4c56-b6eb-59aa64c4e9dd', 'b322660a-f2d4-4ae2-9483-1b0d0f890511', 'The ability of a system to handle increased workload by adding resources dynamically.', TRUE, 1),
    ('dbcb8c48-972f-4276-8ddb-cfd7eba54038', 'b322660a-f2d4-4ae2-9483-1b0d0f890511', 'The ease of managing and maintaining a system.', FALSE, 2),
    ('27eeb7dc-2f8f-4d4f-8ff2-c6ec7cfae33f', 'b322660a-f2d4-4ae2-9483-1b0d0f890511', 'The ability of a system to remain operational and accessible for a high percentage of time.', FALSE, 3),
    ('9538e04c-17e0-45cc-8c52-84fb522e0431', 'b322660a-f2d4-4ae2-9483-1b0d0f890511', 'The ability to forecast and plan for system performance and resource needs.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7bfe3178-0813-4a8c-bccd-b63c72dce31f', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is the role of fault tolerance in Azure''s reliability strategy?',
        'The correct choice. Fault tolerance in Azure''s reliability strategy is designed to minimize the impact of individual component failures. By implementing redundancy, failover mechanisms, and other strategies, Azure aims to ensure that the system can continue to operate even if certain components fail.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f6a9bb06-c4e5-4f88-b8fb-3633e6282b0c', '7bfe3178-0813-4a8c-bccd-b63c72dce31f', 'To prevent failures from occurring.', FALSE, 1),
    ('4a7780c7-c7bb-4c65-802c-9e7cf6ba826e', '7bfe3178-0813-4a8c-bccd-b63c72dce31f', 'To ensure rapid recovery from major outages.', FALSE, 2),
    ('665ae29e-fa87-42ad-8d0d-5cc1b42c73ed', '7bfe3178-0813-4a8c-bccd-b63c72dce31f', 'To minimize the impact of individual component failures.', TRUE, 3),
    ('8470d56d-f29c-40bf-ab0c-2246544a0667', '7bfe3178-0813-4a8c-bccd-b63c72dce31f', 'To optimize system performance.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fd2a9b7b-af0f-4fd3-ae66-42dd8e2b5afb', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'How can Azure Reserved Instances help achieve cost predictability?',
        'Azure Reserved Instances offer significant discounts for committing to a specific instance type, region, and term length, such as one or three years. This helps organizations predict and control costs by locking in discounted rates for their Azure resources over a longer period.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1bae8fd1-2a97-4d42-8007-94846eaf0094', 'fd2a9b7b-af0f-4fd3-ae66-42dd8e2b5afb', 'By providing discounts for long-term commitments.', TRUE, 1),
    ('96e98b20-3de2-4f84-849b-fff4af954e91', 'fd2a9b7b-af0f-4fd3-ae66-42dd8e2b5afb', 'By offering pay-as-you-go pricing.', FALSE, 2),
    ('fa6da83e-a340-43e3-9d59-32df36915233', 'fd2a9b7b-af0f-4fd3-ae66-42dd8e2b5afb', 'By enabling automatic scaling.', FALSE, 3),
    ('bbd0b16d-da26-4d4d-8bfa-a4889b8f1549', 'fd2a9b7b-af0f-4fd3-ae66-42dd8e2b5afb', 'By providing free trials for new services.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('76a30f16-d05b-4693-a339-6eb750238c94', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Fill in the blank: _______________ is a malicious attempt to disrupt or prevent a cloud service from functioning as intended by overwhelming it with excessive traffic or requests.',
        'A Denial of Service (DoS) attack is a malicious attempt to disrupt or prevent a cloud service from functioning as intended by overwhelming it with excessive traffic or requests. This can lead to the service becoming unavailable to legitimate users.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0eee3da2-a0bc-45d4-aeeb-2724aff587c0', '76a30f16-d05b-4693-a339-6eb750238c94', 'A Denial of Service attack', TRUE, 1),
    ('5040117c-a6ec-4881-aef3-a367f53d7aa2', '76a30f16-d05b-4693-a339-6eb750238c94', 'Malware', FALSE, 2),
    ('c525d6c3-cae8-4249-8f16-4c54397cd0ae', '76a30f16-d05b-4693-a339-6eb750238c94', 'Phishing', FALSE, 3),
    ('b4d2e3c5-cde0-459f-a30c-59d1ab147188', '76a30f16-d05b-4693-a339-6eb750238c94', 'A SQL Injection attack', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ae25547b-c2f1-4156-b3f9-c044b2ac5410', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which of the following best describes the concept of governance in Azure?',
        'Establishing policies and processes to manage and control Azure resources effectively is the core concept of governance in Azure. This includes defining and enforcing rules, setting permissions, and ensuring compliance with organizational standards and regulations.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('77cbaacd-fcc9-4000-b8c1-a072f88e36e8', 'ae25547b-c2f1-4156-b3f9-c044b2ac5410', 'Ensuring that all resources are deployed in a single geographic region.', FALSE, 1),
    ('86b7263b-8a5f-4d1d-ae88-fd0cd74f39a6', 'ae25547b-c2f1-4156-b3f9-c044b2ac5410', 'Establishing policies and processes to manage and control Azure resources effectively.', TRUE, 2),
    ('ddbd5546-ca10-4628-9cc7-df34f01c88f2', 'ae25547b-c2f1-4156-b3f9-c044b2ac5410', 'Automatically scaling resources up or down based on workload demands.', FALSE, 3),
    ('6d0b9f99-983d-455e-a61f-97f9948fd169', 'ae25547b-c2f1-4156-b3f9-c044b2ac5410', 'Providing real-time monitoring and alerts for Azure services.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('68540fd7-821f-419b-a1f1-531bcad1251b', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'One of the benefits of cloud computing is that you can use a command-line script to create or destroy virtual machines in a programmatic way. This is an example of what type of manageability benefit?',
        'Management in the cloud speaks to HOW you’re able to manage your cloud environment and resources. You do this through the Web Portal, command line, or APIs.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('beb25e84-fc06-4f89-93b8-49d6b83d0fa5', '68540fd7-821f-419b-a1f1-531bcad1251b', 'Management of the cloud', FALSE, 1),
    ('69f1ab7c-d234-4d48-83a4-6ce0d49f1436', '68540fd7-821f-419b-a1f1-531bcad1251b', 'Management in the cloud', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e18505d8-8d9d-42a1-a6a8-326f5cb87a36', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which type of scaling in cloud computing allows for practically unlimited growth by adding more instances of resources?',
        'Scaling out in cloud computing involves adding more instances of servers or virtual machines to distribute the workload across multiple resources. This type of scaling has practically no limit as additional instances can be added as needed to handle increasing workload, providing a more scalable and flexible solution compared to scaling up.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f98fa445-59bb-488b-9881-3769aec638df', 'e18505d8-8d9d-42a1-a6a8-326f5cb87a36', 'Scaling up (vertical scaling)', FALSE, 1),
    ('5f27ec7f-6672-4297-9459-5bc74fe14ad8', 'e18505d8-8d9d-42a1-a6a8-326f5cb87a36', 'Scaling out (horizontal scaling)', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bcd1cd6d-d803-49f2-a751-8b5f682c17f0', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which of the following is an example of an Infrastructure-as-a-Service (IaaS) offering in Azure?',
        'Azure Virtual Machines is an example of an Infrastructure-as-a-Service (IaaS) offering in Azure because it provides virtualized computing resources, such as virtual servers, storage, and networking, allowing users to deploy and manage virtual machines in the cloud without having to manage the physical hardware infrastructure.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1935d9c6-0671-4a8a-ba0f-faa40f8fc5c0', 'bcd1cd6d-d803-49f2-a751-8b5f682c17f0', 'Azure Virtual Machines', TRUE, 1),
    ('40057dd9-e2f6-4f50-9409-24e3b1ccc31c', 'bcd1cd6d-d803-49f2-a751-8b5f682c17f0', 'Azure SQL Database', FALSE, 2),
    ('fa6d81d1-faeb-4550-b410-812f2db33170', 'bcd1cd6d-d803-49f2-a751-8b5f682c17f0', 'Azure Logic Apps', FALSE, 3),
    ('841f95d8-e6c3-46ce-abce-9b859cefcf7c', 'bcd1cd6d-d803-49f2-a751-8b5f682c17f0', 'Microsoft Entra ID (formerly Azure Active Directory)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('25e66675-2663-4e86-ab6a-2f21afbcc5d7', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is the primary difference between PaaS and IaaS?',
        'The primary difference between PaaS (Platform as a Service) and IaaS (Infrastructure as a Service) is the level of control over the infrastructure. With PaaS, the provider manages the underlying infrastructure, such as servers, storage, and networking, allowing users to focus on developing and deploying applications. In contrast, IaaS provides users with more control over the infrastructure, allowing them to manage virtual machines, storage, and networking configurations.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fd8e0e2c-4cac-4a95-b44c-c3c4d029c5cb', '25e66675-2663-4e86-ab6a-2f21afbcc5d7', 'The level of control over the infrastructure', TRUE, 1),
    ('d53c44f7-73e9-42f5-ac4c-3e91daa5cf7b', '25e66675-2663-4e86-ab6a-2f21afbcc5d7', 'The cost of the service', FALSE, 2),
    ('0a887e29-32f8-4c1b-839c-6564f982e799', '25e66675-2663-4e86-ab6a-2f21afbcc5d7', 'The scalability of the service', FALSE, 3),
    ('5ffb8b11-681e-49fd-a6a8-9968dfa2da38', '25e66675-2663-4e86-ab6a-2f21afbcc5d7', 'The security of the service', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('217260b4-f233-43a8-b43d-062f6e1498c9', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'In which cloud environment does the cloud provider manage the operating system, meaning you do not have the ability to determine the exact version of Windows or Linux you are using?',
        NULL, 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('08078b52-552b-44ea-974f-4670e9421760', '217260b4-f233-43a8-b43d-062f6e1498c9', 'IaaS', FALSE, 1),
    ('05f3f7ee-1ec4-4777-83b9-b5b8407c4cf2', '217260b4-f233-43a8-b43d-062f6e1498c9', 'PaaS', TRUE, 2),
    ('815b2f85-faed-419a-8a00-74fe8e90c728', '217260b4-f233-43a8-b43d-062f6e1498c9', 'Virtual Machines', FALSE, 3),
    ('c39deddf-c252-4138-9fa6-6e5fcbd80b4b', '217260b4-f233-43a8-b43d-062f6e1498c9', 'Virtual Machine Scale Sets', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7da757c1-e81a-439e-a413-794ad50e1453', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which of the following is the primary purpose of sovereign regions in Azure?',
        'The primary purpose of sovereign regions in Azure is to ensure data residency compliance. Sovereign regions are designed to meet specific data residency and compliance requirements for customers who need to store data within a particular geographic location.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('29c28bde-689c-486c-8fe8-118d61141048', '7da757c1-e81a-439e-a413-794ad50e1453', 'To provide access to Azure services in specific geographic locations', FALSE, 1),
    ('7d68755f-7c4b-4dc3-80d5-82daa590bbd0', '7da757c1-e81a-439e-a413-794ad50e1453', 'To ensure data residency compliance', TRUE, 2),
    ('87dd00bb-82e1-4da2-bf02-e309af52fe32', '7da757c1-e81a-439e-a413-794ad50e1453', 'To offer discounts for customers in certain regions', FALSE, 3),
    ('1bc4da61-984f-439f-8772-3168e5477116', '7da757c1-e81a-439e-a413-794ad50e1453', 'To provide higher performance for customers in specific countries', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('936f9eac-bd85-486b-9288-e9ece5ee265a', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which of the following statements about Azure Availability Zones is true?',
        'Availability Zones in Azure are indeed physically separate locations within the same Azure region. They are designed to provide high availability and resiliency by distributing applications and data across multiple zones to protect against data center failures.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fe744fa5-1d32-4456-a8ed-1d657ad320c0', '936f9eac-bd85-486b-9288-e9ece5ee265a', 'Availability Zones are physically separate locations within the same Azure region.', TRUE, 1),
    ('d2e6a0e0-36e1-4844-9742-56c281f0d14f', '936f9eac-bd85-486b-9288-e9ece5ee265a', 'Availability Zones are used to replicate data across multiple Azure tenants.', FALSE, 2),
    ('48a7b017-8e9e-4006-aa96-5b3ab59a73ce', '936f9eac-bd85-486b-9288-e9ece5ee265a', 'Availability Zones are only available in non-production environments.', FALSE, 3),
    ('bf6355a8-8706-4210-ba99-65d56575a548', '936f9eac-bd85-486b-9288-e9ece5ee265a', 'Availability Zones are limited to a maximum of two zones per region.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ff0f4882-c9cc-4bf4-8128-99c4f0d12677', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which feature of Azure Virtual Machines allows you to choose which data center to physically deploy a VM to?',
        'Availability zones in Azure Virtual Machines allow you to choose which data center within a region to physically deploy a VM. This feature provides high availability and resiliency by distributing VM instances across multiple isolated locations within a region.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5c7451c9-22e5-4b84-9746-e64a0db31324', 'ff0f4882-c9cc-4bf4-8128-99c4f0d12677', 'Spot instances', FALSE, 1),
    ('5adc3f41-f0d3-4e9b-958e-3555501ef22d', 'ff0f4882-c9cc-4bf4-8128-99c4f0d12677', 'Region', FALSE, 2),
    ('4eea8135-f1f4-45be-a9e0-d1b7543d7164', 'ff0f4882-c9cc-4bf4-8128-99c4f0d12677', 'Availability zones', TRUE, 3),
    ('dc8c6fc1-1a49-49e6-aab7-1fb4979b4e73', 'ff0f4882-c9cc-4bf4-8128-99c4f0d12677', 'Availability sets', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('85e6743e-8ddd-4cf1-8ce4-4e2cd790dd97', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which of the following is NOT an example of an Azure resource?',
        'An Azure subscription is NOT an example of an Azure resource. An Azure subscription is a logical container used to provision resources in Azure and manage billing and access control. It is not a resource that can be directly deployed or managed within Azure.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bf8647c2-b809-417c-8293-ee8a292e2d90', '85e6743e-8ddd-4cf1-8ce4-4e2cd790dd97', 'A virtual network', FALSE, 1),
    ('cf25f0a0-ecfc-4aa6-913b-ba3440d5d102', '85e6743e-8ddd-4cf1-8ce4-4e2cd790dd97', 'A storage account', FALSE, 2),
    ('e2fb236b-8637-40af-bd3a-ee15ef95d9ce', '85e6743e-8ddd-4cf1-8ce4-4e2cd790dd97', 'An Azure subscription', TRUE, 3),
    ('09891185-326d-4a81-9673-01d79f4f2bb3', '85e6743e-8ddd-4cf1-8ce4-4e2cd790dd97', 'An Azure SQL database', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b21b9648-1897-4101-8a5d-638c2ec663a0', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'A resource can be said to "belong to" one and only one resource group. What does a resource group belong to?',
        'A resource group belongs to a subscription in Azure. A subscription is a logical container used to provision resources in Azure and manage billing and access control. Resources are contained within resource groups, which in turn belong to a subscription.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7912e68a-1210-46ae-9c89-e60770ccae8e', 'b21b9648-1897-4101-8a5d-638c2ec663a0', 'Microsoft Entra ID', FALSE, 1),
    ('eff67341-6915-47a1-b75c-651f6dbfd89f', 'b21b9648-1897-4101-8a5d-638c2ec663a0', 'Subscription', TRUE, 2),
    ('7813fc00-4aa5-46f5-9002-7b4ab51117d3', 'b21b9648-1897-4101-8a5d-638c2ec663a0', 'Other resource groups', FALSE, 3),
    ('eca5a7ef-8fac-4e5a-acbb-64f83a712392', 'b21b9648-1897-4101-8a5d-638c2ec663a0', 'Management Group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('73f31272-6fed-4734-85fb-145b9521cbe4', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Can management groups be nested?',
        'Yes, management groups in Azure can be nested within each other. This allows for a hierarchical structure where management groups can contain subscriptions, other management groups, or a combination of both. This nesting capability helps in organizing and managing resources at scale within an Azure environment.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9368eb8f-5de3-44fe-8d2f-e5f63a113f7f', '73f31272-6fed-4734-85fb-145b9521cbe4', 'Yes', TRUE, 1),
    ('62c03fe6-bfd5-416f-9cb7-22da2f44ef69', '73f31272-6fed-4734-85fb-145b9521cbe4', 'No', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a4460666-851b-4000-9518-b56c2ee68671', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which of the following is the highest level of organization within the Azure hierarchy?',
        'Management groups are the highest level of organization within the Azure hierarchy. They provide a level of scope above subscriptions and allow for centralized management of policies, access control, and compliance across multiple subscriptions.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7391d65e-5106-4b87-93b5-2534f6967ee6', 'a4460666-851b-4000-9518-b56c2ee68671', 'Resource group', FALSE, 1),
    ('6ac4d358-a81a-4863-8b7d-1186a859dace', 'a4460666-851b-4000-9518-b56c2ee68671', 'Management group', TRUE, 2),
    ('693b8130-5a8e-4957-a443-1818ffe502e6', 'a4460666-851b-4000-9518-b56c2ee68671', 'Subscription', FALSE, 3),
    ('185333e6-45fe-4d65-8e5a-e42f47dfd215', 'a4460666-851b-4000-9518-b56c2ee68671', 'Resource', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8bc62853-8577-4038-8657-8911a78aca3d', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which Azure resource type allows you to centrally manage, configure, and update a large number of VMs?',
        'Virtual Machine Scale Sets allow you to centrally manage, configure, and update a large number of VMs by defining the number of VM instances to be created and automatically scaling them based on demand. This resource type simplifies the management of VMs in a group, making it easier to maintain and update multiple instances simultaneously.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5cfd53ad-e47b-45d2-b734-d0aa968b774c', '8bc62853-8577-4038-8657-8911a78aca3d', 'Virtual Machine Scale Sets', TRUE, 1),
    ('86257d83-a3d8-4648-a769-3975ba6abf91', '8bc62853-8577-4038-8657-8911a78aca3d', 'Azure Functions', FALSE, 2),
    ('f822659b-80e3-40e2-a302-b28cd6eb41f8', '8bc62853-8577-4038-8657-8911a78aca3d', 'Azure Kubernetes Services', FALSE, 3),
    ('f17f4075-e099-40e7-9c81-8404ccc7934d', '8bc62853-8577-4038-8657-8911a78aca3d', 'Azure App Services', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c25d3b79-bddb-497b-b6a8-89bd3d87916a', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Multiple virtual machines in the same availability set are deployed across multiple update domains. What do update domains help you protect against?',
        'Update domains in Azure help protect against planned downtime by ensuring that not all virtual machines in the same availability set are updated or restarted at the same time. This helps maintain high availability and reduces the impact of maintenance activities on the overall service uptime.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('96b37398-ad3b-437d-bcc8-67701bcc69dc', 'c25d3b79-bddb-497b-b6a8-89bd3d87916a', 'Planned downtime', TRUE, 1),
    ('0f1b84a7-ecee-4c4f-9a8c-c9e4e2bc75ea', 'c25d3b79-bddb-497b-b6a8-89bd3d87916a', 'Unplanned downtime', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9ad54a98-a36e-4e27-b80d-24648de33fe1', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'You intend to deploy your application to a Virtual Machine Scale Set (VMSS), and allow it to automatically scale your app to multiple VMs based on demand. How is traffic distributed to machines inside a VMSS pool?',
        'In order to distribute traffic to machines inside a VMSS pool, you must include an additional service such as Load Balancing or Application Gateway. These services help manage and distribute incoming traffic to the VM instances within the VMSS pool, ensuring optimal performance and scalability for your application.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d1f55426-cbd6-4171-9235-df030bb67e7c', '9ad54a98-a36e-4e27-b80d-24648de33fe1', 'Azure Virtual Machine Scale Sets service includes load balancing', FALSE, 1),
    ('6a8e8454-7edf-4c88-892f-e5d018c1072c', '9ad54a98-a36e-4e27-b80d-24648de33fe1', 'You must include an additional service such as Load Balancing or Application Gateway', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('78b33a52-3243-4b4d-b15b-597277638f6f', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is the primary purpose of Azure Virtual Desktop?',
        'This choice is correct because the main purpose of Azure Virtual Desktop is to provide users with virtualized Windows desktops, enabling them to access their desktop environment remotely.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7051032e-62ef-4461-aceb-c3f208767b5d', '78b33a52-3243-4b4d-b15b-597277638f6f', 'To provide a virtualized environment for running Windows Server workloads', FALSE, 1),
    ('ce3424a8-4f92-4eb9-aa0b-5acd952cd1f6', '78b33a52-3243-4b4d-b15b-597277638f6f', 'To deliver virtualized Windows desktops to users', TRUE, 2),
    ('9af3634e-792f-408c-9eb3-dd4e0c6410d2', '78b33a52-3243-4b4d-b15b-597277638f6f', 'To create and manage virtual machines in Azure', FALSE, 3),
    ('a7c2d864-0e55-4f26-bfe6-9791b13428d3', '78b33a52-3243-4b4d-b15b-597277638f6f', 'To provide a platform for hosting web applications', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('65e0d81b-85f7-4559-8e5c-ea1eb5c430d1', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which Azure service is used to host Azure App Services?',
        'The App Service Plan is the Azure service used to host Azure App Services. It defines the location, features, and resources available to the App Service, including the number of instances, size, and pricing tier.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5e59a6a9-1bf8-4cc0-bd91-2bf1e34380d6', '65e0d81b-85f7-4559-8e5c-ea1eb5c430d1', 'App Service Plan', TRUE, 1),
    ('78b21389-5420-4a87-84a7-a2c1cefcbc8d', '65e0d81b-85f7-4559-8e5c-ea1eb5c430d1', 'Dedicated Host', FALSE, 2),
    ('0a05d0a4-4e58-4a41-bbc2-917eb80835fa', '65e0d81b-85f7-4559-8e5c-ea1eb5c430d1', 'Virtual Machine', FALSE, 3),
    ('c1eb5a6e-4bef-4952-a370-4ffcaf6aaef5', '65e0d81b-85f7-4559-8e5c-ea1eb5c430d1', 'Resource Group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c29014d2-2c6c-42cf-ac78-053c3a4f04b8', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Fill in the blank: An Azure __________ is a logical division of a virtual network.',
        'An Azure subnet is a logical division of a virtual network that helps in organizing and segmenting network resources. It allows for better network management, security, and resource isolation within the virtual network.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d9f4ada8-e806-48ee-abae-ff61e7d40dc2', 'c29014d2-2c6c-42cf-ac78-053c3a4f04b8', 'subnet', TRUE, 1),
    ('a5dc6099-5033-4540-bf94-6628daf6ebcd', 'c29014d2-2c6c-42cf-ac78-053c3a4f04b8', 'firewall', FALSE, 2),
    ('d1a17ccf-4ff8-4223-a72c-5b22560445c6', 'c29014d2-2c6c-42cf-ac78-053c3a4f04b8', 'network security group (NSG)', FALSE, 3),
    ('22fed6d2-bc96-4f36-a7d6-d343f633998d', 'c29014d2-2c6c-42cf-ac78-053c3a4f04b8', 'IP address', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c1d25fc0-93af-43c7-9d56-13222e4f84d7', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'If two networks are peered in different regions, which network does the data between them travel over?',
        'When two networks are peered in different regions within Microsoft Azure, the data between them travels over the Microsoft global network. This network is a private, dedicated network infrastructure maintained by Microsoft to ensure secure and efficient data transfer between Azure regions.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a11dbcb8-93f4-4f14-9047-6b15a484cfe0', 'c1d25fc0-93af-43c7-9d56-13222e4f84d7', 'Microsoft global network', TRUE, 1),
    ('f0dc89a9-29ac-4183-bff7-efe7bab8672a', 'c1d25fc0-93af-43c7-9d56-13222e4f84d7', 'Public internet', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b4938d00-fb72-4b71-9e54-a0fce358a150', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which device is required to be deployed into an Azure Virtual Network before you can connect to it using a VPN?',
        'Azure VPN Gateway is the correct choice because it acts as the bridge between your on-premises network and the Azure Virtual Network. It enables secure communication over the internet by establishing a VPN connection, allowing you to connect to the Azure Virtual Network securely.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3a691082-4bd8-430c-a8e5-057fc860b5c0', 'b4938d00-fb72-4b71-9e54-a0fce358a150', 'Azure VPN Gateway', TRUE, 1),
    ('fc0f9049-6c7a-45c9-b1c0-306edbb4a1b5', 'b4938d00-fb72-4b71-9e54-a0fce358a150', 'Azure Firewall', FALSE, 2),
    ('e82ec2e1-181e-4c47-84af-ff0b10b46649', 'b4938d00-fb72-4b71-9e54-a0fce358a150', 'Azure Application Gateway', FALSE, 3),
    ('5e9ce8b6-4bee-4fad-97c9-20c9d3031ce0', 'b4938d00-fb72-4b71-9e54-a0fce358a150', 'Virtual Network Peering', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('21488930-fb5f-466e-815e-22972274d76c', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which is the lowest-cost storage option in Azure?',
        'Standard HDDs (Hard Disk Drives) are the lowest-cost storage option in Azure. They provide cost-effective storage for workloads that do not require high performance or low latency, making them a suitable choice for scenarios where cost optimization is a priority.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4d65f9b0-6762-40e1-ab02-72ad2db66c79', '21488930-fb5f-466e-815e-22972274d76c', 'Ultra Disks', FALSE, 1),
    ('be92628c-dca3-4a49-a83c-48b945bf0b9e', '21488930-fb5f-466e-815e-22972274d76c', 'Premium SSDs', FALSE, 2),
    ('4bc0671e-2b7e-4e47-b651-34889d2131e8', '21488930-fb5f-466e-815e-22972274d76c', 'Standard SSDs', FALSE, 3),
    ('f65a349c-3d34-41af-86ec-8e7ca97f30f8', '21488930-fb5f-466e-815e-22972274d76c', 'Standard HDDs', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8d388b0e-ffbd-4d34-b473-54e40fadeac0', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'In which storage redundancy option does Azure keep three copies of your files across all three zones of a single region?',
        'ZRS (Zone-Redundant Storage) is the correct option as it keeps three copies of your files across all three zones of a single region. This redundancy option provides high durability and availability by replicating data across different physical locations within the same region.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9707a252-444e-4ba5-9c47-374d908e2999', '8d388b0e-ffbd-4d34-b473-54e40fadeac0', 'LRS', FALSE, 1),
    ('c20b174b-ab03-4d7f-add4-dd1f165599a9', '8d388b0e-ffbd-4d34-b473-54e40fadeac0', 'ZRS', TRUE, 2),
    ('63488a50-2057-4abe-95a5-02b8615b4666', '8d388b0e-ffbd-4d34-b473-54e40fadeac0', 'GRS', FALSE, 3),
    ('32350efc-24b8-4cd6-9c3d-ca85b8e9b891', '8d388b0e-ffbd-4d34-b473-54e40fadeac0', 'GZRS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('efec8532-c453-4f7b-abb6-01c2b15e90bb', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which Azure Storage option is the lowest-cost NoSQL storage option for structured, non-relational data?',
        'Table Storage is the correct choice for the lowest-cost NoSQL storage option for structured, non-relational data. It provides a key/attribute store with a schema-less design, making it ideal for storing structured data in a non-relational format at a lower cost compared to other Azure storage options.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b089eb67-8f11-407b-b357-36a5614c5efb', 'efec8532-c453-4f7b-abb6-01c2b15e90bb', 'Blob Storage', FALSE, 1),
    ('a7cc7981-d006-4200-a451-2648cc859633', 'efec8532-c453-4f7b-abb6-01c2b15e90bb', 'Queue Storage', FALSE, 2),
    ('f18db384-e84a-490d-9a17-dfad6e24b7af', 'efec8532-c453-4f7b-abb6-01c2b15e90bb', 'Table Storage', TRUE, 3),
    ('11542b80-d766-41dc-90f9-5911bfe62c85', 'efec8532-c453-4f7b-abb6-01c2b15e90bb', 'Cosmos DB', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('07a50048-de84-45b5-a382-e2870a24d47a', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'If you need to store more than 5PB in an Azure Storage account, what is the best way to do that?',
        'Creating a second storage account and implementing data partitioning is the best way to store more than 5PB in an Azure Storage account. Data partitioning helps distribute the data across multiple storage accounts, improving performance, scalability, and manageability.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c4ba4824-ee92-4584-aefe-873643a04188', '07a50048-de84-45b5-a382-e2870a24d47a', 'Open a ticket with Azure and ask for a higher limit', FALSE, 1),
    ('ef6ceac9-e68e-4c90-b2b7-6f24a570074b', '07a50048-de84-45b5-a382-e2870a24d47a', 'Create a second storage account and do data partitioning', TRUE, 2),
    ('e07e146a-d5a2-41b3-9234-0eb62b1afa84', '07a50048-de84-45b5-a382-e2870a24d47a', 'The maximum you can store in Azure is 5PB and there is no way around it', FALSE, 3),
    ('bd0e06fe-a136-4a6c-a32b-7738d57ebf6f', '07a50048-de84-45b5-a382-e2870a24d47a', 'You will have to create another Azure Storage account in another region', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('71796065-8377-4034-ac44-f51356b57a17', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which Azure storage type is specifically designed to be block-level storage volumes managed by Azure for use with VMs?',
        'Azure Disks are specifically designed to provide block-level storage volumes managed by Azure for use with virtual machines (VMs). They offer high-performance, low-latency storage for VMs and are suitable for operating system disks and data disks attached to VMs.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c1abf262-9dcb-411b-b13d-8098a8c15927', '71796065-8377-4034-ac44-f51356b57a17', 'Azure Disks', TRUE, 1),
    ('b98884a1-de1e-4e78-a1d8-21093fce7f2b', '71796065-8377-4034-ac44-f51356b57a17', 'General Purpose V2', FALSE, 2),
    ('1392959a-3e28-48b7-8b0c-a965e9cc39db', '71796065-8377-4034-ac44-f51356b57a17', 'Azure Blob Storage', FALSE, 3),
    ('d499c6db-10f5-4ca2-966b-51c52d6d35fa', '71796065-8377-4034-ac44-f51356b57a17', 'Azure File Storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ab7c6ffc-dd7f-4e29-b78d-6ae13e4ad0e4', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is the primary purpose of the AzCopy tool in Azure?',
        'The primary purpose of the AzCopy tool in Azure is to transfer data to and from Azure storage. It provides efficient and reliable data transfer capabilities for large amounts of data.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('43677b4b-a725-4716-9cff-9eb0f8bacf18', 'ab7c6ffc-dd7f-4e29-b78d-6ae13e4ad0e4', 'To manage Azure virtual machines', FALSE, 1),
    ('b1a33532-de54-4ef9-9adc-b5ea17d77186', 'ab7c6ffc-dd7f-4e29-b78d-6ae13e4ad0e4', 'To create and manage Azure storage accounts', FALSE, 2),
    ('b71e75ff-4fc4-4524-8b18-a01322d6ac49', 'ab7c6ffc-dd7f-4e29-b78d-6ae13e4ad0e4', 'To transfer data to and from Azure storage', TRUE, 3),
    ('8bdb3bc3-e994-4f78-9c00-343b10100ac7', 'ab7c6ffc-dd7f-4e29-b78d-6ae13e4ad0e4', 'To monitor Azure resource usage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3f47b0a8-a164-42dd-bd59-f71071edcc87', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Fill in the blank: __________ is a physical device that allows you to transfer large amounts of data to and from Azure. It''s particularly useful for transferring data that is too large or too slow to transfer over the internet.',
        'Azure Data Box is a physical device provided by Azure that allows users to transfer large amounts of data to and from Azure. It is particularly useful for scenarios where data is too large or too slow to transfer over the internet, providing a secure and efficient way to move data.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b73f99e7-9eea-4de0-b89a-1b8844ad1190', '3f47b0a8-a164-42dd-bd59-f71071edcc87', 'Azure Data Box', TRUE, 1),
    ('934402d7-fbc8-4cd8-ae1d-9ee0a376ef72', '3f47b0a8-a164-42dd-bd59-f71071edcc87', 'Azure Migrate', FALSE, 2),
    ('cb81e40e-fc74-4a96-81cf-2b0f3e16f2c9', '3f47b0a8-a164-42dd-bd59-f71071edcc87', 'Data Migration Assistant', FALSE, 3),
    ('d7c9d222-4c8a-45b0-8034-93c0b9470a1f', '3f47b0a8-a164-42dd-bd59-f71071edcc87', 'Steve, the underpaid intern who works in IT', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3d30b0b8-f8f2-4c57-a8bc-9136f419d51e', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Microsoft Entra Domain Services (MDS) is a managed domain service that can be used to:',
        'Extending AD DS to the cloud is the primary purpose of Microsoft Entra Domain Services (MDS). It allows organizations to leverage their existing on-premises AD DS infrastructure and extend it to Azure, enabling seamless integration and management of identities across both environments.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7cf1331f-24a0-4dc5-a539-8c4e30c0c80f', '3d30b0b8-f8f2-4c57-a8bc-9136f419d51e', 'Replace Active Directory Domain Services (AD DS) entirely.', FALSE, 1),
    ('c72ad87f-7946-4197-93af-efb44214f03f', '3d30b0b8-f8f2-4c57-a8bc-9136f419d51e', 'Extend AD DS to the cloud.', TRUE, 2),
    ('af1b5950-bcff-4654-b489-12ca5cf37a55', '3d30b0b8-f8f2-4c57-a8bc-9136f419d51e', 'Only support cloud-based applications.', FALSE, 3),
    ('63fcca0f-e642-4f5f-b141-065fb33f6e4e', '3d30b0b8-f8f2-4c57-a8bc-9136f419d51e', 'Provide a completely separate identity system from AD DS.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9ba436eb-70b7-43cb-b9d8-4b324fd089c5', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is the primary purpose of multi-factor authentication (MFA)?',
        'Multi-factor authentication (MFA) is used to enhance the security of user accounts by requiring multiple forms of verification, such as a password, a code sent to a mobile device, or a fingerprint scan. This additional layer of security helps protect against unauthorized access, even if one factor (like a password) is compromised.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('580c5603-43d2-475c-90f9-c1f12c2c2d08', '9ba436eb-70b7-43cb-b9d8-4b324fd089c5', 'To add an extra layer of security to user accounts by requiring multiple forms of verification.', TRUE, 1),
    ('bfd258a0-3587-4807-83e1-d5e193012463', '9ba436eb-70b7-43cb-b9d8-4b324fd089c5', 'To simplify the login process for users.', FALSE, 2),
    ('9699b7c6-c6c7-4ac1-8f45-9f68fa365095', '9ba436eb-70b7-43cb-b9d8-4b324fd089c5', 'To eliminate the need for passwords.', FALSE, 3),
    ('8f69f4b2-1f95-4caf-9938-c7511fa691a0', '9ba436eb-70b7-43cb-b9d8-4b324fd089c5', 'To protect against phishing attacks.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7771fe44-9b6e-4d49-9b57-f05fbb4c9752', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is the primary purpose of Azure B2C?',
        'Azure B2C is specifically designed to enable organizations to provide identity and access management for their customers. It allows businesses to create and customize customer-facing applications that require authentication, registration, and profile management for external users.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('12036551-e1ab-4e15-bdef-9217789316af', '7771fe44-9b6e-4d49-9b57-f05fbb4c9752', 'To enable your organization to provide identity and access management for your customers.', TRUE, 1),
    ('4cbf1596-c57d-47cf-a72d-7ea1e1ba0342', '7771fe44-9b6e-4d49-9b57-f05fbb4c9752', 'To allow employees to access company resources from personal devices.', FALSE, 2),
    ('17f1dab8-18c4-49a5-9594-0b1f652987fc', '7771fe44-9b6e-4d49-9b57-f05fbb4c9752', 'To manage identity and access for external partners and vendors.', FALSE, 3),
    ('744471e1-2aff-4da2-b082-a36ae4bd9a74', '7771fe44-9b6e-4d49-9b57-f05fbb4c9752', 'To provide identity and access management for internal users.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('29592b6b-7806-4ac5-97b9-91dc5bc0bf61', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which of the following is NOT a condition that can be used in a Conditional Access policy?',
        'Device type is not a condition that can be used in a Conditional Access policy. While device state, such as compliance, can be used as a condition, the type of device itself is not a configurable condition in Conditional Access policies.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0669a7ec-9aa5-4940-9e53-e4a3fb6c2894', '29592b6b-7806-4ac5-97b9-91dc5bc0bf61', 'User location', FALSE, 1),
    ('f6fe7285-ce00-4fef-9f18-e2e847997654', '29592b6b-7806-4ac5-97b9-91dc5bc0bf61', 'Device type', TRUE, 2),
    ('6318a156-7775-418f-95ff-11443a084460', '29592b6b-7806-4ac5-97b9-91dc5bc0bf61', 'User risk level', FALSE, 3),
    ('e101b16a-2472-498b-8999-e97ce2bba224', '29592b6b-7806-4ac5-97b9-91dc5bc0bf61', 'Application type', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('50204365-fd5d-4885-9253-ad741c62088c', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is the purpose of the "Owner" role in Azure RBAC?',
        'The "Owner" role in Azure RBAC is specifically designed to manage Azure resources, which includes the ability to give access to other users. This role has full control over resources and can delegate access to others as needed.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d9c177f4-642b-45c6-b6a1-d8f894ea86b3', '50204365-fd5d-4885-9253-ad741c62088c', 'To view Azure resources', FALSE, 1),
    ('35c74b6f-e621-4b9d-a931-956958fa8b11', '50204365-fd5d-4885-9253-ad741c62088c', 'To manage Azure resources but not be able to delegate user permissions', FALSE, 2),
    ('4c1f73b8-9979-412e-9bca-419706dfc96e', '50204365-fd5d-4885-9253-ad741c62088c', 'To manage Azure resources including delegating user permissions', TRUE, 3),
    ('f243c745-a34e-4564-bbbd-fa7e11d8633b', '50204365-fd5d-4885-9253-ad741c62088c', 'To monitor Azure resources for security threats', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4c1581b8-7941-4019-b712-a58b8335f978', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is the core principle of Zero Trust security?',
        'The core principle of Zero Trust security is to "Never trust, always verify." This means that all users, devices, and applications should be continuously authenticated and authorized, regardless of their location or network access.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a1df4ea9-2ab7-45ae-a809-3be637ee7276', '4c1581b8-7941-4019-b712-a58b8335f978', 'Trust but verify.', FALSE, 1),
    ('595e43e8-cb3b-4887-b2b2-75928ff054e8', '4c1581b8-7941-4019-b712-a58b8335f978', 'Never trust, always verify.', TRUE, 2),
    ('3d602461-a7a8-4a89-850f-f30f96dd6f4a', '4c1581b8-7941-4019-b712-a58b8335f978', 'Assume trust until proven otherwise.', FALSE, 3),
    ('acc0d185-c953-4082-af4a-1b92e2fe3df9', '4c1581b8-7941-4019-b712-a58b8335f978', 'Security through obscurity.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b6c8aa88-8059-4411-b7d4-b6203a4aa36e', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which of the following is NOT a key feature of Microsoft Defender for Cloud?',
        'Password management is NOT a key feature of Microsoft Defender for Cloud. While password management is important for overall security, it is not a primary focus of Microsoft Defender for Cloud, which primarily focuses on threat detection, vulnerability assessment, and security posture management.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b74d78a3-4d23-4a36-bb7f-107dd9fb75c7', 'b6c8aa88-8059-4411-b7d4-b6203a4aa36e', 'Vulnerability assessment', FALSE, 1),
    ('a7b1eccd-d967-495f-ba11-027e80d304f5', 'b6c8aa88-8059-4411-b7d4-b6203a4aa36e', 'Threat detection and response', FALSE, 2),
    ('538e6903-389a-4de2-8529-350950d59c7e', 'b6c8aa88-8059-4411-b7d4-b6203a4aa36e', 'Password management', TRUE, 3),
    ('e3473f6c-4953-438b-82e5-4a0caa91f33c', 'b6c8aa88-8059-4411-b7d4-b6203a4aa36e', 'Security posture management', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('530f00ca-848f-435a-91d9-346bb367407d', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'How can Azure Cost Management help identify cost-saving opportunities?',
        'Azure Cost Management can help identify cost-saving opportunities by analyzing resource utilization and identifying underutilized resources. By understanding which resources are not being fully utilized, organizations can make informed decisions on optimizing their spending and potentially saving costs.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bf9e4e59-d9c1-4165-8075-615f6bcfb73f', '530f00ca-848f-435a-91d9-346bb367407d', 'By analyzing resource utilization and identifying underutilized resources', TRUE, 1),
    ('bd0613c6-928f-44cc-9dda-4733b926a897', '530f00ca-848f-435a-91d9-346bb367407d', 'By automatically shutting down idle virtual machines', FALSE, 2),
    ('c212e720-4953-47b6-a370-ad3a9124d08c', '530f00ca-848f-435a-91d9-346bb367407d', 'By providing real-time cost forecasts', FALSE, 3),
    ('fbf9374f-4428-4cd3-8c32-1100e2ee184d', '530f00ca-848f-435a-91d9-346bb367407d', 'By recommending the cheapest Azure services', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('19f3d840-6656-426a-acf9-40ffa7b4d36e', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'What is the primary purpose of Microsoft Purview in Azure?',
        'The primary purpose of Microsoft Purview in Azure is to unify data governance and compliance across various data sources. It helps organizations discover, classify, and protect their data assets to ensure compliance with regulations and internal policies.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c2e43f02-b486-48e6-b588-18b033d007e7', '19f3d840-6656-426a-acf9-40ffa7b4d36e', 'To provide advanced security features for Azure resources', FALSE, 1),
    ('584929c3-62f9-44ca-b0c5-5b8de0953909', '19f3d840-6656-426a-acf9-40ffa7b4d36e', 'To monitor and optimize the performance of Azure resources', FALSE, 2),
    ('6b73ba68-224d-4b95-95d6-b00c4d82bc34', '19f3d840-6656-426a-acf9-40ffa7b4d36e', 'To unify data governance and compliance across various data sources', TRUE, 3),
    ('e7e5bb20-3e43-49c8-b785-4ac63024a694', '19f3d840-6656-426a-acf9-40ffa7b4d36e', 'To automate the deployment and configuration of Azure resources', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('efc1427a-3905-44a2-ac38-107f3fdcfeaa', '18eb1648-4bac-4b9a-a88d-bcbb642a79a6', 'SINGLE_CHOICE', 'Which of the following is NOT a common use case for Azure Policy? ✅',
        'Denying access to resources to a specific individual is NOT a common use case for Azure Policy. Azure Policy is primarily used for defining and enforcing rules and regulations related to resource configurations, compliance, and security, rather than managing individual access permissions.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('791d60e9-1e2c-4e93-a6a2-1fb9389f0783', 'efc1427a-3905-44a2-ac38-107f3fdcfeaa', 'Enforcing network security standards', FALSE, 1),
    ('b104e348-c4cd-4739-96f6-17c10e493b8a', 'efc1427a-3905-44a2-ac38-107f3fdcfeaa', 'Requiring resource tagging for cost allocation', FALSE, 2),
    ('38d82178-6c1d-4738-8737-ab28d8ecf1fd', 'efc1427a-3905-44a2-ac38-107f3fdcfeaa', 'Denying access to resources to a specific individual', TRUE, 3),
    ('4e62b441-f366-4ab6-8de4-003664f1dc9e', 'efc1427a-3905-44a2-ac38-107f3fdcfeaa', 'Preventing the creation of resources in specific regions', FALSE, 4);
