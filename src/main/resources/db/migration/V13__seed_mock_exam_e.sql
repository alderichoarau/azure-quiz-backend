-- Examen blanc officiel E (AZ900_Test_E.docx) - real AZ-900 mock exam content
-- 50 questions with answers/explanations from the same document (self-contained practice test).
-- This is an official, complete mock exam: it must stay independent from other mock exams and
-- from course modules - it is excluded from the random cross-module exam draw (module type
-- MOCK_EXAM, see QuestionRepository.findRandomActiveByCertification).

INSERT INTO module (id, certification_id, code, title, description, position, type)
VALUES ('ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', '00000000-0000-0000-0000-000000000001', 'mock-exam-e', 'Examen blanc officiel E',
        'Examen blanc officiel AZ-900 complet, 50 questions - a realiser en une seule fois.', 11, 'MOCK_EXAM');

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('be0f84cf-8a51-464f-814d-fdad6191848e', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Who typically owns the IT infrastructure in the cloud computing model?',
        'In the cloud computing model, the IT infrastructure is typically owned by the vendor, such as Microsoft Azure or Amazon AWS. The vendor is responsible for managing and maintaining the physical hardware, networking components, and virtualization technology that make up the cloud infrastructure. This allows clients to access and use computing resources on-demand without having to invest in and manage their own physical infrastructure.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('af722b7a-5604-4b7b-897a-48cb8e4be28e', 'be0f84cf-8a51-464f-814d-fdad6191848e', 'The vendor such as Microsoft Azure or Amazon AWS', TRUE, 1),
    ('da0e9551-734a-46d7-a6d8-7a5d073775c3', 'be0f84cf-8a51-464f-814d-fdad6191848e', 'The client such as you', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('be691175-bb6a-4d9f-968e-188a3b47c806', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'There is a well-defined division of responsibilities when it comes to applications and data in the cloud. The cloud vendor is typically responsible for the physical and network security of the cloud. Who is typically responsible for the security and protection of customer data in the cloud?',
        'The customer is typically responsible for the security and protection of their own data.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('32bc661b-7c0f-400c-a032-ae56eec26d33', 'be691175-bb6a-4d9f-968e-188a3b47c806', 'The cloud provider, such as Microsoft Azure or Amazon AWS', FALSE, 1),
    ('ac3bba26-9523-45fe-a72f-fbc227c2c550', 'be691175-bb6a-4d9f-968e-188a3b47c806', 'The customer, such as you', TRUE, 2),
    ('3cbd8413-d812-4215-bf54-c8b002a0cc7e', 'be691175-bb6a-4d9f-968e-188a3b47c806', 'The cloud provider and the customer are both equally responsible', FALSE, 3),
    ('dd4af938-e295-44bd-9f80-380b74e27954', 'be691175-bb6a-4d9f-968e-188a3b47c806', 'It''s really difficult to say anyone is responsible for it', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('50161ad4-0abe-4cb4-aca3-c0e990615d8a', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Your company runs most of its data and applications on-premises and only uses the cloud when it needs to temporarily scale for more resources. For instance, it has 18 virtualized servers running in its own datacenter and can scale up to another 18 virtual machines in Azure if needed. What is this usage of the cloud called?',
        'Hybrid Cloud refers to a cloud computing environment that combines on-premises infrastructure with public cloud services. In this scenario, the company''s usage of both on-premises servers and Azure virtual machines for scaling purposes aligns with the definition of a hybrid cloud deployment.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('81e04586-0186-4256-b6ad-87df3699ebb7', '50161ad4-0abe-4cb4-aca3-c0e990615d8a', 'Public Cloud', FALSE, 1),
    ('9e1e3fd3-7cc8-4f8f-8850-4d772c67eba6', '50161ad4-0abe-4cb4-aca3-c0e990615d8a', 'Private Cloud', FALSE, 2),
    ('f498c490-7a1b-4c13-92e3-4e5a4471832a', '50161ad4-0abe-4cb4-aca3-c0e990615d8a', 'Hybrid Cloud', TRUE, 3),
    ('2d8417b0-77b3-41a1-9c8e-87ca6fbd64b8', '50161ad4-0abe-4cb4-aca3-c0e990615d8a', 'Autoscaling', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a62818d2-e6ac-4e6f-9a55-8b505d0fa0d9', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'A large financial institution with strict compliance requirements and a need to maintain control over sensitive data would be best suited for which cloud model?',
        'Private Cloud is dedicated solely to a single organization, providing greater control, security, and customization options. This cloud model would be best suited for a large financial institution with strict compliance requirements and a need to maintain control over sensitive data, as it offers the highest level of security and control.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('df601cd0-4066-4679-8f6a-efdb231b0cbf', 'a62818d2-e6ac-4e6f-9a55-8b505d0fa0d9', 'Public Cloud', FALSE, 1),
    ('fa387021-1ea4-4ba7-a55e-1b1cda5f7829', 'a62818d2-e6ac-4e6f-9a55-8b505d0fa0d9', 'Hybrid Cloud', FALSE, 2),
    ('254c61aa-e785-4d2d-b1e2-a03cebec8433', 'a62818d2-e6ac-4e6f-9a55-8b505d0fa0d9', 'Private Cloud', TRUE, 3),
    ('d6fd8482-8cec-4078-95d3-8d7a04c69e99', 'a62818d2-e6ac-4e6f-9a55-8b505d0fa0d9', 'Community Cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('466fda1d-dbfa-4f42-bcd2-ec04608f5971', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'How does the consumption-based model help businesses manage their IT costs?',
        'The consumption-based model helps businesses manage their IT costs by aligning costs with actual usage. This means that businesses only pay for the resources they use, allowing for more cost-effective and efficient IT budget management.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('aeaf91eb-cf89-4c9b-89f3-41a79a49ed1a', '466fda1d-dbfa-4f42-bcd2-ec04608f5971', 'By requiring upfront investments', FALSE, 1),
    ('dd47e792-4fe7-4df2-99c3-bf92156dc420', '466fda1d-dbfa-4f42-bcd2-ec04608f5971', 'By limiting resource usage', FALSE, 2),
    ('e230eb6f-c794-43c9-ab1e-0ca028b690da', '466fda1d-dbfa-4f42-bcd2-ec04608f5971', 'By aligning costs with actual usage', TRUE, 3),
    ('3f10e009-96ba-4e7c-bd75-140b9892c7c6', '466fda1d-dbfa-4f42-bcd2-ec04608f5971', 'By increasing long-term commitments', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c2b0bbde-8322-44c9-9eba-5b695e4a8d84', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which cloud pricing model is often used for applications with predictable workloads and long-term requirements?',
        'Reserved instances are a pricing model where users commit to a specific amount of compute capacity for a fixed period, typically one to three years, at a discounted rate. This model is often used for applications with predictable workloads and long-term requirements, as it provides cost savings over the pay-as-you-go pricing.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('93e3af38-65b8-4020-9436-4046c3461904', 'c2b0bbde-8322-44c9-9eba-5b695e4a8d84', 'Spot instances', FALSE, 1),
    ('c0093c87-7ae7-4c52-8468-4a50f434af8e', 'c2b0bbde-8322-44c9-9eba-5b695e4a8d84', 'Reserved instances', TRUE, 2),
    ('7de61ce9-6d22-41a0-aece-af526bd6799d', 'c2b0bbde-8322-44c9-9eba-5b695e4a8d84', 'Pay-as-you-go', FALSE, 3),
    ('9fb38740-5053-4dde-837d-ebde8bc18599', 'c2b0bbde-8322-44c9-9eba-5b695e4a8d84', 'Serverless computing', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d53c5872-7852-4701-893f-d2d8296833cb', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which of the following is an example of a serverless computing service?',
        'Azure Functions is an example of a serverless computing service. Azure Functions allow developers to run small pieces of code without having to manage the infrastructure. They automatically scale based on demand and only charge for the resources used during execution.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2b5a3a5d-8801-4f97-a4b1-9f6d29f92566', 'd53c5872-7852-4701-893f-d2d8296833cb', 'Virtual Machines', FALSE, 1),
    ('45ded867-4616-442f-9187-f489b1914e43', 'd53c5872-7852-4701-893f-d2d8296833cb', 'Azure Functions', TRUE, 2),
    ('e625e3a6-0d8d-424c-aede-8f4e1571b655', 'd53c5872-7852-4701-893f-d2d8296833cb', 'Storage Accounts', FALSE, 3),
    ('e235ecad-deb1-4aa0-ac2d-3703adf1ec4b', 'd53c5872-7852-4701-893f-d2d8296833cb', 'App Services', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c440761b-8be8-4f0a-ab29-f585e887c813', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'How does high availability help businesses avoid financial losses?',
        'High availability ensures uninterrupted revenue generation by minimizing downtime and ensuring that services are always accessible to customers. This continuous availability helps businesses maintain their revenue streams and avoid financial losses that may result from service interruptions.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fa11dc6c-923c-49ed-96e9-43ca02b0e9f1', 'c440761b-8be8-4f0a-ab29-f585e887c813', 'By increasing downtime', FALSE, 1),
    ('9f9d8249-3572-4949-803b-55555d62f81a', 'c440761b-8be8-4f0a-ab29-f585e887c813', 'By reducing operational costs', FALSE, 2),
    ('06439676-e9fd-4ef8-a2d9-16cfa13ea7e5', 'c440761b-8be8-4f0a-ab29-f585e887c813', 'By preventing data loss', FALSE, 3),
    ('2c5bacd2-2b36-4ce1-b3d2-692e236472cd', 'c440761b-8be8-4f0a-ab29-f585e887c813', 'By ensuring uninterrupted revenue generation', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('069209c8-87c0-4f1b-a8a7-0c0a43615993', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Unexpectedly, a celebrity posts a glowing review of your product to their social media channels. Your website received a huge spike in traffic and orders, and handles it well. Because you use a cloud platform to host your website, it automatically added additional resources as required and turned them off when no longer required. This property of your application is known as __________.',
        'Scalability refers to the ability of a system to handle increased workload by adding resources dynamically. In this scenario, the cloud platform automatically added additional resources to handle the spike in traffic, demonstrating the scalability of the application.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8915c87b-f0e1-432e-859e-9542db37a834', '069209c8-87c0-4f1b-a8a7-0c0a43615993', 'Scalability', TRUE, 1),
    ('a415f4a4-234b-493c-96a5-08d7f8b68303', '069209c8-87c0-4f1b-a8a7-0c0a43615993', 'Manageability', FALSE, 2),
    ('d131886d-a69f-46bf-b53b-dc48bbd255e3', '069209c8-87c0-4f1b-a8a7-0c0a43615993', 'High availability', FALSE, 3),
    ('11f7be1f-5539-43fe-8d84-e5cabfce8789', '069209c8-87c0-4f1b-a8a7-0c0a43615993', 'Predictability', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('55c132df-e76c-4d4e-8878-9090d9a4049a', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What does redundancy mean in the context of Azure?',
        'Having multiple copies of a resource to ensure availability is the correct definition of redundancy in Azure. By having redundant resources, Azure can maintain service availability even if one instance fails.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d329b7c6-d458-4496-82a2-6fcb36cdd258', '55c132df-e76c-4d4e-8878-9090d9a4049a', 'Using a single instance of a resource to avoid failures.', FALSE, 1),
    ('bd9b6fd6-b1b1-4526-9a1a-8444452088d0', '55c132df-e76c-4d4e-8878-9090d9a4049a', 'Having multiple copies of a resource to ensure availability.', TRUE, 2),
    ('1a60d81e-8a93-48dd-acb7-d5bd97584b0d', '55c132df-e76c-4d4e-8878-9090d9a4049a', 'Implementing failover to a secondary data center in case of a disaster.', FALSE, 3),
    ('7bc56015-7341-4bdd-b2af-6902f8c1d290', '55c132df-e76c-4d4e-8878-9090d9a4049a', 'Monitoring system health to detect and prevent issues.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('df1fd533-8282-416f-9d9d-953eeb8d9cb2', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What does cost predictability mean in the context of Azure?',
        'Cost predictability in the context of Azure refers to the ability to accurately forecast and estimate future costs associated with using Azure services. This helps organizations plan their budgets effectively and avoid any surprises in terms of expenses.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3c3abb1b-b4d9-49c4-81ff-fe02589f4a9f', 'df1fd533-8282-416f-9d9d-953eeb8d9cb2', 'The ability to accurately forecast future costs.', TRUE, 1),
    ('2312bafc-640c-4732-a54b-c25698ee78b4', 'df1fd533-8282-416f-9d9d-953eeb8d9cb2', 'The ability to reduce costs over time.', FALSE, 2),
    ('01ab1bad-e1c8-4bc1-8b46-a6e467e511d8', 'df1fd533-8282-416f-9d9d-953eeb8d9cb2', 'The ability to allocate costs to specific resources.', FALSE, 3),
    ('4c39d280-0527-4605-841a-e9f5606585b7', 'df1fd533-8282-416f-9d9d-953eeb8d9cb2', 'The ability to avoid unexpected charges.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8ccc6623-2429-4edb-8014-4b4bb16a94f9', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'MULTIPLE_CHOICE', 'Which of the following can be considered a benefit of using the cloud regarding security?',
        'Regular updates and patches are a benefit of using the cloud for security because cloud service providers are responsible for maintaining and updating the infrastructure and services they offer. This helps ensure that security vulnerabilities are addressed promptly and that the latest security patches are applied to protect against potential threats.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('28f9749f-00a4-4c1a-a978-d21e86c6a282', '8ccc6623-2429-4edb-8014-4b4bb16a94f9', 'Regular updates and patches', TRUE, 1),
    ('782fdc6d-18a5-44e5-a1a1-632f68594ba4', '8ccc6623-2429-4edb-8014-4b4bb16a94f9', 'Centralized management and monitoring', TRUE, 2),
    ('607839d5-1c40-439d-8c54-b334f5d3e82e', '8ccc6623-2429-4edb-8014-4b4bb16a94f9', 'Adheres to industry-standard compliance frameworks', TRUE, 3),
    ('bdf86e7a-4d8e-46ab-b068-2e14c192f400', '8ccc6623-2429-4edb-8014-4b4bb16a94f9', 'Ability to disable security measures such as encryption for specific applications or uses', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e82cd0fb-6b2b-4d78-bdfa-c7960f02ad80', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Your company regularly audits the usage of cloud computing resources to ensure they are in compliance with regulatory requirements and corporate standards. What is practice this an example of?',
        'Governance refers to the process of managing and controlling cloud computing resources to ensure they are used in accordance with regulatory requirements, corporate standards, and best practices. Regular audits to monitor resource usage and compliance are a key aspect of governance in cloud environments.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9dbde426-b152-42d7-8da2-b4657cd7c26c', 'e82cd0fb-6b2b-4d78-bdfa-c7960f02ad80', 'Governance', TRUE, 1),
    ('6a5be921-3854-43c9-bfd6-e3395b0403dc', 'e82cd0fb-6b2b-4d78-bdfa-c7960f02ad80', 'Scalability', FALSE, 2),
    ('0e997e32-a90a-4cb5-bcde-269a1d483fa1', 'e82cd0fb-6b2b-4d78-bdfa-c7960f02ad80', 'Reliability', FALSE, 3),
    ('07473691-c4e1-4a77-8f14-5dbf9f0ff6c0', 'e82cd0fb-6b2b-4d78-bdfa-c7960f02ad80', 'Reactive Approach', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c7fffbe8-9498-427b-8dab-8aadf4e47566', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'One of the benefits of cloud computing is that you can create a set of virtual machines that can automatically scale to add more resources or reduce resources based on need. This is an example of what type of manageability benefit?',
        'Management of the cloud speaks to managing your cloud resources. This includes setting up rules for autoscaling servers.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c976886e-763f-42fa-8ec3-f295e3e1d6d9', 'c7fffbe8-9498-427b-8dab-8aadf4e47566', 'Management of the cloud', TRUE, 1),
    ('3cb314f7-425f-4be7-86f1-01def6b98ee8', 'c7fffbe8-9498-427b-8dab-8aadf4e47566', 'Management in the cloud', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c3a764ac-5d08-4e8e-b742-bcb29e491901', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What type of scaling typically involves adding more resources to a pool of existing resources?',
        'Horizontal scaling, also known as scale-out, involves adding more resources, such as servers or instances, to a pool of existing resources. This type of scaling helps distribute the load across multiple machines, improving performance and increasing capacity as needed.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1cfc1d2a-1c98-4b67-b98a-9894a7e18c31', 'c3a764ac-5d08-4e8e-b742-bcb29e491901', 'Horizontal scaling', TRUE, 1),
    ('31a1c68c-e4ee-43a2-afb5-27d2169e0fbb', 'c3a764ac-5d08-4e8e-b742-bcb29e491901', 'Vertical scaling', FALSE, 2),
    ('f74423f9-8078-4afd-97de-8c0e0b889c51', 'c3a764ac-5d08-4e8e-b742-bcb29e491901', 'Scaling up', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3281b22d-f4c6-4029-a483-36e32d48df52', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which of the following is an example of an IaaS offering from Azure?',
        'Azure Virtual Machines is an example of an Infrastructure as a Service (IaaS) offering from Azure. It allows users to deploy and manage virtual machines in the cloud, giving them full control over the operating system, applications, and configurations.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d1280628-b4d2-4bf9-9de3-650f63c6f064', '3281b22d-f4c6-4029-a483-36e32d48df52', 'Azure App Service', FALSE, 1),
    ('883b048a-98b3-4f14-8728-e22746750f4a', '3281b22d-f4c6-4029-a483-36e32d48df52', 'Azure SQL Database', FALSE, 2),
    ('31854344-c676-4488-b058-d85edbaafbd3', '3281b22d-f4c6-4029-a483-36e32d48df52', 'Azure Virtual Machines', TRUE, 3),
    ('e1b81470-3596-4c49-80fe-87337ce9810d', '3281b22d-f4c6-4029-a483-36e32d48df52', 'Azure Functions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cbc29249-1f3a-4017-9e2f-0a37b88b1d08', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which of the following is an example of a PaaS offering from Azure?',
        'Azure App Service is a Platform as a Service (PaaS) offering from Azure. It allows users to build, deploy, and scale web applications and APIs without managing the underlying infrastructure. It provides features like automatic scaling, continuous deployment, and integration with other Azure services.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('55bd5d5b-e2df-4d79-8495-c0220aab637c', 'cbc29249-1f3a-4017-9e2f-0a37b88b1d08', 'Azure Virtual Machines', FALSE, 1),
    ('81521f33-7f73-407f-9acb-057e9a39ed4f', 'cbc29249-1f3a-4017-9e2f-0a37b88b1d08', 'Azure Storage (General Purpose V2)', FALSE, 2),
    ('d8505da1-16e5-4b23-9806-829e6e96ab77', 'cbc29249-1f3a-4017-9e2f-0a37b88b1d08', 'Azure App Service', TRUE, 3),
    ('6933b40c-659a-4f0f-a639-04000c86a5a7', 'cbc29249-1f3a-4017-9e2f-0a37b88b1d08', 'Microsoft Entra ID (formerly Azure Active Directory)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a0c763f1-3251-4d28-a007-476ec8e5413e', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Many years ago, your company licensed some software that requires access to the Windows Registry to run. There is currently no option to run the app without the ability to write to the Registry. Which of the following is the only option for running this app in the cloud?',
        'IaaS (Infrastructure as a Service) provides the most control over the underlying infrastructure, including the ability to access and modify the Windows Registry. This option allows you to run the licensed software in a virtual machine environment where you have full control over the operating system and its configurations.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1c9d4ab7-1dd3-4b11-bf3a-4a16750db7be', 'a0c763f1-3251-4d28-a007-476ec8e5413e', 'IaaS', TRUE, 1),
    ('7891ab40-7918-42bf-80d4-f5f8a9a775e0', 'a0c763f1-3251-4d28-a007-476ec8e5413e', 'PaaS', FALSE, 2),
    ('fb6a0b74-21a7-4b5e-9e6a-3a23f3a6c9e8', 'a0c763f1-3251-4d28-a007-476ec8e5413e', 'SaaS', FALSE, 3),
    ('51b79d34-2fd3-44e7-9ff8-8485cba01d7a', 'a0c763f1-3251-4d28-a007-476ec8e5413e', 'Serverless', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('69f796be-f3a4-4399-8d8e-312b30adc192', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'By design, when an entire Azure region fails as it may during a natural disaster in that region, where do some Azure services automatically fail over to?',
        'Azure services are designed to automatically fail over to their region pair, which is at least 300 miles away in the same geography, in the event of a regional failure. This ensures high availability and redundancy for critical services in case of a natural disaster or other catastrophic events.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6cdb87c1-32f9-45de-bd46-338587c39d18', '69f796be-f3a4-4399-8d8e-312b30adc192', 'Its region pair, which is at least 300 miles away in the same geography', TRUE, 1),
    ('a7d612f3-c7b2-426c-9148-b93af9ba9658', '69f796be-f3a4-4399-8d8e-312b30adc192', 'Another region, which is usually located in another geography', FALSE, 2),
    ('4c30a5bc-6d98-4edb-acf8-53710d8024af', '69f796be-f3a4-4399-8d8e-312b30adc192', 'Most regions fail over to US East', FALSE, 3),
    ('a751e791-5fa7-491a-b68b-6659b2cb37b9', '69f796be-f3a4-4399-8d8e-312b30adc192', 'There are no Azure services that fail over if its region were to fail', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('01ca64f2-7687-4a40-ae67-1503a3e476dc', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is the primary purpose of Availability Zones in Azure?',
        'The primary purpose of Availability Zones in Azure is to provide redundancy and fault tolerance. By distributing resources across multiple zones within a region, Azure can ensure that services remain available even if one zone experiences an outage or failure.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b514ef53-19ad-4825-ac1b-0081e9e48051', '01ca64f2-7687-4a40-ae67-1503a3e476dc', 'To provide access to Azure services in specific geographic locations', FALSE, 1),
    ('0457b672-af30-420f-9a24-a3cd65eb51fa', '01ca64f2-7687-4a40-ae67-1503a3e476dc', 'To ensure data residency compliance', FALSE, 2),
    ('bdf86ccc-4cd8-4ac8-a555-85baa5656c32', '01ca64f2-7687-4a40-ae67-1503a3e476dc', 'To provide redundancy and fault tolerance', TRUE, 3),
    ('a8495382-a57d-4611-9af3-75fe62acdccd', '01ca64f2-7687-4a40-ae67-1503a3e476dc', 'To offer discounts for customers in certain regions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c089ea9d-0232-4699-b945-e616a0e423ca', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which Azure service can be used to create a highly available application across multiple Availability Zones?',
        'All answers are correct. Azure offers various services and features that can be used together to create a highly available application across multiple Availability Zones. By leveraging a combination of Azure App Service, Azure Storage, and Azure Virtual Machines, you can design a resilient architecture that ensures your application remains available even in the event of failures in one Availability Zone.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('39d7fdb0-2ef8-4e87-87a4-6d013e1c4e05', 'c089ea9d-0232-4699-b945-e616a0e423ca', 'Azure App Service', FALSE, 1),
    ('9bef20dc-415d-4a76-9490-41a94973f357', 'c089ea9d-0232-4699-b945-e616a0e423ca', 'Azure Storage', FALSE, 2),
    ('9ae66043-83e9-4eb5-a175-58aebece460c', 'c089ea9d-0232-4699-b945-e616a0e423ca', 'Azure Virtual Machines', FALSE, 3),
    ('2d0502da-16a1-4d16-a761-19baad026b54', 'c089ea9d-0232-4699-b945-e616a0e423ca', 'All answers are correct', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3835e934-6c1f-46e0-9834-d0faff090883', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is an Azure resource?',
        'This choice is correct because an Azure resource is a logical entity that represents a cloud resource within the Azure platform. Azure resources can include virtual machines, databases, storage accounts, and more, all represented as logical entities within Azure.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e0354813-d00a-4217-8f21-747c6d130dbd', '3835e934-6c1f-46e0-9834-d0faff090883', 'A physical device in an Azure datacenter.', FALSE, 1),
    ('65073670-4796-43ba-9312-6ff433489e0c', '3835e934-6c1f-46e0-9834-d0faff090883', 'A software component that provides a service.', FALSE, 2),
    ('365728f8-98b3-4d0d-856b-259347417c56', '3835e934-6c1f-46e0-9834-d0faff090883', 'A logical entity that represents a cloud resource.', TRUE, 3),
    ('a3a9bbc4-c900-45df-b98c-164b526543fd', '3835e934-6c1f-46e0-9834-d0faff090883', 'A subscription to Azure services.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('67aa84f1-5b19-4f11-b78c-fc19568ea3d4', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Why is it beneficial to organize Azure resources into resource groups?',
        'Organizing Azure resources into resource groups allows for easier management and deployment of related resources. By grouping resources together, it becomes simpler to apply policies, permissions, and tags, as well as to monitor and track costs for a specific project or application.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4af0203a-ca0e-40f3-ae8d-84922c4b0623', '67aa84f1-5b19-4f11-b78c-fc19568ea3d4', 'To simplify management and deployment.', TRUE, 1),
    ('2a9dc299-6782-4e64-a0b6-1dcc0668bd15', '67aa84f1-5b19-4f11-b78c-fc19568ea3d4', 'To improve performance.', FALSE, 2),
    ('b45801b9-3ce7-4934-980c-3c2f43abf517', '67aa84f1-5b19-4f11-b78c-fc19568ea3d4', 'To reduce costs.', FALSE, 3),
    ('3f57dd90-6e7f-46f6-9090-2c1866d856aa', '67aa84f1-5b19-4f11-b78c-fc19568ea3d4', 'To enhance security.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d4dcf923-bd59-4053-8876-3c8a2d0d0172', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Can subscriptions be nested?',
        'Subscriptions in Microsoft Azure cannot be nested. Each subscription is an independent entity with its own billing, access control, and resource management. Subscriptions cannot be organized in a parent-child relationship or nested within each other.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('64aca96f-558c-45de-8bf9-a0e44e52cc3c', 'd4dcf923-bd59-4053-8876-3c8a2d0d0172', 'Yes', FALSE, 1),
    ('f8c4d5a8-862a-4873-9fed-c0622d8da095', 'd4dcf923-bd59-4053-8876-3c8a2d0d0172', 'No', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('67874e3c-17b9-46ee-ad5b-d8255db5821c', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which of the following statements about Azure Management Groups is true?',
        'This statement is correct. Azure Management Groups can be used to apply policies, access controls, and compliance to multiple subscriptions within the same Azure tenant. This helps in managing access and governance at scale.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4f86886b-dede-4635-8cd7-a8c481f0bb31', '67874e3c-17b9-46ee-ad5b-d8255db5821c', 'Management Groups can contain subscriptions from multiple Azure tenants.', FALSE, 1),
    ('faf529c0-a3a0-4c17-9b57-c24e1132ce3f', '67874e3c-17b9-46ee-ad5b-d8255db5821c', 'Management Groups can be used to apply policies and access controls across multiple subscriptions within the same tenant.', TRUE, 2),
    ('95b93a3a-1467-4e32-b549-57cec2b19e36', '67874e3c-17b9-46ee-ad5b-d8255db5821c', 'A subscription can belong to multiple Management Groups simultaneously.', FALSE, 3),
    ('cf548f99-29ed-41fd-a837-0f2cc1417b93', '67874e3c-17b9-46ee-ad5b-d8255db5821c', 'Management Groups are limited to a maximum of 10 subscriptions per group.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9ee16c5e-adb4-40ff-8bed-3b002229fa14', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which compute type is designed to package and deploy applications along with their dependencies, ensuring consistent behavior across different environments?',
        'Containers are designed to package applications and their dependencies in a consistent manner, ensuring that they behave the same way across different environments. They are lightweight, portable, and offer efficient resource utilization, making them an ideal choice for deploying applications.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a2ec559c-daee-468e-a08d-3aa6dc48bb36', '9ee16c5e-adb4-40ff-8bed-3b002229fa14', 'Virtual Machine', FALSE, 1),
    ('15dd9529-add7-4667-bbc9-635a9d6b24e5', '9ee16c5e-adb4-40ff-8bed-3b002229fa14', 'Container', TRUE, 2),
    ('1f70eed3-5db5-4c87-b119-d6cc294ea258', '9ee16c5e-adb4-40ff-8bed-3b002229fa14', 'Function', FALSE, 3),
    ('9b28466a-ce4a-4da7-b27e-997759f4b7df', '9ee16c5e-adb4-40ff-8bed-3b002229fa14', 'Serverless', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('eb6a65a6-ee4c-4f92-8aa4-b8e384c9ff75', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is a fault domain?',
        'A fault domain is a physical grouping of servers within an Azure data center. This grouping helps to ensure that if a hardware failure or maintenance event occurs, it only impacts a subset of the servers, minimizing the impact on the overall service availability.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('57e7d4c9-78f5-42cc-a995-71b8a85f8d24', 'eb6a65a6-ee4c-4f92-8aa4-b8e384c9ff75', 'A physical grouping of servers within an Azure data center.', TRUE, 1),
    ('8bc90793-9275-4f59-aa70-5a49cde5fef7', 'eb6a65a6-ee4c-4f92-8aa4-b8e384c9ff75', 'A report available through Azure Service Health', FALSE, 2),
    ('90bd7438-2114-41b2-90ac-10d3ec1acd09', 'eb6a65a6-ee4c-4f92-8aa4-b8e384c9ff75', 'A method to resolve human-readable names into IP addresses', FALSE, 3),
    ('f80ecbdc-2e6e-46a8-a25f-dd12af81f1f5', 'eb6a65a6-ee4c-4f92-8aa4-b8e384c9ff75', 'The place where tectonic plates meet far below the surface of the Earth', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e5bd48ba-1394-48b8-8235-4bb3dd98172a', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which of the following is a key feature of Azure Virtual Machine Scale Sets?',
        'The key feature of Azure Virtual Machine Scale Sets is their ability to automatically scale the number of VM instances based on demand or a predefined schedule. This dynamic scaling capability allows organizations to efficiently manage workloads, improve performance, and reduce costs by only provisioning resources when needed.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('edd90f6c-1b53-43d1-8c63-7877c903061b', 'e5bd48ba-1394-48b8-8235-4bb3dd98172a', 'They allow you to manually create and manage individual virtual machines.', FALSE, 1),
    ('6d3bdd89-4db2-425f-84fe-b9fb460493ac', 'e5bd48ba-1394-48b8-8235-4bb3dd98172a', 'They automatically scale the number of VM instances based on demand or a schedule.', TRUE, 2),
    ('f26f1161-542f-49ed-8565-35f77f1e7baf', 'e5bd48ba-1394-48b8-8235-4bb3dd98172a', 'They provide a graphical user interface (GUI) for managing virtual machines.', FALSE, 3),
    ('32781c8a-8dca-47f1-b2c9-b74b55e666cf', 'e5bd48ba-1394-48b8-8235-4bb3dd98172a', 'They are limited to a maximum of 10 virtual machines per scale set.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5c28586d-2d84-4f66-b4aa-e2c53818a841', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is the primary benefit of using containers for deploying applications to Azure?',
        'Improved portability and consistency is the primary benefit of using containers for deploying applications to Azure. Containers encapsulate an application and its dependencies, making it easy to deploy the same application across different environments with consistent behavior. This portability and consistency help in streamlining the deployment process and ensuring that applications run reliably across various platforms.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e52ee89b-9625-40c4-a8eb-77b5a1d3fb4d', '5c28586d-2d84-4f66-b4aa-e2c53818a841', 'Increased storage capacity', FALSE, 1),
    ('45b200d1-2383-4950-bd01-3dc601ca13bd', '5c28586d-2d84-4f66-b4aa-e2c53818a841', 'Improved network performance', FALSE, 2),
    ('54167249-76d7-40df-9314-e2391d6f2328', '5c28586d-2d84-4f66-b4aa-e2c53818a841', 'Enhanced security', FALSE, 3),
    ('6212f419-4feb-4807-8d6b-4992691c4e52', '5c28586d-2d84-4f66-b4aa-e2c53818a841', 'Improved portability and consistency', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e6de42e4-4e0a-4943-9277-a770757156e7', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'MULTIPLE_CHOICE', 'Which of the following are required in order to create an Azure Virtual Machine',
        'A subscription to Azure is required to create and manage resources, including virtual machines, in the Azure cloud. Without a subscription, you cannot access or utilize Azure services.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6c809b4c-d5f9-44be-921a-fdced11c60e2', 'e6de42e4-4e0a-4943-9277-a770757156e7', 'A subscription to Azure', TRUE, 1),
    ('44881265-4ffc-4f8d-a829-48549785dbd0', 'e6de42e4-4e0a-4943-9277-a770757156e7', 'A resource group', TRUE, 2),
    ('77476996-bf12-404d-9ec1-7e127e02026e', 'e6de42e4-4e0a-4943-9277-a770757156e7', 'A virtual network', TRUE, 3),
    ('a4ad1ed4-2608-4216-830e-03b7b00d943a', 'e6de42e4-4e0a-4943-9277-a770757156e7', 'A name for the VM', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('216e3290-0433-4c7f-9902-eae2bbd031fa', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is the maximum number of web apps a single App Service Plan (Premium v3) can support?',
        'This choice is correct because an App Service Plan (Premium v3) can support an unlimited number of web apps. This means that there is no specific limit to the number of web apps that can be hosted on a single App Service Plan (Premium v3).', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('17fa32ee-6a2a-473b-97cb-f4be39ebd147', '216e3290-0433-4c7f-9902-eae2bbd031fa', '1', FALSE, 1),
    ('7ccb41a6-f327-4e1f-96f9-a5c4d1c6d085', '216e3290-0433-4c7f-9902-eae2bbd031fa', '10', FALSE, 2),
    ('8796f901-3ad2-4b44-9f64-228002921c08', '216e3290-0433-4c7f-9902-eae2bbd031fa', '100', FALSE, 3),
    ('4c888061-5b9e-49c1-9e0f-fbcdab12bdd4', '216e3290-0433-4c7f-9902-eae2bbd031fa', 'Unlimited', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c217ff94-207c-448a-a39b-8fc4eac9e79a', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'True or false: Azure peering can connect two networks even though they belong to different subscriptions or customer accounts.',
        'TRUE. Azure peering allows two networks to connect even if they belong to different subscriptions or customer accounts. This feature enables seamless communication between resources in different Azure subscriptions or even across different Azure Active Directory (AAD) tenants.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fc7600d6-e892-48d2-8c72-94ec3e10fbef', 'c217ff94-207c-448a-a39b-8fc4eac9e79a', 'TRUE', TRUE, 1),
    ('c96c2c3a-88fe-491a-8f7a-ad4f254d3941', 'c217ff94-207c-448a-a39b-8fc4eac9e79a', 'FALSE', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f5b62ef8-b2d3-4b9f-a763-f6dec5db53de', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which connectivity option of Azure can provide connectivity from your on-premises corporate network into Azure over a private line, not travelling over the public Internet?',
        'Azure ExpressRoute provides a private, dedicated connection between your on-premises network and Azure data centers. This connection does not travel over the public Internet, ensuring a more secure and reliable connection for transferring data and accessing Azure resources. Therefore, Azure ExpressRoute is the correct option for establishing connectivity from your on-premises corporate network into Azure over a private line.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b1556217-8fbd-4a12-9e7b-8ad0d27334e7', 'f5b62ef8-b2d3-4b9f-a763-f6dec5db53de', 'Point-to-site VPN', FALSE, 1),
    ('8bd46f39-2e7c-41c5-b1ea-20756f6c21fb', 'f5b62ef8-b2d3-4b9f-a763-f6dec5db53de', 'Site-to-site VPN', FALSE, 2),
    ('18787d92-0fad-4f44-9dd1-39a6dc82c862', 'f5b62ef8-b2d3-4b9f-a763-f6dec5db53de', 'Azure Global Peering', FALSE, 3),
    ('7c0b2eda-a3e5-4141-a891-4743475637c6', 'f5b62ef8-b2d3-4b9f-a763-f6dec5db53de', 'Azure ExpressRoute', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d1e691cd-3b54-4154-b0cd-d1868b12a97d', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Fill in the blank: _________ is a cloud-based file sharing service that allows you to access your files from anywhere using standard SMB or NFS protocols.',
        'Azure File Storage is a cloud-based file sharing service in Microsoft Azure that allows users to access their files from anywhere using standard SMB (Server Message Block) or NFS (Network File System) protocols. It provides a fully managed file share in the cloud that can be accessed by multiple virtual machines or services simultaneously.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('33034efc-f00d-4d95-87f0-6fa0f5160a98', 'd1e691cd-3b54-4154-b0cd-d1868b12a97d', 'Azure File Storage', TRUE, 1),
    ('e23c3710-6600-4e2b-9b6c-6b25fe3e5a07', 'd1e691cd-3b54-4154-b0cd-d1868b12a97d', 'Azure Table Storage', FALSE, 2),
    ('bea79f8c-e074-4fc1-a0e8-787297d190d0', 'd1e691cd-3b54-4154-b0cd-d1868b12a97d', 'General Purpose V2', FALSE, 3),
    ('2c218af8-f7ec-4f8a-97c0-323a57894a4f', 'd1e691cd-3b54-4154-b0cd-d1868b12a97d', 'Azure Blob Storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d910525f-9959-4722-a7d0-02dd4b563d4c', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'In which storage redundancy option does Azure keep six copies of your files across two regions?',
        'GRS (Geo-Redundant Storage) is the correct choice because it replicates your data to a secondary region, ensuring that there are six copies of your files across two regions. This redundancy option provides a high level of durability and availability for your data in case of a regional outage.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8febf9eb-3d78-4537-b099-af286fdb92ce', 'd910525f-9959-4722-a7d0-02dd4b563d4c', 'GRS', TRUE, 1),
    ('5e724b13-2d20-4ac4-92fc-a49379904d7a', 'd910525f-9959-4722-a7d0-02dd4b563d4c', 'ZRS', FALSE, 2),
    ('6b86f775-156e-413d-bd85-d0b50ab6a738', 'd910525f-9959-4722-a7d0-02dd4b563d4c', 'LRS', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8b0516ad-acf3-4a16-8279-2a50d326859b', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which is the lowest-cost storage redundancy option?',
        'LRS (Locally Redundant Storage) is the lowest-cost storage redundancy option in Azure. It replicates your data three times within a storage scale unit in a datacenter. It provides a cost-effective way to ensure data resilience and availability.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4646d006-5e32-4940-9fbe-0213c3f63388', '8b0516ad-acf3-4a16-8279-2a50d326859b', 'LRS', TRUE, 1),
    ('37eb6b25-ec0a-4328-a573-83fe895c5a0c', '8b0516ad-acf3-4a16-8279-2a50d326859b', 'ZRS', FALSE, 2),
    ('5c4d9cd7-7688-49f9-a01d-8d2b7b173ee6', '8b0516ad-acf3-4a16-8279-2a50d326859b', 'GRS', FALSE, 3),
    ('f5f28b37-6157-4854-b87a-132b9845f395', '8b0516ad-acf3-4a16-8279-2a50d326859b', 'GZRS', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3ad759d4-09eb-43c3-8bde-fd1d4d2e5201', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is the maximum amount of data that can be stored in a single Azure Storage account?',
        'Azure Storage accounts have a maximum capacity of 5 Petabytes, making this choice correct. This limit ensures that a significant amount of data can be stored in a single Azure Storage account, allowing for scalability and flexibility in data storage needs.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c548a9e3-1ca3-4f18-b1df-5090cf005b4a', '3ad759d4-09eb-43c3-8bde-fd1d4d2e5201', '5 Petabytes', TRUE, 1),
    ('4c588076-1661-43af-89c5-9072078f463b', '3ad759d4-09eb-43c3-8bde-fd1d4d2e5201', '5 Terabytes', FALSE, 2),
    ('e96a1e2c-ce65-40ed-b535-30318c3b4fbb', '3ad759d4-09eb-43c3-8bde-fd1d4d2e5201', '5 Gigabytes', FALSE, 3),
    ('e5a1ae75-57cc-45d0-bcb7-aa9a12ee6f32', '3ad759d4-09eb-43c3-8bde-fd1d4d2e5201', 'There is no limit', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cc9de06b-12c3-4823-bcb8-a2d23697f49b', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which Azure Storage access tier is optimized (including for cost) for data rarely accessed and must be stored for at least 180 days, with flexible latency requirements?',
        'Archive access tier is optimized for data that is rarely accessed and must be stored for a minimum of 180 days. It offers the lowest storage costs but with longer access times, making it the most suitable option for data with flexible latency requirements that is not frequently accessed.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('79ed8b4f-e3ed-43af-aa54-f4b9fcb04d04', 'cc9de06b-12c3-4823-bcb8-a2d23697f49b', 'Hot access', FALSE, 1),
    ('482bb906-e0ed-4ebd-934d-e2fb5432dc7b', 'cc9de06b-12c3-4823-bcb8-a2d23697f49b', 'Premium storage', FALSE, 2),
    ('af2db365-0d29-44da-a65c-5dc3e90c071b', 'cc9de06b-12c3-4823-bcb8-a2d23697f49b', 'Cool access', FALSE, 3),
    ('e4fce36a-d985-41ca-a2ff-db83b0880081', 'cc9de06b-12c3-4823-bcb8-a2d23697f49b', 'Archive access', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ed40818c-f0f2-4ce6-887b-e5db8376427d', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Queue storage can be used when two programs need to communicate. Which type of communication is this best suited for?',
        'Queue storage is best suited for asynchronous communication, where the sender and receiver do not need to interact in real-time. It allows for decoupling of the sender and receiver, enabling them to operate independently and process messages at their own pace.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('60b3acd1-f0b0-442e-b612-86bb36858fe3', 'ed40818c-f0f2-4ce6-887b-e5db8376427d', 'Asynchronous communication', TRUE, 1),
    ('ec3853a8-0d1d-49d9-8d3a-5e7da3cd6efd', 'ed40818c-f0f2-4ce6-887b-e5db8376427d', 'Synchronous communication', FALSE, 2),
    ('8af37287-c614-422a-81c2-5e85eb402440', 'ed40818c-f0f2-4ce6-887b-e5db8376427d', 'Real-time communication', FALSE, 3),
    ('23fe3ad9-eae4-4ee5-8a13-d567c5862caf', 'ed40818c-f0f2-4ce6-887b-e5db8376427d', 'Broadcast communication (one-to-many)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b8e4e13e-97c1-4793-a485-3f24f3475d25', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is the primary purpose of Azure Data Box?',
        'Azure Data Box is specifically designed for transferring large amounts of data to and from Azure. It provides a secure and efficient way to move data between on-premises environments and Azure cloud storage.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('38fcc85d-560b-4fc1-a85d-7375e04ab463', 'b8e4e13e-97c1-4793-a485-3f24f3475d25', 'To create and manage Azure virtual machines', FALSE, 1),
    ('a7683869-ece9-4772-af21-f75950f8f44f', 'b8e4e13e-97c1-4793-a485-3f24f3475d25', 'To transfer large amounts of data to and from Azure', TRUE, 2),
    ('8c67d442-7773-4801-91a4-5d2ba5c9c31a', 'b8e4e13e-97c1-4793-a485-3f24f3475d25', 'To monitor Azure resource usage', FALSE, 3),
    ('c1ea7083-938f-4a0d-82a1-806d26b826fd', 'b8e4e13e-97c1-4793-a485-3f24f3475d25', 'To build and deploy web applications in Azure', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('35bb980f-0744-4aa8-a354-940c1412107c', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'Which of the following is a key benefit of using Microsoft Entra Domain Services?',
        'This choice is correct because Microsoft Entra Domain Services provides a managed domain service in the cloud without the need to manage on-premises domain controllers. It allows organizations to leverage the benefits of a domain service without the overhead of maintaining physical infrastructure.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('68939cd6-1181-4212-817d-8a22e6214edc', '35bb980f-0744-4aa8-a354-940c1412107c', 'It simplifies the management of on-premises Active Directory', FALSE, 1),
    ('d11dacf2-b2c8-4182-9e0d-ff7f7912d5d7', '35bb980f-0744-4aa8-a354-940c1412107c', 'It provides a managed domain service in the cloud without the need to manage on-premises domain controllers', TRUE, 2),
    ('afc18aeb-1eef-4481-8fc1-35a8e3640c3c', '35bb980f-0744-4aa8-a354-940c1412107c', 'It is a replacement for Azure Active Directory', FALSE, 3),
    ('ceeda78b-335c-4505-ac21-597288f7fdc8', '35bb980f-0744-4aa8-a354-940c1412107c', 'It is only suitable for small-scale deployments', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3c15bd48-8912-4fbf-8e28-79c1f59622ff', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is the primary purpose of single sign-on (SSO)?',
        'The primary purpose of single sign-on (SSO) is to allow users to log in to multiple applications with a single set of credentials. This simplifies the user experience, improves productivity, and reduces the risk of password fatigue or security vulnerabilities associated with using multiple passwords.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f5ccb26a-1906-494f-9860-9734edb84a49', '3c15bd48-8912-4fbf-8e28-79c1f59622ff', 'To add an extra layer of security to user accounts.', FALSE, 1),
    ('476ebeb1-1835-41a5-b6ed-92a48d1cc078', '3c15bd48-8912-4fbf-8e28-79c1f59622ff', 'To allow users to log in to multiple applications with a single set of credentials.', TRUE, 2),
    ('65072100-1e4c-45fa-b349-b49e48e9da9e', '3c15bd48-8912-4fbf-8e28-79c1f59622ff', 'To enforce strong password policies.', FALSE, 3),
    ('517a9dd9-c5cb-435e-bf54-f0dd6434da60', '3c15bd48-8912-4fbf-8e28-79c1f59622ff', 'To prevent unauthorized access to cloud resources.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6ddb3e4a-6f6c-4c3b-ac1d-74df469694ae', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is the primary purpose of Azure B2B collaboration?',
        'This choice is correct because the primary purpose of Azure B2B collaboration is to enable guest users from external organizations to access your organization''s resources. It facilitates collaboration and sharing of resources with partners, vendors, or clients outside of your organization.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4aee2795-d414-405c-908e-b3e6b5cffdd3', '6ddb3e4a-6f6c-4c3b-ac1d-74df469694ae', 'To provide identity and access management for internal users.', FALSE, 1),
    ('9fde4261-9507-4ebd-a836-c96090a63df1', '6ddb3e4a-6f6c-4c3b-ac1d-74df469694ae', 'To allow guest users from external organizations to access your organization''s resources.', TRUE, 2),
    ('f4423090-68f8-4cb4-b21b-2e8ac69f1e8e', '6ddb3e4a-6f6c-4c3b-ac1d-74df469694ae', 'To enable customers to purchase products and services directly from your organization''s website.', FALSE, 3),
    ('47d6602e-0164-4549-9b64-2ef8231a0d08', '6ddb3e4a-6f6c-4c3b-ac1d-74df469694ae', 'To provide identity and access management for cloud-based applications.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('05d57338-f22e-4fd5-bda3-c90a8ff7741c', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is the primary purpose of Microsoft Entra Conditional Access?',
        'The primary purpose of Microsoft Entra Conditional Access is to implement granular access controls based on specific conditions. This allows organizations to define and enforce access policies based on various factors such as user location, device compliance, and application sensitivity.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2bd56caf-f4b8-435a-9fb7-483ef8a629d7', '05d57338-f22e-4fd5-bda3-c90a8ff7741c', 'To enforce strong password policies.', FALSE, 1),
    ('14795731-e767-477f-bfad-febf09d29eb2', '05d57338-f22e-4fd5-bda3-c90a8ff7741c', 'To protect against phishing attacks.', FALSE, 2),
    ('0d97a8e6-dec3-4a93-a974-b0f9d499e528', '05d57338-f22e-4fd5-bda3-c90a8ff7741c', 'To implement granular access controls based on specific conditions.', TRUE, 3),
    ('2b736ea3-0416-4ed5-ae62-4fd62287dc45', '05d57338-f22e-4fd5-bda3-c90a8ff7741c', 'To provide multi-factor authentication for all users.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('1d6a1a3b-32d9-402e-bc39-fb66081a6d8a', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'MULTIPLE_CHOICE', 'Which of the following is a built-in role in Azure RBAC?',
        'The Owner role in Azure RBAC has full access to all resources, including the ability to manage access to resources. This role is typically assigned to administrators who need unrestricted access to all resources within a subscription.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fbe81c9f-93c0-40be-b725-ac0fc0d43fbe', '1d6a1a3b-32d9-402e-bc39-fb66081a6d8a', 'Owner', TRUE, 1),
    ('0ff55eb2-3121-4621-9937-069443904a54', '1d6a1a3b-32d9-402e-bc39-fb66081a6d8a', 'Reader', TRUE, 2),
    ('dd1aa7cb-930b-4c37-b037-13859d35a7f4', '1d6a1a3b-32d9-402e-bc39-fb66081a6d8a', 'Contributor', TRUE, 3),
    ('1f3791dd-ab80-4319-a5b1-949815b62ff7', '1d6a1a3b-32d9-402e-bc39-fb66081a6d8a', 'User', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b0da1d4c-fab6-4462-b4e9-8bce7f23c1cd', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is the principle of least privilege in the context of Azure RBAC?',
        'Granting users the minimum amount of access necessary to perform their job duties aligns with the principle of least privilege. This approach ensures that users only have access to the resources and actions required for their specific tasks, reducing the risk of unauthorized access and potential security vulnerabilities.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('be51f50c-6cf7-4720-b801-9d34955856a0', 'b0da1d4c-fab6-4462-b4e9-8bce7f23c1cd', 'Granting users the maximum amount of access necessary to perform their job duties.', FALSE, 1),
    ('f2f8b0bc-91eb-4999-854f-704ce2613e92', 'b0da1d4c-fab6-4462-b4e9-8bce7f23c1cd', 'Assigning the "Owner" role to all users.', FALSE, 2),
    ('d886c1e5-dd7f-46f2-b3cf-f1a02d4e2b64', 'b0da1d4c-fab6-4462-b4e9-8bce7f23c1cd', 'Granting users the minimum amount of access necessary to perform their job duties.', TRUE, 3),
    ('7277b41d-98ca-45e7-a4e7-c816f7e41472', 'b0da1d4c-fab6-4462-b4e9-8bce7f23c1cd', 'Disabling user accounts when they are not in use.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('41293659-0603-44ce-8496-270ef6b15ed8', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'How does a defense-in-depth model improve overall security?',
        'A defense-in-depth model improves overall security by making it more difficult for attackers to breach multiple layers of security. By implementing various security measures at different levels, even if one layer is compromised, other layers can still provide protection.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fa45f4a9-b915-4986-88f4-f40ca8e43260', '41293659-0603-44ce-8496-270ef6b15ed8', 'By simplifying the security infrastructure.', FALSE, 1),
    ('49beab76-ca4f-4e59-b545-906e0b6d1c3d', '41293659-0603-44ce-8496-270ef6b15ed8', 'By reducing the need for security updates.', FALSE, 2),
    ('d4f7a46d-bb95-4523-9aac-6c7476a15b45', '41293659-0603-44ce-8496-270ef6b15ed8', 'By making it more difficult for attackers to breach multiple layers of security.', TRUE, 3),
    ('f625e9f3-1a1a-443e-b96b-22a2975857d8', '41293659-0603-44ce-8496-270ef6b15ed8', 'By eliminating the need for user training.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8e340280-414a-4cf4-94e5-cbea64fed2ec', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'What is a key benefit of using Azure Budgets?',
        'Setting spending limits and alerts is a key benefit of using Azure Budgets. By setting budgets, organizations can monitor and control their Azure spending, helping to prevent unexpected costs and stay within budget constraints.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c889a5bb-215d-4fa2-9d81-b8fc067f8530', '8e340280-414a-4cf4-94e5-cbea64fed2ec', 'Automating resource provisioning', FALSE, 1),
    ('74feb62b-9483-4c33-a14d-9f1af72872ab', '8e340280-414a-4cf4-94e5-cbea64fed2ec', 'Enforcing security policies', FALSE, 2),
    ('b100bb6a-7d48-4c17-9302-8bdf00899c06', '8e340280-414a-4cf4-94e5-cbea64fed2ec', 'Setting spending limits and alerts', TRUE, 3),
    ('7d38a020-a27c-4268-b346-a3091180fc7e', '8e340280-414a-4cf4-94e5-cbea64fed2ec', 'Optimizing virtual machine performance', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7d6e142e-90a5-443d-a4ba-cf892a2f7238', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'How can tags be used to optimize costs in Azure?',
        'Tags in Azure can be used to categorize resources based on their cost and usage, allowing organizations to track and allocate costs more effectively. By assigning tags to resources and then analyzing cost data based on these tags, organizations can identify areas where cost optimization measures can be implemented.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1d3614e7-8c1a-4000-8429-a59e1765775d', '7d6e142e-90a5-443d-a4ba-cf892a2f7238', 'By automatically shutting down underutilized resources', FALSE, 1),
    ('2cba6915-ea72-47be-a9d3-5281eef264fa', '7d6e142e-90a5-443d-a4ba-cf892a2f7238', 'By identifying resources that can be migrated to a lower-cost tier', FALSE, 2),
    ('77cbe7e6-00d5-4784-8197-56f33e9a7903', '7d6e142e-90a5-443d-a4ba-cf892a2f7238', 'By categorizing resources based on their cost and usage', TRUE, 3),
    ('996a191b-5019-4d1e-8c61-cac59d2ca7c9', '7d6e142e-90a5-443d-a4ba-cf892a2f7238', 'By automatically applying discounts to tagged resources', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('722834e3-1972-4d19-8d3e-7dce0fcc8fc2', 'ba61cc3a-4cdf-4c3b-b240-af0f5659f54b', 'SINGLE_CHOICE', 'How does Azure Policy help manage Azure resources? ✅',
        'Azure Policy helps manage Azure resources by defining rules that govern resource configuration and usage. These rules can enforce compliance with organizational standards, regulatory requirements, or best practices.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f39be33f-9338-4868-b481-854023a172f3', '722834e3-1972-4d19-8d3e-7dce0fcc8fc2', 'By automatically scaling resources based on demand', FALSE, 1),
    ('d963d80d-870f-4ceb-acff-815e812f6858', '722834e3-1972-4d19-8d3e-7dce0fcc8fc2', 'By providing real-time alerts for security threats', FALSE, 2),
    ('c62b342c-1458-4bd7-86b3-930e997c03f4', '722834e3-1972-4d19-8d3e-7dce0fcc8fc2', 'By defining rules that govern resource configuration and usage', TRUE, 3),
    ('e5c8a4d1-c428-49ce-8d9d-7a755d1e8149', '722834e3-1972-4d19-8d3e-7dce0fcc8fc2', 'By optimizing resource utilization and cost', FALSE, 4);
