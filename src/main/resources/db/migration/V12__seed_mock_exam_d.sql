-- Examen blanc officiel D (AZ900_Test_D.docx) - real AZ-900 mock exam content
-- 50 questions with answers/explanations from the same document (self-contained practice test).
-- This is an official, complete mock exam: it must stay independent from other mock exams and
-- from course modules - it is excluded from the random cross-module exam draw (module type
-- MOCK_EXAM, see QuestionRepository.findRandomActiveByCertification).

INSERT INTO module (id, certification_id, code, title, description, position, type)
VALUES ('9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', '00000000-0000-0000-0000-000000000001', 'mock-exam-d', 'Examen blanc officiel D',
        'Examen blanc officiel AZ-900 complet, 50 questions - a realiser en une seule fois.', 10, 'MOCK_EXAM');

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ae1730e5-9baf-4cea-9b57-ae6a44c72682', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Fill in the blank: Cloud computing is a model of delivering IT services such as computing, networking and storage over the Internet on a _____________ basis.',
        'Pay-as-you-go is the correct model for cloud computing. It allows users to pay for the resources they consume on a flexible, as-needed basis, without any long-term commitments or upfront expenses.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e0ad9e53-7e05-4308-93d8-13e3d5765510', 'ae1730e5-9baf-4cea-9b57-ae6a44c72682', 'pay up-front as a capital expense', FALSE, 1),
    ('70e2598f-3790-42cf-a396-32632e1cb99c', 'ae1730e5-9baf-4cea-9b57-ae6a44c72682', 'pay-as-you-go', TRUE, 2),
    ('0f730b60-e02a-4b42-9dbd-56558054df54', 'ae1730e5-9baf-4cea-9b57-ae6a44c72682', 'case-by-case', FALSE, 3),
    ('303a2160-fccb-48cf-ab70-ec2f43c601dd', 'ae1730e5-9baf-4cea-9b57-ae6a44c72682', 'long-term contract', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('973f52e8-13e4-4987-aee4-b5044a29dcca', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'According to the shared responsibility model, who is responsible for keeping the guest operating system (Windows or Linux) updated on an Azure Virtual Machine?',
        'The customer, such as you, is responsible for keeping the guest operating system (Windows or Linux) updated on an Azure Virtual Machine. This includes installing updates, patches, and security fixes to ensure the operating system is secure and running efficiently. Failure to do so can leave the virtual machine vulnerable to security threats and performance issues.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6d01f7ec-2792-4c81-8589-4d81bffeda3b', '973f52e8-13e4-4987-aee4-b5044a29dcca', 'The cloud provider, in this case Microsoft Azure', FALSE, 1),
    ('52044d18-da22-410a-b3d8-be1f7d81a92b', '973f52e8-13e4-4987-aee4-b5044a29dcca', 'The customer, such as you', TRUE, 2),
    ('2e3ba5fb-5ae9-4730-a612-b8975c642caa', '973f52e8-13e4-4987-aee4-b5044a29dcca', 'It''s actually automatically taken care of, and no one needs to do anything', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a468f37b-7583-44aa-8cd2-dc87e9bea61d', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following qualities is unique to Private Cloud?',
        'This choice is correct because a Private Cloud is a cloud infrastructure dedicated to a single organization, managed either by the organization itself or by a third-party provider. This exclusivity distinguishes Private Cloud from Public or Hybrid Cloud deployments.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c69d439b-ae35-4582-bec5-e2605811446a', 'a468f37b-7583-44aa-8cd2-dc87e9bea61d', 'Anyone can sign up using a credit card', FALSE, 1),
    ('480c9fbb-c543-4d27-b13f-039f84726b50', 'a468f37b-7583-44aa-8cd2-dc87e9bea61d', 'The virtual network is not accessible from the public Internet', FALSE, 2),
    ('5aa2ee83-cf9e-4ceb-921b-82bbff389752', 'a468f37b-7583-44aa-8cd2-dc87e9bea61d', 'A cloud infrastructure dedicated to a single organization, managed either by the organization itself or by a third-party provider', TRUE, 3),
    ('d5de6856-278a-423d-b8a7-2a653852505a', 'a468f37b-7583-44aa-8cd2-dc87e9bea61d', 'An application that uses a network security group, firewall, distributed denial of service protection, and other network security methods', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8ba5d4b2-0636-427f-8074-d4e323a1d616', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'A small startup with limited IT resources and a need for flexible scalability would be best suited for which cloud model?',
        'Public Cloud is the best option for a small startup with limited IT resources and a need for flexible scalability. It offers cost-effective solutions, on-demand resources, and scalability without the need for upfront investments in infrastructure. Public Cloud services are managed by third-party providers, allowing startups to focus on their core business activities.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cc80dd2e-2d3b-447c-bbf1-2f717bd5448d', '8ba5d4b2-0636-427f-8074-d4e323a1d616', 'Public Cloud', TRUE, 1),
    ('7a3270db-bb0b-4299-a520-94238a182693', '8ba5d4b2-0636-427f-8074-d4e323a1d616', 'Hybrid Cloud', FALSE, 2),
    ('63149618-3749-405e-a721-09e44265e2a7', '8ba5d4b2-0636-427f-8074-d4e323a1d616', 'Private Cloud', FALSE, 3),
    ('28e86ff2-3e96-4af6-bbc9-cf903008ee01', '8ba5d4b2-0636-427f-8074-d4e323a1d616', 'Community Cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0ea3cac1-2669-4ab4-9486-13ff585e5512', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is a key benefit of the consumption-based model in cloud computing?',
        'Pay-as-you-go pricing is a key benefit of the consumption-based model in cloud computing. Users are charged based on their actual resource consumption, providing flexibility and cost-effectiveness.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('88b0a2c0-0a88-449a-bb33-c77e8484dba7', '0ea3cac1-2669-4ab4-9486-13ff585e5512', 'Fixed monthly costs', FALSE, 1),
    ('f971ff85-78bd-4ee2-8b10-ec1722f69a0e', '0ea3cac1-2669-4ab4-9486-13ff585e5512', 'Pay-as-you-go pricing', TRUE, 2),
    ('66e546a9-5eff-4179-9201-128e10fd1b3f', '0ea3cac1-2669-4ab4-9486-13ff585e5512', 'Upfront hardware purchases', FALSE, 3),
    ('d847884a-fbb1-4a63-9e3d-955ce9bf4fa4', '0ea3cac1-2669-4ab4-9486-13ff585e5512', 'Long-term contracts', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c339f53a-d560-462a-aea2-b14506518a8b', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary difference between pay-as-you-go and reserved instance pricing models in the cloud?',
        'Reserved instances provide users with the option to commit to a specific amount of resources for a long period, typically one to three years, in exchange for a discounted rate. Pay-as-you-go, on the other hand, charges users based on the actual usage of resources without any long-term commitment.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('275ee7db-c80c-40d5-bfa5-4b0902888428', 'c339f53a-d560-462a-aea2-b14506518a8b', 'Pay-as-you-go requires upfront payment, while reserved instances are billed hourly.', FALSE, 1),
    ('d7771006-461a-4878-9fda-260c429f71e1', 'c339f53a-d560-462a-aea2-b14506518a8b', 'Reserved instances offer discounted rates for long-term commitments, while pay-as-you-go is billed based on usage.', TRUE, 2),
    ('7ead0d9f-6e6d-4e8a-8cc8-ef9f3a47d7ec', 'c339f53a-d560-462a-aea2-b14506518a8b', 'Pay-as-you-go is only available for public cloud models, while reserved instances are for private cloud models.', FALSE, 3),
    ('8815f22f-7536-4f53-94f4-dfc14552cc97', 'c339f53a-d560-462a-aea2-b14506518a8b', 'Reserved instances offer higher performance than pay-as-you-go instances.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8f2a1e7e-ce5a-47ff-9927-6c297c3d2b85', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the key characteristic of serverless computing that distinguishes it from traditional infrastructure?',
        'Serverless computing automatically scales resources up or down based on the demand, allowing users to pay only for the resources they use. This dynamic scaling feature distinguishes serverless computing from traditional infrastructure where manual intervention is required for scaling.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d1a227fa-f31f-4f9b-bdfb-01ec6155e4fb', '8f2a1e7e-ce5a-47ff-9927-6c297c3d2b85', 'Automatic scaling based on demand', TRUE, 1),
    ('f0608145-a0e2-44e6-8521-a0ee06dbb2ed', '8f2a1e7e-ce5a-47ff-9927-6c297c3d2b85', 'Requires manual server management', FALSE, 2),
    ('190be548-a70a-4c23-a94d-7250344e002b', '8f2a1e7e-ce5a-47ff-9927-6c297c3d2b85', 'Fixed pricing structure', FALSE, 3),
    ('397708c1-eb0f-4ceb-8964-8dab00a193f1', '8f2a1e7e-ce5a-47ff-9927-6c297c3d2b85', 'Limited scalability options', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('235d08fc-91b2-42e9-b67d-e80bbe440c4e', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary benefit of high availability in cloud computing?',
        'High availability in cloud computing minimizes downtime by ensuring that services are continuously accessible. This is achieved through redundant systems, failover mechanisms, and automatic recovery processes, ultimately providing a seamless experience for users without interruptions.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1821efb0-a562-4c4e-8900-07d8afae7979', '235d08fc-91b2-42e9-b67d-e80bbe440c4e', 'Minimizes downtime and ensures continuous service', TRUE, 1),
    ('ddc49cbf-7331-486f-aa32-d8bd876c3beb', '235d08fc-91b2-42e9-b67d-e80bbe440c4e', 'Increases cost', FALSE, 2),
    ('309833be-2a66-4772-86ee-96e47f81574c', '235d08fc-91b2-42e9-b67d-e80bbe440c4e', 'Requires manual intervention', FALSE, 3),
    ('b4704af1-8be7-448d-b235-016f82c34327', '235d08fc-91b2-42e9-b67d-e80bbe440c4e', 'Reduces scalability', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('fa3ec17c-780a-421f-859c-24577b89223a', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following best describes scalability in the cloud?',
        'Scalability in the cloud refers to the ability to increase or decrease resources based on demand. This allows organizations to efficiently manage their resources and handle varying workloads without overprovisioning or underprovisioning.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('df2116ec-2858-4183-bdcd-956a1f1b7828', 'fa3ec17c-780a-421f-859c-24577b89223a', 'The ability to run applications without an internet connection', FALSE, 1),
    ('200d0449-807d-49f9-83bf-35ad1fa7619a', 'fa3ec17c-780a-421f-859c-24577b89223a', 'The ability to increase or decrease resources based on demand', TRUE, 2),
    ('1a8053e6-5973-4e35-bbf5-0b24fc7c7332', 'fa3ec17c-780a-421f-859c-24577b89223a', 'The ability to reduce costs by limiting storage', FALSE, 3),
    ('f608d69a-c86b-43da-9def-98097e00b404', 'fa3ec17c-780a-421f-859c-24577b89223a', 'The ability to maintain security across regions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5196325d-a75b-4535-83e2-0ca3c5dd0608', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following is NOT a core component of Azure''s reliability strategy?',
        'Performance, while important for user experience, is not considered a core component of Azure''s reliability strategy. While performance optimizations can enhance user satisfaction, they do not directly contribute to the reliability of Azure services.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9e59cd5e-9b81-4156-ac7e-15decf0feed2', '5196325d-a75b-4535-83e2-0ca3c5dd0608', 'Redundancy', FALSE, 1),
    ('7f77d03a-b044-4049-9dd9-eb9239339f20', '5196325d-a75b-4535-83e2-0ca3c5dd0608', 'Availability', FALSE, 2),
    ('c1f69187-f703-4103-8ae8-60a6881f7ad1', '5196325d-a75b-4535-83e2-0ca3c5dd0608', 'Performance', TRUE, 3),
    ('8f658316-4cdf-44f7-b720-e9f9255f6a5d', '5196325d-a75b-4535-83e2-0ca3c5dd0608', 'Fault tolerance', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e2ba718f-e7e4-4e8d-9820-59d2b0d186d5', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following is NOT a key aspect of predictability in Azure?',
        'Fault tolerance is NOT a key aspect of predictability in Azure. While fault tolerance is important for ensuring system reliability and availability, it is more focused on handling failures and maintaining service continuity rather than predicting system behavior.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('09ae63cc-ee1b-4c2a-be19-907631c16032', 'e2ba718f-e7e4-4e8d-9820-59d2b0d186d5', 'Consistent performance', FALSE, 1),
    ('b518f079-a13e-4004-a687-9afa3446185c', 'e2ba718f-e7e4-4e8d-9820-59d2b0d186d5', 'Scalability', FALSE, 2),
    ('d97b4b69-deb4-4a1b-b958-aeddbce94ac9', 'e2ba718f-e7e4-4e8d-9820-59d2b0d186d5', 'Cost optimization', FALSE, 3),
    ('046b0645-a8d5-45d8-bb0e-a675099b3009', 'e2ba718f-e7e4-4e8d-9820-59d2b0d186d5', 'Fault tolerance', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a539f56a-60ed-4139-819d-ac35cf6e1f90', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary advantage of using Azure''s built-in security features compared to managing security on-premises?',
        'Reduced expertise required is a key advantage of using Azure''s built-in security features. Azure provides a range of pre-configured security tools and services that are designed to be easy to use, requiring less specialized knowledge and expertise compared to managing security on-premises.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('7c1be6be-cabb-4b42-9791-6654ec40d027', 'a539f56a-60ed-4139-819d-ac35cf6e1f90', 'Lower costs', FALSE, 1),
    ('d24fcbef-4715-4eed-bafa-727354c689e2', 'a539f56a-60ed-4139-819d-ac35cf6e1f90', 'Increased complexity', FALSE, 2),
    ('3a98b649-c737-49a8-a758-9b7e6b7b9dd1', 'a539f56a-60ed-4139-819d-ac35cf6e1f90', 'Reduced expertise required', TRUE, 3),
    ('3012f46e-2815-4514-9723-b51b91dfc536', 'a539f56a-60ed-4139-819d-ac35cf6e1f90', 'Decreased flexibility', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c3751bec-3953-4bac-9617-c35d2cab73fc', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Fill in the blank: __________ refers to the policies, processes, and controls that organizations implement to ensure that their cloud computing initiatives align with their overall business objectives and risk management strategies.',
        'Governance in cloud computing refers to the framework of policies, processes, and controls that organizations establish to ensure that their cloud initiatives are in line with their overall business objectives and risk management strategies. It involves decision-making, compliance, and oversight to manage and optimize cloud resources effectively.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4f289c2b-0c5c-4cc3-a7cb-e68970fa2471', 'c3751bec-3953-4bac-9617-c35d2cab73fc', 'Security', FALSE, 1),
    ('141696a5-7215-4873-8146-ff33bc2b75ff', 'c3751bec-3953-4bac-9617-c35d2cab73fc', 'Governance', TRUE, 2),
    ('24497147-bc30-41e0-a5f8-b1aa835a2440', 'c3751bec-3953-4bac-9617-c35d2cab73fc', 'Reliability', FALSE, 3),
    ('2a20c03c-646f-473b-8441-843ec4927a6b', 'c3751bec-3953-4bac-9617-c35d2cab73fc', 'Manageability', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('61ea73aa-c087-4189-927e-1955ecadb024', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following best describes the benefit of elasticity in cloud services like Microsoft Azure?',
        'Elasticity in cloud services like Microsoft Azure allows resources to automatically scale up or down based on demand. This means that organizations can easily adjust their resource allocation to match the current workload, ensuring optimal performance and cost-efficiency.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e0b2a78b-d016-49ca-9092-1c7e37c29565', '61ea73aa-c087-4189-927e-1955ecadb024', 'The ability to automatically scale resources up or down based on demand.', TRUE, 1),
    ('74685a05-4f40-49ce-ba4c-ee31a38492fc', '61ea73aa-c087-4189-927e-1955ecadb024', 'The guarantee of 100% uptime for all services.', FALSE, 2),
    ('c1af8299-2ce9-4830-a9f7-ef6d7b83e435', '61ea73aa-c087-4189-927e-1955ecadb024', 'The elimination of all operational costs for managing resources.', FALSE, 3),
    ('451a6ee2-2955-4e0e-a3d7-5a7aaf1e873e', '61ea73aa-c087-4189-927e-1955ecadb024', 'The requirement to pre-purchase resources for future use.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('02b25807-c9dc-48e4-b69d-21637faed3a2', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What type of scaling typically involves moving from a smaller machine to a larger (more powerful) machine?',
        'Vertical scaling, also known as scaling up, involves increasing the capacity of a single machine by adding more resources such as CPU, memory, or storage. Moving from a smaller machine to a larger, more powerful machine is a classic example of vertical scaling.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('988d8732-9d34-45d7-8798-acb21253f3c8', '02b25807-c9dc-48e4-b69d-21637faed3a2', 'Vertical scaling', TRUE, 1),
    ('8ecbb32d-bb5d-408d-98a5-0ca910554b04', '02b25807-c9dc-48e4-b69d-21637faed3a2', 'Horizontal scaling', FALSE, 2),
    ('105eda8a-f36f-46ef-bdf3-45958a4c94a6', '02b25807-c9dc-48e4-b69d-21637faed3a2', 'Scaling out', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6d67140f-62de-4d4f-8e7a-a0ab449122c6', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following is NOT a characteristic of Infrastructure as a Service (IaaS)?',
        'Managed operating system is NOT a characteristic of Infrastructure as a Service (IaaS). In IaaS, users are responsible for managing and maintaining the operating system, applications, and data on the virtual machines provided by the cloud service provider.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('aa029325-5b5c-4bbe-a895-45091ef8c040', '6d67140f-62de-4d4f-8e7a-a0ab449122c6', 'On-demand provisioning', FALSE, 1),
    ('5bccc089-3d36-4ed6-8aa3-8ff7fa9d6d34', '6d67140f-62de-4d4f-8e7a-a0ab449122c6', 'Managed operating system', TRUE, 2),
    ('47dff7db-8eda-4dcf-bd49-f2076a8222ec', '6d67140f-62de-4d4f-8e7a-a0ab449122c6', 'Pay-as-you-go pricing', FALSE, 3),
    ('86287ec6-ba7a-4476-842a-ab0b264d93e9', '6d67140f-62de-4d4f-8e7a-a0ab449122c6', 'Hardware virtualization', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bfdf052f-6cfe-40cd-9a58-fc83e0364d68', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary benefit of using PaaS compared to IaaS?',
        'The primary benefit of using PaaS compared to IaaS is the reduced development time. PaaS platforms provide pre-built services and tools that streamline the development process, allowing developers to focus on building and deploying applications quickly without the need to manage the underlying infrastructure.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('024b2d59-ac6e-4bd1-b7f6-2c204868f10e', 'bfdf052f-6cfe-40cd-9a58-fc83e0364d68', 'Increased control over the infrastructure', FALSE, 1),
    ('76225a70-4ab6-4792-86bf-61393aed205c', 'bfdf052f-6cfe-40cd-9a58-fc83e0364d68', 'Reduced development time', TRUE, 2),
    ('aced7030-0be4-45a7-8bdf-431f9c09bddd', 'bfdf052f-6cfe-40cd-9a58-fc83e0364d68', 'Lower costs', FALSE, 3),
    ('63b420c2-a2f6-48c1-b550-d92b103310a2', 'bfdf052f-6cfe-40cd-9a58-fc83e0364d68', 'Greater flexibility', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c3570e86-27e5-4368-883e-8fef79dcc4da', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following is the most likely scenario in which to choose Infrastructure as a Service (IaaS) options in cloud computing?',
        'Choosing Infrastructure as a Service (IaaS) options in cloud computing is most likely in a lift-and-shift migration scenario. This involves migrating existing on-premises applications and workloads to the cloud without significant changes. IaaS provides virtualized computing resources such as virtual machines, storage, and networking, making it suitable for replicating existing infrastructure in the cloud.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('435177e5-0774-4545-850a-4955b7d17d6c', 'c3570e86-27e5-4368-883e-8fef79dcc4da', 'Lift-and-shift migration', TRUE, 1),
    ('e06b7a56-22e8-4d72-ae4b-83308710664b', 'c3570e86-27e5-4368-883e-8fef79dcc4da', 'Brand new development', FALSE, 2),
    ('89d6741d-9252-4658-82f6-bcb060637902', 'c3570e86-27e5-4368-883e-8fef79dcc4da', 'Someone looking to reduce administrative overhead', FALSE, 3),
    ('8952fa96-d964-43fb-8c22-12479715fcc5', 'c3570e86-27e5-4368-883e-8fef79dcc4da', 'Someone looking to run an app for free in the cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('dc52a2cb-bff1-4ef9-a198-024898d4db7f', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Fill in the blank: A _________ is a geographical area on the planet that contains at least one, but potentially multiple datacenters that are nearby and networked together with a low-latency network.',
        'A region in Microsoft Azure is a geographical area on the planet that contains at least one, but potentially multiple datacenters that are nearby and networked together with a low-latency network. This allows users to deploy and run applications close to their customers for better performance and compliance.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('64202580-c99c-4d18-8430-6aab02d07aa7', 'dc52a2cb-bff1-4ef9-a198-024898d4db7f', 'region', TRUE, 1),
    ('bb16a11e-e6f3-41ae-a7f3-1166fc0029a6', 'dc52a2cb-bff1-4ef9-a198-024898d4db7f', 'availability zone', FALSE, 2),
    ('7e16a7e4-ad0b-41f4-8bd2-7a3c15ccde33', 'dc52a2cb-bff1-4ef9-a198-024898d4db7f', 'data center', FALSE, 3),
    ('219a9536-e8e6-4f1d-8bb9-8a724107b6fb', 'dc52a2cb-bff1-4ef9-a198-024898d4db7f', 'edge network', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7fb973ed-e7da-47b4-8e1d-845c05980e6a', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following is a benefit of using sovereign regions in Azure?',
        'One of the key benefits of using sovereign regions in Azure is the reduced compliance risks. Sovereign regions are designed to meet specific regulatory and compliance requirements of certain industries or regions, providing a higher level of data protection and compliance assurance.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('cd1da96a-2ccd-4414-8184-a6cedb3beec4', '7fb973ed-e7da-47b4-8e1d-845c05980e6a', 'Lower costs', FALSE, 1),
    ('9768c39f-cb7c-41f0-acad-92ad266e03a7', '7fb973ed-e7da-47b4-8e1d-845c05980e6a', 'Increased performance', FALSE, 2),
    ('37b2cbd3-9e8d-46b3-92ea-afce65480e3d', '7fb973ed-e7da-47b4-8e1d-845c05980e6a', 'Reduced compliance risks', TRUE, 3),
    ('814c6618-1901-4f32-8b31-b0c44988cd56', '7fb973ed-e7da-47b4-8e1d-845c05980e6a', 'Greater flexibility', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('de258b48-600c-4745-b5b1-461bf90be9dc', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the minimum number of Availability Zones required to create a highly available application in Azure?',
        'To create a highly available application in Azure, a minimum of two Availability Zones is required. By distributing resources across multiple zones, the application can withstand failures in one zone while still remaining operational in another, ensuring high availability.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3d5b035c-e732-4866-8875-0cef651192eb', 'de258b48-600c-4745-b5b1-461bf90be9dc', '1', FALSE, 1),
    ('b9d1db23-1bbe-48bc-8435-164a06264846', 'de258b48-600c-4745-b5b1-461bf90be9dc', '2', TRUE, 2),
    ('b8e6447f-1349-450f-86b9-4214c407d234', 'de258b48-600c-4745-b5b1-461bf90be9dc', '3', FALSE, 3),
    ('a9ac72f0-985a-478c-90c5-ef5abb1af7fc', 'de258b48-600c-4745-b5b1-461bf90be9dc', '4', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('12230cde-6fb2-43e6-b1ae-eceb1269c4af', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Why are Azure datacenters located in various regions around the world?',
        'All of the above answers are correct. Azure datacenters are located in various regions around the world to comply with local regulations, reduce latency for users, and ensure redundancy and high availability of services. Each of these factors plays a crucial role in the overall design and operation of Azure''s global infrastructure.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('e2c809ea-a005-4247-9a64-01543929499c', '12230cde-6fb2-43e6-b1ae-eceb1269c4af', 'To comply with local regulations.', FALSE, 1),
    ('c2be2eb7-5a5c-4494-9204-0e2b18c82789', '12230cde-6fb2-43e6-b1ae-eceb1269c4af', 'To reduce latency for users.', FALSE, 2),
    ('435a3f1f-0a33-4e62-a57e-c6ee56935591', '12230cde-6fb2-43e6-b1ae-eceb1269c4af', 'To ensure redundancy and high availability.', FALSE, 3),
    ('47f3d01a-891d-4c08-a234-f9e0d0f10df9', '12230cde-6fb2-43e6-b1ae-eceb1269c4af', 'All answers are correct.', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c704298e-ee35-4b49-90e3-42fc5173e6d8', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary purpose of an Azure resource group?',
        'The primary purpose of an Azure resource group is to group related Azure resources together for management and deployment. By organizing resources into resource groups, it becomes easier to manage, monitor, and control access to those resources as a single unit.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('51fd732b-f57f-4074-8a1d-9e74bafc08ab', 'c704298e-ee35-4b49-90e3-42fc5173e6d8', 'To provide a logical container for Azure subscriptions.', FALSE, 1),
    ('d0392ff9-b739-418d-8f11-51ead0f0f387', 'c704298e-ee35-4b49-90e3-42fc5173e6d8', 'To group related Azure resources together for management and deployment.', TRUE, 2),
    ('deca892c-5665-41e0-bd0e-87b47fa2c655', 'c704298e-ee35-4b49-90e3-42fc5173e6d8', 'To manage user accounts and access control.', FALSE, 3),
    ('4e007645-11c4-4938-9073-1ca5ac6330d1', 'c704298e-ee35-4b49-90e3-42fc5173e6d8', 'To act as a central hub or dashboard for all Azure services.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2900ccb7-aedd-4a48-9f2f-791390b950cb', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following statements about Azure resource groups is true?',
        'A resource group in Azure is a logical container that holds related resources for an Azure solution. It can contain resources from multiple Azure regions, allowing for centralized management of resources regardless of their geographic location.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5a59f708-7f16-41c9-8830-5399fb409d6a', '2900ccb7-aedd-4a48-9f2f-791390b950cb', 'A resource group can contain resources from multiple Azure regions.', TRUE, 1),
    ('2cafe2d6-2969-4397-94c1-8979bea178cf', '2900ccb7-aedd-4a48-9f2f-791390b950cb', 'A resource group can contain resources from multiple Azure subscription.', FALSE, 2),
    ('064b9bab-f8b8-44d0-adc7-5b189cc89466', '2900ccb7-aedd-4a48-9f2f-791390b950cb', 'Deleting a resource group will not delete the resources contained within it.', FALSE, 3),
    ('e106459b-54c5-46f7-b009-828f401eaca7', '2900ccb7-aedd-4a48-9f2f-791390b950cb', 'A resource group can only contain one type of resource, such as virtual machines or storage accounts.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3a1907f2-7638-4075-a024-99a3ec1c1fcf', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'MULTIPLE_CHOICE', 'What entities can management groups contain?',
        'Management groups can contain other management groups within them. This hierarchical structure allows for organizing and managing subscriptions and resources effectively within an Azure environment.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('43683124-23c2-420b-a259-0e92da1a2a1b', '3a1907f2-7638-4075-a024-99a3ec1c1fcf', 'Management groups', TRUE, 1),
    ('f69e099c-ef87-4849-8bad-2442bf125137', '3a1907f2-7638-4075-a024-99a3ec1c1fcf', 'Subscriptions', TRUE, 2),
    ('1978a840-595a-4f79-883b-043f1b34817b', '3a1907f2-7638-4075-a024-99a3ec1c1fcf', 'Resources', FALSE, 3),
    ('4fc0c020-1890-4854-963c-8e49af2ddb85', '3a1907f2-7638-4075-a024-99a3ec1c1fcf', 'Resource groups', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('6e904740-733d-414a-a6d4-c55934f9de79', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which compute type offers the greatest flexibility and control over the underlying hardware, allowing you to customize the environment to your specific needs?',
        'Virtual Machines offer the greatest flexibility and control over the underlying hardware compared to other compute types. With VMs, you can customize the environment, choose the operating system, install any software, and configure the networking and storage options according to your specific needs.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('980e1773-f141-4a71-99bf-7d4fe5e669f2', '6e904740-733d-414a-a6d4-c55934f9de79', 'Virtual Machine', TRUE, 1),
    ('88a00a37-56c8-401d-ae89-a553dd4d6fbc', '6e904740-733d-414a-a6d4-c55934f9de79', 'Container', FALSE, 2),
    ('fe63091b-3cee-4ddd-9eda-653e25d856ce', '6e904740-733d-414a-a6d4-c55934f9de79', 'Function', FALSE, 3),
    ('2d0d4324-afff-4a6e-abed-bb076259742e', '6e904740-733d-414a-a6d4-c55934f9de79', 'Serverless', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('685e9b2a-5ca7-414e-b678-f314db8ef6bf', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary purpose of an availability set in Azure?',
        'The primary purpose of an availability set in Azure is to protect against single points of failure. By grouping virtual machines into an availability set, Azure ensures that at least one VM is always available, even if one of the physical servers or underlying hardware fails.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2cae4825-e34e-4511-b882-a7b434723ee5', '685e9b2a-5ca7-414e-b678-f314db8ef6bf', 'To provide load balancing for web applications', FALSE, 1),
    ('09b99e87-c986-4a33-bd6a-0d65911f8985', '685e9b2a-5ca7-414e-b678-f314db8ef6bf', 'To ensure data redundancy and durability', FALSE, 2),
    ('8a232a15-1c82-4781-b191-90f326f7eea0', '685e9b2a-5ca7-414e-b678-f314db8ef6bf', 'To group virtual machines for easier management', FALSE, 3),
    ('d295fb01-5976-4f19-8c4f-c4a41fb9bdc9', '685e9b2a-5ca7-414e-b678-f314db8ef6bf', 'To protect against single points of failure', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('10dca9b6-eb32-4a35-b8cc-6e5ebc2b716e', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary purpose of a virtual machine scale set in Azure?',
        'The primary purpose of a virtual machine scale set in Azure is to automatically scale virtual machines based on demand. This allows for efficient resource utilization and cost optimization by dynamically adjusting the number of VM instances in response to workload changes.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('176cd4da-4494-4c6c-8ffc-2c67a5ebc586', '10dca9b6-eb32-4a35-b8cc-6e5ebc2b716e', 'To provide load balancing for web applications', FALSE, 1),
    ('3b3de760-1e02-43a5-b919-08429c5d3eb5', '10dca9b6-eb32-4a35-b8cc-6e5ebc2b716e', 'To ensure data redundancy and durability', FALSE, 2),
    ('e663aaee-abcf-4d4a-8aac-c904a7d96faf', '10dca9b6-eb32-4a35-b8cc-6e5ebc2b716e', 'To automatically scale virtual machines based on demand', TRUE, 3),
    ('ad0dbed0-d131-4add-96ee-a6e50a6b45b1', '10dca9b6-eb32-4a35-b8cc-6e5ebc2b716e', 'To group virtual machines for easier management', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b4915f55-9a61-414b-9945-e30c9e1e1459', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which Azure service can be used to deploy and scale serverless containerized applications?',
        'Azure Container Instances is a serverless container service that allows you to deploy containers without managing the underlying infrastructure. It is designed for fast deployment and scaling of containers, making it an ideal choice for serverless containerized applications.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6bbfce06-8ada-452e-89bf-27e35f9956cf', 'b4915f55-9a61-414b-9945-e30c9e1e1459', 'Azure App Service', FALSE, 1),
    ('6c56e796-beb7-42e8-a001-807157fabe18', 'b4915f55-9a61-414b-9945-e30c9e1e1459', 'Azure Kubernetes Service (AKS)', FALSE, 2),
    ('80c0e8d5-d212-4b69-8a13-0e5e1cfd50bc', 'b4915f55-9a61-414b-9945-e30c9e1e1459', 'Azure Container Instances', TRUE, 3),
    ('6671fb0f-70ec-40b4-8864-7be710ce15ea', 'b4915f55-9a61-414b-9945-e30c9e1e1459', 'Azure Functions', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('abaa4f45-07e4-4d80-813c-048068e99d29', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the benefit of using Azure Virtual Desktop compared to traditional on-premises desktop virtualization solutions?',
        'All answers are correct because Azure Virtual Desktop provides a combination of lower costs, increased security, and improved scalability compared to traditional on-premises desktop virtualization solutions. Organizations can benefit from all these advantages by adopting Azure Virtual Desktop for their virtualization needs.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9fe05a12-f571-4c2a-91a2-eac93ba4f5ec', 'abaa4f45-07e4-4d80-813c-048068e99d29', 'Lower costs', FALSE, 1),
    ('8628f394-ea08-4325-bd92-13cf10a028e2', 'abaa4f45-07e4-4d80-813c-048068e99d29', 'Increased security', FALSE, 2),
    ('6b5b8eeb-b9f6-4991-8193-016a17081881', 'abaa4f45-07e4-4d80-813c-048068e99d29', 'Improved scalability', FALSE, 3),
    ('2efa72d6-b8b0-42ef-97e6-e08d05471952', 'abaa4f45-07e4-4d80-813c-048068e99d29', 'All answers are correct', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b5149e17-2041-40df-b9fe-e66ad499c412', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which Azure App Service hosting option would you choose if you wanted isolated hardware and network, ensuring they are not used by any other Azure customers?',
        'App Service Environment is the correct choice for ensuring isolated hardware and network resources for your Azure App Service. It provides a fully isolated and dedicated environment for running Azure App Service apps, ensuring that the hardware and network resources are not shared with any other Azure customers.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0fa4b4dc-0c85-4b6c-934c-52b640be8a51', 'b5149e17-2041-40df-b9fe-e66ad499c412', 'App Service Plan', FALSE, 1),
    ('8f1b7b69-f78d-4ac0-b895-5136422a0fc5', 'b5149e17-2041-40df-b9fe-e66ad499c412', 'App Service Environment', TRUE, 2),
    ('b521d32c-7922-4e0c-9695-6e1837bac1c9', 'b5149e17-2041-40df-b9fe-e66ad499c412', 'Virtual Machine', FALSE, 3),
    ('c9fa68af-f0e0-408f-8287-8da0abbfa515', 'b5149e17-2041-40df-b9fe-e66ad499c412', 'Bare Metal Hosting', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('8025bfae-a113-4b5b-b4cc-17e506e1314a', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Fill in the blank: __________ is a mechanism that allows you to connect two virtual networks within Azure.',
        'Azure peering is a mechanism in Azure that enables you to connect two virtual networks within Azure. It allows traffic to flow securely between the connected networks, providing a seamless connection for resources in different virtual networks.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c58a8ec2-8df9-4259-bfa6-113c66bc64b1', '8025bfae-a113-4b5b-b4cc-17e506e1314a', 'Azure peering', TRUE, 1),
    ('775a9ada-a573-4f0a-8ee8-ebfd5e48c3ca', '8025bfae-a113-4b5b-b4cc-17e506e1314a', 'Azure Expressroute', FALSE, 2),
    ('cf397b12-018b-47c8-be0a-d51db06a5040', '8025bfae-a113-4b5b-b4cc-17e506e1314a', 'Azure Application Gateway', FALSE, 3),
    ('2db9b48b-e59e-4ecb-85ad-137f8102f010', '8025bfae-a113-4b5b-b4cc-17e506e1314a', 'Azure Load Balancer', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b6f1ec97-6598-4110-a16a-8782eb2c7472', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'MULTIPLE_CHOICE', 'Which of the following benefits are provided by Azure ExpressRoute compared to a regular Site-to-Site VPN?',
        'Azure ExpressRoute provides the benefit of data traveling over a private network, ensuring a more secure connection compared to a regular Site-to-Site VPN where data travels over a public network, potentially exposing it to security risks.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c08febb1-9923-45ab-b8ea-a6233e65322e', 'b6f1ec97-6598-4110-a16a-8782eb2c7472', 'Data travels over a private network, not a public one', TRUE, 1),
    ('65888582-5e8e-404b-a9f3-6549c8f052eb', 'b6f1ec97-6598-4110-a16a-8782eb2c7472', 'Faster connection to Azure', TRUE, 2),
    ('4c0b5c25-7f42-414a-887e-2cac51526400', 'b6f1ec97-6598-4110-a16a-8782eb2c7472', 'Less expensive connection to Azure', FALSE, 3),
    ('c25627dd-f46b-4f61-ba85-5a573a240c6e', 'b6f1ec97-6598-4110-a16a-8782eb2c7472', 'Access to private Virtual Networks that do not have devices with a public IP address', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e889ae20-c338-40fd-a19e-05a9e9d6fa4f', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'You have a virtual machine that you need to have a public endpoint - accessible from the Internet. Which of the following resources do you need to have in order to achieve your goal?',
        'In order to have a virtual machine with a public endpoint accessible from the Internet, you need to assign a Public IP Address to the virtual machine. This Public IP Address allows external users to connect to the virtual machine over the Internet.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('3d0b6932-c668-4e51-8d85-f14e0ea1168c', 'e889ae20-c338-40fd-a19e-05a9e9d6fa4f', 'Public IP Address', TRUE, 1),
    ('87477d78-4208-4b1c-b64a-d69964b5377e', 'e889ae20-c338-40fd-a19e-05a9e9d6fa4f', 'Azure Firewall', FALSE, 2),
    ('f97f805b-4538-49a8-8647-13c129b60840', 'e889ae20-c338-40fd-a19e-05a9e9d6fa4f', 'VPN Gateway', FALSE, 3),
    ('701aec55-308e-4381-8284-c7c1887f40b8', 'e889ae20-c338-40fd-a19e-05a9e9d6fa4f', 'IIS web server', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d3794663-10fb-49a8-9fde-4844c9e5877e', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which storage option should you choose if you need the absolute highest performance (regardless of the cost) for intense workloads like SAP HANA or transaction-heavy applications?',
        'Ultra Disks are the highest-performing storage option in Azure, specifically designed for intense workloads like SAP HANA or transaction-heavy applications. They offer the highest level of performance and throughput, making them the ideal choice when performance is the top priority, regardless of cost.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('bcef29f8-e208-4e4b-a263-9f8f3319d646', 'd3794663-10fb-49a8-9fde-4844c9e5877e', 'Ultra Disks', TRUE, 1),
    ('873465ea-b8fe-4133-b60c-58a820acea64', 'd3794663-10fb-49a8-9fde-4844c9e5877e', 'Premium SSDs', FALSE, 2),
    ('9905eb8d-0b60-4ffa-835c-db4665bc970f', 'd3794663-10fb-49a8-9fde-4844c9e5877e', 'Standard SSDs', FALSE, 3),
    ('97fd0a4d-f111-4c0a-965c-e37837cb4618', 'd3794663-10fb-49a8-9fde-4844c9e5877e', 'Standard HDDs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('50382ea0-f20d-4fe9-bfff-f3c1f066cfc2', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'In which storage redundancy option does Azure give you a secondary endpoint for read-only access?',
        'RA-GRS (Read-access geo-redundant storage) is a storage redundancy option in Azure that provides a secondary endpoint for read-only access to data replicated to a secondary region. This allows users to read data from the secondary region in case of a regional outage in the primary region.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8c830ddf-923d-48a0-837d-6157df4d8fee', '50382ea0-f20d-4fe9-bfff-f3c1f066cfc2', 'LRS', FALSE, 1),
    ('7d655101-0695-43ea-9270-4ed28d753463', '50382ea0-f20d-4fe9-bfff-f3c1f066cfc2', 'ZRS', FALSE, 2),
    ('6e117b91-a9b5-4fcb-9e5e-e13169a3df6d', '50382ea0-f20d-4fe9-bfff-f3c1f066cfc2', 'GRS', FALSE, 3),
    ('d9bf4002-518e-4310-aed2-5eb62c5f507c', '50382ea0-f20d-4fe9-bfff-f3c1f066cfc2', 'RA-GRS', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('790a7f10-efbf-4c0c-9261-d7222e728ae6', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which feature of Azure Storage makes it durable?',
        'Redundancy in Azure Storage ensures that data is replicated across multiple storage nodes and data centers to provide high availability and durability. This feature helps protect against data loss in case of hardware failures or other disruptions.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8b58c032-5049-4346-84d0-11a497777aa4', '790a7f10-efbf-4c0c-9261-d7222e728ae6', 'Redundancy', TRUE, 1),
    ('f37c189b-c464-46b3-bb7b-1d8cdbfc9e44', '790a7f10-efbf-4c0c-9261-d7222e728ae6', 'Security', FALSE, 2),
    ('eb2c04e4-4b08-4a7c-9600-fd25d2591f46', '790a7f10-efbf-4c0c-9261-d7222e728ae6', 'Scalability', FALSE, 3),
    ('12e0b016-269d-4869-9749-de1241e9d9a8', '790a7f10-efbf-4c0c-9261-d7222e728ae6', 'Accessibility', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a958abdf-b7ce-4d0f-81f1-16e2a4b1c0de', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which Azure Storage access tier is optimized (including for cost) for data accessed infrequently and must be stored for at least 30 days?',
        'The Cool access tier is optimized for data that is accessed infrequently and must be stored for at least 30 days. It offers lower storage costs compared to the Hot access tier, making it a suitable choice for such data storage requirements.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('78fdc2e3-af96-4d00-8690-8de4aeb0d1fd', 'a958abdf-b7ce-4d0f-81f1-16e2a4b1c0de', 'Hot access tier', FALSE, 1),
    ('35d994e8-f657-48d8-9370-1f29c8738929', 'a958abdf-b7ce-4d0f-81f1-16e2a4b1c0de', 'Cool access tier', TRUE, 2),
    ('977b2c66-13c2-4120-9695-8acc5fd18297', 'a958abdf-b7ce-4d0f-81f1-16e2a4b1c0de', 'Premium storage', FALSE, 3),
    ('8de0e152-1a53-4183-a3e1-4d0200923a63', 'a958abdf-b7ce-4d0f-81f1-16e2a4b1c0de', 'Archive access tier', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5ae7d1e8-a580-4ec2-ab95-9a900f84c339', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Fill in the blank: __________ stores data offline and offers the lowest storage costs',
        'Archive storage is designed to store data offline, making it the most cost-effective option for long-term storage. It offers the lowest storage costs compared to other storage tiers in Azure, making it ideal for data that is rarely accessed.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('90e38c2a-6796-4fb3-a970-e6013562b587', '5ae7d1e8-a580-4ec2-ab95-9a900f84c339', 'Archive storage', TRUE, 1),
    ('10a79fa5-0c24-4eca-b134-4f0181ae0713', '5ae7d1e8-a580-4ec2-ab95-9a900f84c339', 'Hot access', FALSE, 2),
    ('86284b02-51eb-4c9a-be29-67cf5a28c139', '5ae7d1e8-a580-4ec2-ab95-9a900f84c339', 'Cool access', FALSE, 3),
    ('e40c0cea-83d0-4958-969e-cf4485fbf350', '5ae7d1e8-a580-4ec2-ab95-9a900f84c339', 'Cold access', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('301db41b-c63c-4db9-9d8b-0b0b36bebfe0', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is AzCopy primarily used for in Azure?',
        'AzCopy is primarily used for copying data to and from Azure Storage efficiently. It provides a command-line interface for high-performance data transfer and synchronization, making it the correct choice for this question.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('488b4407-e742-4d38-acd8-a460cd158d13', '301db41b-c63c-4db9-9d8b-0b0b36bebfe0', 'Automating the deployment of virtual machines.', FALSE, 1),
    ('6ab9b2c9-1b83-4bf0-a3ea-4bc7ae8a6105', '301db41b-c63c-4db9-9d8b-0b0b36bebfe0', 'Copying data to and from Azure Storage efficiently.', TRUE, 2),
    ('03d8848e-cad1-4722-bde8-23cd333ae5e0', '301db41b-c63c-4db9-9d8b-0b0b36bebfe0', 'Monitoring the performance of Azure resources.', FALSE, 3),
    ('19325481-4de6-4205-a464-8efd8197e263', '301db41b-c63c-4db9-9d8b-0b0b36bebfe0', 'Managing user identities and access permissions.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9ff8404f-0162-41d5-a872-9e2037e18598', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which tool lets you centralize your file shares in Azure Files and keep the flexibility, performance, and compatibility of a Windows file server?',
        'Azure File Sync is the correct choice as it allows you to centralize your file shares in Azure Files while maintaining the flexibility, performance, and compatibility of a Windows file server. It enables synchronization of files between on-premises servers and Azure Files, providing a seamless hybrid cloud storage solution.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('eaad18a7-018f-4800-b58b-5e94d9f895c7', '9ff8404f-0162-41d5-a872-9e2037e18598', 'AzCopy', FALSE, 1),
    ('7bf2ebca-ee5f-48bc-9131-f5911f9545ea', '9ff8404f-0162-41d5-a872-9e2037e18598', 'Azure Storage Explorer', FALSE, 2),
    ('4b61fd1f-81df-4b92-8123-e8a8fc5a3598', '9ff8404f-0162-41d5-a872-9e2037e18598', 'Azure File Sync', TRUE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f3377036-f9c8-4813-8811-bc76ff0a816c', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary purpose of Microsoft Entra ID?',
        'The primary purpose of Microsoft Entra ID is to manage user identities and control access to various applications and resources. It provides authentication and authorization services to ensure secure access for users.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('03a7e205-7d10-4a36-a2e9-39f1c4801d0d', 'f3377036-f9c8-4813-8811-bc76ff0a816c', 'To provide on-premises domain services in the cloud', FALSE, 1),
    ('6df0c0e6-5980-4236-a870-df069202e620', 'f3377036-f9c8-4813-8811-bc76ff0a816c', 'To manage user identities and access to applications and resources', TRUE, 2),
    ('e74b0b48-0718-4599-8516-b21ec1e34902', 'f3377036-f9c8-4813-8811-bc76ff0a816c', 'To secure network traffic and protect against cyber threats', FALSE, 3),
    ('7ff5ba88-30b4-4f7a-b9bd-70a4f9075346', 'f3377036-f9c8-4813-8811-bc76ff0a816c', 'To store and manage large amounts of data', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c2a9a18f-9e60-4ffd-9f74-8e99e6fa9fb0', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following is a passwordless authentication method supported by Azure?',
        'Azure supports both biometric authentication methods (e.g., fingerprint, facial recognition) and security keys for passwordless authentication. By offering multiple options, Azure allows users to choose the authentication method that best suits their security needs and preferences.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ba1a9890-808b-4d15-93ed-58b47f71500f', 'c2a9a18f-9e60-4ffd-9f74-8e99e6fa9fb0', 'Only biometric authentication (e.g., fingerprint, facial recognition)', FALSE, 1),
    ('a2f14b57-3dd8-4326-8762-edde5084f90e', 'c2a9a18f-9e60-4ffd-9f74-8e99e6fa9fb0', 'Only security keys', FALSE, 2),
    ('210bd653-8d50-4bd5-92f2-7bc577ada307', 'c2a9a18f-9e60-4ffd-9f74-8e99e6fa9fb0', 'Biometric authentication and security keys', TRUE, 3),
    ('484627e2-aa42-419c-85e9-fd0636aac4d9', 'c2a9a18f-9e60-4ffd-9f74-8e99e6fa9fb0', 'Four-digit PIN', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('ca29402d-5d09-4277-a144-f208222290e8', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following is a key difference between Azure B2B and Azure B2C?',
        'The key difference between Azure B2B and B2C is their target audience and purpose. B2B is specifically designed for business-to-business collaboration, enabling organizations to securely share resources and applications with external partners. On the other hand, B2C is tailored for business-to-customer interactions, focusing on providing services and applications directly to end customers. This makes Choice C the correct answer.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8f9f105b-fd1d-4ebf-a522-df9f3ad433c8', 'ca29402d-5d09-4277-a144-f208222290e8', 'B2B is for internal users, while B2C is for external users.', FALSE, 1),
    ('7fbc14c2-7219-42d1-83ef-11e34c6c9cbb', 'ca29402d-5d09-4277-a144-f208222290e8', 'B2B is for cloud-based applications, while B2C is for on-premises applications.', FALSE, 2),
    ('6eb50b39-eaa4-4687-9b81-9e18f08c43c5', 'ca29402d-5d09-4277-a144-f208222290e8', 'B2B is for business-to-business collaboration, while B2C is for business-to-customer interactions.', TRUE, 3),
    ('f7b81639-7d4f-461b-af06-c4291111e885', 'ca29402d-5d09-4277-a144-f208222290e8', 'There is no significant difference between the two services.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('db5cc4ca-ef47-42a3-98a2-91f5665c844a', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary benefit of using Microsoft Entra Conditional Access?',
        'The primary benefit of using Microsoft Entra Conditional Access is to enhance security by restricting access to authorized users and devices. This helps prevent unauthorized access and potential security breaches by enforcing strict access policies based on specific conditions.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('655a0a9a-ba85-4d4d-9d66-4ccb23272855', 'db5cc4ca-ef47-42a3-98a2-91f5665c844a', 'Simplified user authentication.', FALSE, 1),
    ('6c7ac70e-f5e5-4316-a4c7-ab7c46aba73b', 'db5cc4ca-ef47-42a3-98a2-91f5665c844a', 'Reduced reliance on passwords.', FALSE, 2),
    ('62a02077-f7be-47a2-98a9-4a2fb68f5084', 'db5cc4ca-ef47-42a3-98a2-91f5665c844a', 'Enhanced security by limiting access to authorized users and devices.', TRUE, 3),
    ('fbd37020-33e8-43bf-92b6-d263d2b4c554', 'db5cc4ca-ef47-42a3-98a2-91f5665c844a', 'Improved user experience.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3f98a433-8c26-44ec-b05e-92a26ed055ab', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary purpose of Azure RBAC?',
        'Azure RBAC is designed to grant users the appropriate level of access to Azure resources by assigning roles with specific permissions. This helps in ensuring that users have the necessary permissions to perform their tasks without granting unnecessary access.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('4790c98e-22c2-4670-907b-75419acde596', '3f98a433-8c26-44ec-b05e-92a26ed055ab', 'To manage network security groups.', FALSE, 1),
    ('1772ad45-5d95-44dd-b75a-3b173c896bbd', '3f98a433-8c26-44ec-b05e-92a26ed055ab', 'To grant users the appropriate level of access to Azure resources.', TRUE, 2),
    ('b03e260a-6e1a-4ae0-b126-72533344e251', '3f98a433-8c26-44ec-b05e-92a26ed055ab', 'To enforce multi-factor authentication.', FALSE, 3),
    ('8b626897-4d69-46d7-ab3c-69220d0887b1', '3f98a433-8c26-44ec-b05e-92a26ed055ab', 'To protect against unauthorized access to Azure subscriptions.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7db07bc4-1ede-483c-8b88-0a656adaea85', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following is a key principle of the Zero Trust security model?',
        'Verifying explicitly and enforcing least-privilege access for all users and devices is a key principle of the Zero Trust security model. This principle ensures that access is granted based on specific needs and permissions, rather than assuming trust based on location or network.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d9a2b70e-9d1c-4573-8c6d-5a0ff96a4d5a', '7db07bc4-1ede-483c-8b88-0a656adaea85', 'Trust all users and devices by default once they are inside the network perimeter.', FALSE, 1),
    ('4f530621-b71b-4eb8-8408-c0c90b48ad15', '7db07bc4-1ede-483c-8b88-0a656adaea85', 'Verify explicitly and enforce least-privilege access for all users and devices.', TRUE, 2),
    ('06539c2f-c588-4da0-b3c8-131d797a6b12', '7db07bc4-1ede-483c-8b88-0a656adaea85', 'Allow unrestricted access to resources for all authenticated users.', FALSE, 3),
    ('77a20143-add1-44d3-9483-f3de9f3aa49c', '7db07bc4-1ede-483c-8b88-0a656adaea85', 'Rely solely on network firewalls to secure resources.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d18188f5-73bb-4c06-afcb-22cd02a430f8', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'How does data transfer between Azure regions impact costs?',
        'This choice is correct because data transfer between Azure regions is charged based on the amount of data transferred and the distance it travels. The farther the data travels and the more data that is transferred, the higher the costs will be incurred.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('98d501b4-c806-45c3-9c87-a163b19ba10e', 'd18188f5-73bb-4c06-afcb-22cd02a430f8', 'It''s always free, regardless of the distance', FALSE, 1),
    ('b531b6e8-91de-44b7-bef9-e509d701a5a8', 'd18188f5-73bb-4c06-afcb-22cd02a430f8', 'It''s charged based on the amount of data transferred and the distance', TRUE, 2),
    ('ac853ec4-e165-4861-bc4b-9e398e21ad11', 'd18188f5-73bb-4c06-afcb-22cd02a430f8', 'It''s charged based on the source region only', FALSE, 3),
    ('0ff86ed2-a234-412c-af7c-794772d0a545', 'd18188f5-73bb-4c06-afcb-22cd02a430f8', 'It''s charged based on the destination region only', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e65f93c0-2937-46a1-9fd2-de591178b0b0', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'What is the primary purpose of tags in Azure?',
        'The primary purpose of tags in Azure is to categorize and organize resources for better management. Tags allow users to logically group resources, track costs, and apply policies based on specific criteria.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('13597ba1-ebc4-4ca6-bb19-9438cfd8137f', 'e65f93c0-2937-46a1-9fd2-de591178b0b0', 'To assign security permissions to resources', FALSE, 1),
    ('c350a810-6b76-4382-a5bd-d5dc1651454b', 'e65f93c0-2937-46a1-9fd2-de591178b0b0', 'To categorize and organize resources for better management', TRUE, 2),
    ('ea43b037-e6b5-40c5-b982-5d60454a7b23', 'e65f93c0-2937-46a1-9fd2-de591178b0b0', 'To monitor resource performance', FALSE, 3),
    ('c6252ba2-f891-4da2-91f6-822b92e2cefe', 'e65f93c0-2937-46a1-9fd2-de591178b0b0', 'To automate resource provisioning', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('aa22cb5f-ae6f-4556-87d6-5b1be085dd02', '9cee5f01-c25c-4329-b92d-66d6f6dc3f7f', 'SINGLE_CHOICE', 'Which of the following is NOT a core capability of Microsoft Purview? ✅',
        'Data migration and integration are NOT core capabilities of Microsoft Purview. While Purview focuses on data discovery, classification, sensitivity labeling, and data governance, data migration and integration are typically handled by other Azure services like Azure Data Factory or Azure Data Share.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c9da45a8-d237-4db0-a2f9-4209d61d7591', 'aa22cb5f-ae6f-4556-87d6-5b1be085dd02', 'Data discovery and classification', FALSE, 1),
    ('bde29fc4-15e1-4601-8ed7-542b39899cb1', 'aa22cb5f-ae6f-4556-87d6-5b1be085dd02', 'Data sensitivity labeling', FALSE, 2),
    ('f8d2e5f3-56f9-40e2-890b-e2c8ce35043c', 'aa22cb5f-ae6f-4556-87d6-5b1be085dd02', 'Data loss prevention', FALSE, 3),
    ('e4b8ae9d-cfe7-47ba-80a6-2ddb4c09b0ae', 'aa22cb5f-ae6f-4556-87d6-5b1be085dd02', 'Data migration and integration', TRUE, 4);
