-- Examen blanc officiel A (AZ900_Test_A.docx) - real AZ-900 mock exam content
-- 50 questions with answers/explanations from the same document (self-contained practice test).
-- This is an official, complete mock exam: it must stay independent from other mock exams and
-- from course modules - it is excluded from the random cross-module exam draw (module type
-- MOCK_EXAM, see QuestionRepository.findRandomActiveByCertification).

INSERT INTO module (id, certification_id, code, title, description, position, type)
VALUES ('fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', '00000000-0000-0000-0000-000000000001', 'mock-exam-a', 'Examen blanc officiel A',
        'Examen blanc officiel AZ-900 complet, 50 questions - a realiser en une seule fois.', 7, 'MOCK_EXAM');

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('5021c508-e20a-4120-af5b-1c9db0ecbfcc', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Azure feature lets you organize multiple subscriptions into a hierarchy for centralized governance, policy enforcement, and access management?',
        'Management Groups in Azure allow you to organize multiple subscriptions into a hierarchy for centralized governance, policy enforcement, and access management. They provide a way to manage access, policies, and compliance across multiple subscriptions simultaneously, making them the correct choice for this scenario.', 1, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0d9aba41-789d-4b0d-b2cb-a3956fd7a7b5', '5021c508-e20a-4120-af5b-1c9db0ecbfcc', 'Management Groups', TRUE, 1),
    ('1a18e2dc-2af4-44f0-a649-080dd2b8c672', '5021c508-e20a-4120-af5b-1c9db0ecbfcc', 'Resource Groups', FALSE, 2),
    ('e4d9864f-60c5-4194-97bb-4fae905b1004', '5021c508-e20a-4120-af5b-1c9db0ecbfcc', 'RBAC (Role-Based Access Control)', FALSE, 3),
    ('37f28c05-1237-4d0a-ba41-445eda967147', '5021c508-e20a-4120-af5b-1c9db0ecbfcc', 'Microsoft Entra ID', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('46781f1e-1d6e-4b8b-9a66-c36fb83c15d1', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'A company is moving from on-premises servers to Azure. They want to avoid large upfront hardware purchases and only pay for the resources they actually use. Which benefit of cloud computing does this describe?',
        'Capital expenditure reduction (CapEx to OpEx) is the correct choice because it describes the benefit of shifting from upfront hardware purchases (capital expenditure) to paying for resources on a usage basis (operational expenditure). This aligns with the company''s goal of avoiding large upfront costs and only paying for what they use.', 2, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f531d375-ba6f-4a02-ba47-27374f8bc604', '46781f1e-1d6e-4b8b-9a66-c36fb83c15d1', 'High availability', FALSE, 1),
    ('6c495cec-e686-4dd2-8f01-65a3db7d5fdc', '46781f1e-1d6e-4b8b-9a66-c36fb83c15d1', 'Elasticity', FALSE, 2),
    ('50805430-9fed-4eb3-be0d-e335306e1cd9', '46781f1e-1d6e-4b8b-9a66-c36fb83c15d1', 'Capital expenditure reduction (CapEx to OpEx)', TRUE, 3),
    ('77c6341a-da02-47a1-bbb3-a9c50f961b03', '46781f1e-1d6e-4b8b-9a66-c36fb83c15d1', 'Fault tolerance', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('99c6fa8d-b31e-40c5-859e-ba1d8b42e786', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which of the following is an essential design principle for achieving high availability in a cloud computing environment?',
        'Designing the system for resilience, with no single points of failure, is an essential design principle for achieving high availability in a cloud computing environment. By eliminating single points of failure and ensuring redundancy in critical components, the system can maintain availability even in the face of failures.', 3, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('09db2d8d-19b4-4d70-9281-ab1b83df5b9c', '99c6fa8d-b31e-40c5-859e-ba1d8b42e786', 'The system must maintain 100% availability at all times.', FALSE, 1),
    ('4c3631a4-6eda-43fc-90c8-f97853b751e6', '99c6fa8d-b31e-40c5-859e-ba1d8b42e786', 'The system must operate on a minimum of two virtual machines.', FALSE, 2),
    ('32c0d70f-35bc-43c5-a818-67956d7d8bdc', '99c6fa8d-b31e-40c5-859e-ba1d8b42e786', 'The system must be designed for resilience, with no single points of failure.', TRUE, 3),
    ('dd8c1f0d-b6f4-49a7-97c4-64a72eeb3e89', '99c6fa8d-b31e-40c5-859e-ba1d8b42e786', 'It''s impossible to create a highly available system.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9dec13d2-c8ac-49d8-9918-c1b800e748a5', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'A company is migrating its workloads to Azure to reduce the risk of downtime caused by hardware failures. Which benefit of cloud computing does this scenario demonstrate?',
        'High availability and fault tolerance are key benefits of cloud computing that help reduce the risk of downtime caused by hardware failures. By migrating workloads to Azure, the company can leverage Azure''s infrastructure to ensure that services remain available even in the event of hardware failures.', 4, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b31c2fdc-7d48-42ee-b076-ba171a0e6918', '9dec13d2-c8ac-49d8-9918-c1b800e748a5', 'Elasticity', FALSE, 1),
    ('bb20e55a-e7a4-4f14-9a20-c39145ba9a4e', '9dec13d2-c8ac-49d8-9918-c1b800e748a5', 'High availability and fault tolerance', TRUE, 2),
    ('9bd54449-c366-460e-a124-0ad36dc3c374', '9dec13d2-c8ac-49d8-9918-c1b800e748a5', 'Capital expenditure reduction (CapEx to OpEx)', FALSE, 3),
    ('a66a3333-20bf-4634-b1d5-63ee614129c1', '9dec13d2-c8ac-49d8-9918-c1b800e748a5', 'Rapid deployment', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f11342a3-49c3-45b1-87bf-214bc1fb510e', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'What is a primary benefit of choosing a consumption-based (pay-per-use) pricing model instead of a time-based (hourly or always-on) pricing model for cloud services?',
        'Choosing a consumption-based pricing model can lead to significant cost savings when resources are not needed for constant use. This is because users only pay for the resources they actually consume, allowing for more efficient cost management and optimization.', 5, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('5652e975-b1a8-4d7d-973a-a7d0722ed6e8', 'f11342a3-49c3-45b1-87bf-214bc1fb510e', 'The ability to easily predict the future cost of the service.', FALSE, 1),
    ('b7791280-1ffe-4f95-b47f-646e5a33c48c', 'f11342a3-49c3-45b1-87bf-214bc1fb510e', 'It always being cheaper to pay for consumption rather than paying hourly.', FALSE, 2),
    ('3f633ba6-344e-44ee-a9ae-699acfdae48d', 'f11342a3-49c3-45b1-87bf-214bc1fb510e', 'Significant cost savings when the resources aren''t needed for constant use.', TRUE, 3),
    ('fe5df33d-3138-4d48-9da2-c0b1d813136c', 'f11342a3-49c3-45b1-87bf-214bc1fb510e', 'A simpler and easier-to-understand pricing model.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('910043f2-3214-4f0c-93f4-592793a3b1da', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which cloud service model is a virtual machine (VM) most directly an example of?',
        'A virtual machine (VM) is most directly an example of Infrastructure as a Service (IaaS) because it provides virtualized computing resources, such as virtualized hardware, storage, and networking, to users. With IaaS, users have control over the operating system, applications, and configurations running on the VM.', 6, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('14feeb68-92bf-4689-bb0b-72df7ac364ab', '910043f2-3214-4f0c-93f4-592793a3b1da', 'Infrastructure as a Service (IaaS)', TRUE, 1),
    ('1f695cbe-cff4-4664-9ec4-bee7fdcec6d6', '910043f2-3214-4f0c-93f4-592793a3b1da', 'Platform as a Service (PaaS)', FALSE, 2),
    ('482072ff-edfe-4b62-af0e-2d4471b731c7', '910043f2-3214-4f0c-93f4-592793a3b1da', 'Software as a Service (SaaS)', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('60edd576-2588-42a1-a1ec-9fab6db0fb63', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which cloud service model best describes Microsoft Outlook as delivered through Microsoft 365 (web and desktop clients)?',
        'Software as a Service (SaaS) is a cloud computing model where software applications are hosted by a third-party provider and made available to customers over the internet. Microsoft Outlook as part of Microsoft 365 is a prime example of a SaaS application, as users can access it through web and desktop clients without needing to install or maintain the software themselves.', 7, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('96bac3bd-0fed-4d0f-9d42-ade10792dc79', '60edd576-2588-42a1-a1ec-9fab6db0fb63', 'Infrastructure as a Service (IaaS)', FALSE, 1),
    ('bb7e6da7-f921-4fe8-924c-989a155ba7bb', '60edd576-2588-42a1-a1ec-9fab6db0fb63', 'Platform as a Service (PaaS)', FALSE, 2),
    ('2f69fcbe-5528-42f2-ae90-e00b0a435f11', '60edd576-2588-42a1-a1ec-9fab6db0fb63', 'Software as a Service (SaaS)', TRUE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4b295c5e-c564-4dff-b5e6-fcceb8760bc3', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'A developer wants to deploy a custom web application without managing the underlying operating system or web server. Which Azure service model best meets this requirement?',
        'Platform as a Service (PaaS) is the best Azure service model that meets the requirement of deploying a custom web application without managing the underlying operating system or web server. PaaS offers a platform with pre-configured infrastructure, including the operating system and web server, allowing developers to focus on application development and deployment.', 8, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('8bff50d9-4ea1-410f-a470-61994f521ec4', '4b295c5e-c564-4dff-b5e6-fcceb8760bc3', 'Infrastructure as a Service (IaaS)', FALSE, 1),
    ('9b8442bb-ea60-4a33-a5c3-3c23f24f416c', '4b295c5e-c564-4dff-b5e6-fcceb8760bc3', 'Platform as a Service (PaaS)', TRUE, 2),
    ('59aa6fac-6573-42c3-9216-5d2cdfd1d502', '4b295c5e-c564-4dff-b5e6-fcceb8760bc3', 'Software as a Service (SaaS)', FALSE, 3),
    ('6d6419d0-f93f-4264-9a2b-26577977cb67', '4b295c5e-c564-4dff-b5e6-fcceb8760bc3', 'Functions as a Service (FaaS)', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3861bfd6-afc4-46fc-a162-589c4f21a2e4', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which statement correctly describes the difference between the public cloud and the private cloud deployment models?',
        'This statement correctly describes the difference between a public cloud and a private cloud. A public cloud is accessible to the general public or a large industry group and is owned by a cloud service provider, while a private cloud is owned and operated by a single organization for exclusive use.', 9, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a90fe754-0b67-40e4-b4ec-aa938f131c3e', '3861bfd6-afc4-46fc-a162-589c4f21a2e4', 'A public cloud is owned and operated by a single organization for exclusive use, while a private cloud is available to the general public or a large industry group and is owned by a cloud service provider.', FALSE, 1),
    ('926fc556-9a93-4e16-8e2b-64d2571c4d34', '3861bfd6-afc4-46fc-a162-589c4f21a2e4', 'A public cloud is available to the general public or a large industry group and is owned by a cloud service provider, while a private cloud is owned and operated by a single organization for exclusive use.', TRUE, 2),
    ('3fabfb62-dec6-42f9-82a7-9a35ba075389', '3861bfd6-afc4-46fc-a162-589c4f21a2e4', 'Both public and private clouds are owned and operated by a single organization for exclusive use.', FALSE, 3),
    ('e2773378-cfb0-4b04-a04b-d7119acf94b1', '3861bfd6-afc4-46fc-a162-589c4f21a2e4', 'Both public and private clouds are available to the general public and are owned by a cloud service provider.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e0a8f2a0-ed1e-4e7e-8b5e-d71777fcf4e3', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which cloud deployment model describes using Azure as an extension of your on‑premises data center to provide additional storage or services while most resources remain on‑premises?',
        'Hybrid cloud deployment model combines on-premises infrastructure with cloud services, such as Azure, to provide additional storage or services while keeping most resources on-premises. It allows organizations to leverage the benefits of both on-premises and cloud environments.', 10, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6faa862f-0f05-4f77-8a5d-0ad2e2b6084e', 'e0a8f2a0-ed1e-4e7e-8b5e-d71777fcf4e3', 'Public cloud', FALSE, 1),
    ('a47681ae-c402-47f8-8b95-6a40c9f65ccd', 'e0a8f2a0-ed1e-4e7e-8b5e-d71777fcf4e3', 'Private cloud', FALSE, 2),
    ('00df20b2-026c-4f16-81f2-bc4391d99885', 'e0a8f2a0-ed1e-4e7e-8b5e-d71777fcf4e3', 'Hybrid cloud', TRUE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a0cfb613-c2d1-4364-828a-6684a0ce3cf8', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'In Azure high-availability design, what is the primary purpose of Availability Zones?',
        'Availability Zones in Azure are distinct physical locations within an Azure region that are isolated from each other in terms of power, networking, and cooling. They allow users to manually select different zones for virtual machine placement to achieve superior availability and fault tolerance compared to other options. This helps in ensuring that applications and services remain available even if one zone experiences an outage.', 11, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('aee7f377-7a48-4241-8081-cbd4bbf1dd06', 'a0cfb613-c2d1-4364-828a-6684a0ce3cf8', 'They allow manual selection of data centers for virtual machine placement to achieve superior availability compared to other options.', TRUE, 1),
    ('185a6708-dc45-44fb-88dc-59b3934c6405', 'a0cfb613-c2d1-4364-828a-6684a0ce3cf8', 'They serve as a folder structure in Azure used for organizing resources such as databases, virtual machines, and virtual networks.', FALSE, 2),
    ('52238c57-b008-495f-b494-2fed28e8ef6e', 'a0cfb613-c2d1-4364-828a-6684a0ce3cf8', 'They are synonymous with an Azure region.', FALSE, 3),
    ('b4c6ba66-477f-4cf2-98aa-ffdcd78f60a1', 'a0cfb613-c2d1-4364-828a-6684a0ce3cf8', 'They represent certain server racks within individual data centers, specifically designed by Azure for higher uptime.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b2c4de46-fcc5-48fc-aaf7-cca5e9490b29', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which of the following major cloud providers has the largest global footprint in terms of publicly available regions where customers can provision virtual machines and other infrastructure?',
        'Microsoft Azure has the largest global footprint among the major cloud providers in terms of publicly available regions where customers can provision virtual machines and other infrastructure. With a wide range of regions spread across the globe, Microsoft Azure offers customers a diverse selection of locations to deploy their resources.', 12, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('15e1c3b0-fd5a-4d4d-9ee8-3b9b2cae5959', 'b2c4de46-fcc5-48fc-aaf7-cca5e9490b29', 'Amazon AWS', FALSE, 1),
    ('589c1e99-6712-4b7d-a773-7e455a14832b', 'b2c4de46-fcc5-48fc-aaf7-cca5e9490b29', 'Google Cloud Platform', FALSE, 2),
    ('961ef6ef-881d-466a-82ac-0ca76d8b2c55', 'b2c4de46-fcc5-48fc-aaf7-cca5e9490b29', 'Microsoft Azure', TRUE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('079d4b78-3bff-462a-ba97-4fd0e3bc5b13', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'For the highest SLA/availability for Azure virtual machines, which deployment strategy is best?',
        'Deploying two or more virtual machines across different availability zones within the same region offers the highest SLA and availability for Azure virtual machines. This strategy ensures redundancy and fault tolerance in case of failures in one availability zone.', 13, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('444f92d3-8f55-4cd9-bcc7-810ef6d88914', '079d4b78-3bff-462a-ba97-4fd0e3bc5b13', 'Deploying a single virtual machine.', FALSE, 1),
    ('c8d2d5f3-f389-405b-b1fb-50e2bb99f736', '079d4b78-3bff-462a-ba97-4fd0e3bc5b13', 'Deploying two or more virtual machines within an availability set.', FALSE, 2),
    ('e441248e-1dbf-4b7d-86d1-61d695cbd0b2', '079d4b78-3bff-462a-ba97-4fd0e3bc5b13', 'Deploying two or more virtual machines across different availability zones within the same region.', TRUE, 3),
    ('ad58899f-2c67-4cac-aa89-7d41ffa36940', '079d4b78-3bff-462a-ba97-4fd0e3bc5b13', 'Deploying two or more virtual machines within the same data center.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0bb6fe5f-e2b9-4cfe-a2f6-c77a45095c3e', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'MULTIPLE_CHOICE', 'Which of the following methods can you use to deploy resources with the Azure Resource Manager (ARM) deployment model? Select all that apply.',
        'The Azure Portal provides a user-friendly graphical interface for deploying and managing Azure resources using the ARM deployment model. It allows users to visually select and configure resources before deploying them to the Azure environment.', 14, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('21105f63-322e-4470-9ea9-6d628478b78d', '0bb6fe5f-e2b9-4cfe-a2f6-c77a45095c3e', 'Azure Portal', TRUE, 1),
    ('8d9606af-58c7-4c7f-aacd-4a4489e8200f', '0bb6fe5f-e2b9-4cfe-a2f6-c77a45095c3e', 'Powershell', TRUE, 2),
    ('1556e0b9-5cd1-4f3f-824c-aac71d8a545f', '0bb6fe5f-e2b9-4cfe-a2f6-c77a45095c3e', 'REST API / SDK', TRUE, 3),
    ('a214ec50-0a51-4069-bae8-b1ca15795c6b', '0bb6fe5f-e2b9-4cfe-a2f6-c77a45095c3e', 'CLI', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bc7719c1-bed5-4743-89f2-78c0043deb1e', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'In the context of Azure cloud services, which statement best defines ''compute resources''?',
        'Compute resources in Azure refer to resources that perform tasks requiring CPU cycles, such as running applications, processing data, and handling computational workloads. These resources are responsible for executing code and performing calculations in the cloud environment.', 15, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b1861bc7-f41f-4d0a-abca-61037c7bc38b', 'bc7719c1-bed5-4743-89f2-78c0043deb1e', 'They are resources that execute tasks requiring CPU cycles.', TRUE, 1),
    ('bad073b3-51fa-4823-bc20-eda30c6bf83d', 'bc7719c1-bed5-4743-89f2-78c0043deb1e', 'They refer exclusively to Virtual Machines.', FALSE, 2),
    ('919bb613-413a-48a2-bd8f-6b1c25c1a706', 'bc7719c1-bed5-4743-89f2-78c0043deb1e', 'They include all resources listed in the Azure Marketplace.', FALSE, 3),
    ('0c22603b-18ae-4bf4-a3dc-89e0872c344d', 'bc7719c1-bed5-4743-89f2-78c0043deb1e', 'They encompass Virtual Machines, Storage Accounts, and Virtual Networks.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('9b6c11ef-3409-4912-b7bc-6757688d9517', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Under typical/default Azure service limits, what is the maximum number of virtual machines that can be included in a single Azure Virtual Machine Scale Set (VMSS)?',
        'The correct maximum number of virtual machines that can be included in a single Azure Virtual Machine Scale Set (VMSS) under typical/default Azure service limits is 1000. This choice accurately represents the maximum limit for VMSS in Azure.', 16, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d9191c4d-a737-4e59-af76-0a097571cae9', '9b6c11ef-3409-4912-b7bc-6757688d9517', '500', FALSE, 1),
    ('734298d0-f12b-463a-a89e-18e4fb7d4ce6', '9b6c11ef-3409-4912-b7bc-6757688d9517', '1000', TRUE, 2),
    ('4409f1a5-56e2-4ed7-a2c1-e683e98db0ce', '9b6c11ef-3409-4912-b7bc-6757688d9517', '10000', FALSE, 3),
    ('35d4479e-23eb-478a-b82d-a0e10191a7ef', '9b6c11ef-3409-4912-b7bc-6757688d9517', 'Unlimited', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b790f11a-1017-4849-828f-334df75cc743', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'When creating a Site-to-Site VPN between Azure and your on-premises network, what type of device must be present in your on-premises infrastructure to terminate the VPN connection?',
        'A compatible VPN Gateway device is required in your on-premises infrastructure to terminate the Site-to-Site VPN connection between Azure and your network. The VPN Gateway device is responsible for securely handling the VPN connection and facilitating communication between Azure and your on-premises resources.', 17, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('75c9855c-3d09-46a2-9572-62fbaebbe109', 'b790f11a-1017-4849-828f-334df75cc743', 'A dedicated virtual machine', FALSE, 1),
    ('c2f07d5d-e3ea-4139-9015-484e198afea4', 'b790f11a-1017-4849-828f-334df75cc743', 'A compatible VPN Gateway device', TRUE, 2),
    ('79653866-4e43-4f4d-80af-af5799c2971a', 'b790f11a-1017-4849-828f-334df75cc743', 'An Azure Virtual Network', FALSE, 3),
    ('12e04e87-f71f-45d7-9949-6fec3a71beec', 'b790f11a-1017-4849-828f-334df75cc743', 'An Application Gateway', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('b389161f-f11f-4c43-b677-4bd068f1c41b', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which statement best describes the primary benefit of a Content Delivery Network (CDN) in cloud computing?',
        'The primary benefit of a Content Delivery Network (CDN) in cloud computing is to reduce server load by distributing static, unchanging files like images, videos, and PDFs across a network of servers. This helps improve the performance and availability of these files for users.', 18, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('a0f2c79a-2653-4caa-bfb4-fa54ce8fa0d0', 'b389161f-f11f-4c43-b677-4bd068f1c41b', 'It enables temporary session information storage for web visitors, such as their login ID or name.', FALSE, 1),
    ('3d63652a-6cfa-4b91-9bb0-3d88f532f9d2', 'b389161f-f11f-4c43-b677-4bd068f1c41b', 'It mitigates server load for static, unchanging files like images, videos, and PDFs by distributing them across a network of servers.', TRUE, 2),
    ('9f26c210-4f2a-4125-83f3-a2a4012b7a63', 'b389161f-f11f-4c43-b677-4bd068f1c41b', 'It provides fast and inexpensive data retrieval for later use.', FALSE, 3),
    ('9eebcdf1-4c20-4516-a9c5-6377958dffc4', 'b389161f-f11f-4c43-b677-4bd068f1c41b', 'For a nominal fee, Azure will manage your virtual machine, perform OS updates, and ensure optimal performance.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('634504ba-ddee-4c62-8f55-ef6ca762b7fc', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Azure service provides a managed Apache Hadoop-based platform for big data analytics?',
        'HDInsight is the correct choice as it is the Azure service that provides a managed Apache Hadoop-based platform for big data analytics. It allows users to easily deploy and manage Hadoop clusters in the cloud, making it a suitable choice for big data processing tasks.', 19, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('9dd3453e-b4ea-4d83-8400-3ff03fa876dc', '634504ba-ddee-4c62-8f55-ef6ca762b7fc', 'HDInsight', TRUE, 1),
    ('48d22ead-85d7-4608-ba73-1155b909da3f', '634504ba-ddee-4c62-8f55-ef6ca762b7fc', 'Azure Hadoop Services', FALSE, 2),
    ('46e8f1c8-dd6a-41d5-ad0f-6bb66c384591', '634504ba-ddee-4c62-8f55-ef6ca762b7fc', 'Azure Kubernetes Services', FALSE, 3),
    ('46c29d22-4a7e-44cd-bce1-ac1c3de78521', '634504ba-ddee-4c62-8f55-ef6ca762b7fc', 'Azure Data Factory', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f41460f7-3c22-413e-996e-5ad1e6030841', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Azure Logic Apps and Azure Functions are examples of which compute model in Azure?',
        'Azure Logic Apps and Azure Functions are both examples of the Serverless compute model in Azure. In this model, developers can focus on writing code or workflows without worrying about managing servers or infrastructure. The services automatically scale based on demand and only charge for actual usage.', 20, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('263f3eda-db03-442f-bcc8-4ca3dd4c351d', 'f41460f7-3c22-413e-996e-5ad1e6030841', 'App Services Model', FALSE, 1),
    ('a6c7f7f7-c0f7-4338-9b5b-75a572cc217a', 'f41460f7-3c22-413e-996e-5ad1e6030841', 'IaaS model', FALSE, 2),
    ('6446f50f-5205-40a0-b0da-524d9cd6be51', 'f41460f7-3c22-413e-996e-5ad1e6030841', 'Serverless model', TRUE, 3),
    ('6ce57d46-568f-4015-abd0-b31db1b6c696', 'f41460f7-3c22-413e-996e-5ad1e6030841', 'SaaS model', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a0ac55db-4e18-470b-89c2-7443ee93bae1', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which of the following is something that Azure AI Services can currently do?',
        'Azure AI Services encompass a wide range of capabilities, including text recognition, translation, speech synthesis, and audio-to-text conversion. Therefore, Azure can perform all of the mentioned tasks and more, making it a comprehensive platform for AI-driven solutions.', 21, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('0dfbf197-8109-4ff2-a9fb-b7ca0643f287', 'a0ac55db-4e18-470b-89c2-7443ee93bae1', 'Recognize text in an image', FALSE, 1),
    ('8db62194-8541-4985-8e2c-57f087e295c3', 'a0ac55db-4e18-470b-89c2-7443ee93bae1', 'Translate text from one language to another', FALSE, 2),
    ('5e721075-1ffa-4b0f-9842-c4eae70b841d', 'a0ac55db-4e18-470b-89c2-7443ee93bae1', 'Speak text in an extremely realistic way', FALSE, 3),
    ('3e847ba8-d170-4eb9-a3b6-0fb38dfe5d3e', 'a0ac55db-4e18-470b-89c2-7443ee93bae1', 'Create text from audio', FALSE, 4),
    ('5e340f94-79d8-4b2c-a42c-c96b9c9b2fa4', 'a0ac55db-4e18-470b-89c2-7443ee93bae1', 'All of these! Azure can do it all!', TRUE, 5);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e2850f4b-88ca-4fc2-b6c8-f0d4504a3092', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Azure service provides a fully managed, hosted relational SQL database (Platform as a Service)?',
        'Azure SQL Database is a fully managed, hosted relational SQL database service in Azure that provides Platform as a Service (PaaS). It eliminates the need for managing infrastructure, patching, and backups, allowing users to focus on developing applications and managing data.', 22, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c5048fbe-6111-4a0d-9105-aa46cbfadb43', 'e2850f4b-88ca-4fc2-b6c8-f0d4504a3092', 'SQL Server in a VM', FALSE, 1),
    ('692e8299-decb-40b8-ac42-3125e103c69c', 'e2850f4b-88ca-4fc2-b6c8-f0d4504a3092', 'Azure SQL Database', TRUE, 2),
    ('61b1f1f4-9834-458a-8210-6a7936eb689c', 'e2850f4b-88ca-4fc2-b6c8-f0d4504a3092', 'Cosmos DB', FALSE, 3),
    ('0819f1c7-c77b-4305-a78c-bfe5853d4254', 'e2850f4b-88ca-4fc2-b6c8-f0d4504a3092', 'Table Storage', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('2731706c-2199-4965-afa2-a7df378d32e5', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'An administrator prefers to manage Azure resources through a web-based graphical interface rather than using command-line tools. Which tool should they use?',
        'Azure Portal is a web-based graphical interface that allows administrators to manage Azure resources through a user-friendly dashboard. It provides a visual representation of resources and allows for easy navigation and management of Azure services, making it the ideal tool for administrators who prefer a graphical interface.', 23, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('6bb536c5-8fd9-4f41-85ce-72bfd3cf35d1', '2731706c-2199-4965-afa2-a7df378d32e5', 'Azure PowerShell', FALSE, 1),
    ('9ce26518-76c4-475e-b3bd-d341c9262047', '2731706c-2199-4965-afa2-a7df378d32e5', 'Azure Command-Line Interface (CLI)', FALSE, 2),
    ('9c57661e-e95c-4114-98c7-94360eb644bd', '2731706c-2199-4965-afa2-a7df378d32e5', 'Azure Portal', TRUE, 3),
    ('11ea61be-cfba-492a-a6b5-1f6f3e1ff348', '2731706c-2199-4965-afa2-a7df378d32e5', 'Azure Cloud Shell', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('7e1f4097-0e32-4c33-96aa-3a10cb2daa27', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Can you grant someone access to your Azure subscription without sharing your username and password (for example, by assigning them a role through Azure Active Directory/role-based access control)?',
        'YES, you can grant someone access to your Azure subscription without sharing your username and password by assigning them a role through Azure Active Directory/role-based access control. This method allows you to define fine-grained access permissions for users, groups, or applications, without the need to share sensitive login credentials.', 24, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b179988f-440c-4950-a496-8176865d2a87', '7e1f4097-0e32-4c33-96aa-3a10cb2daa27', 'YES', TRUE, 1),
    ('8a7630bb-ff4a-4419-8b4f-473ab84ff0ce', '7e1f4097-0e32-4c33-96aa-3a10cb2daa27', 'NO', FALSE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e3bad685-b83a-4791-a683-2d2bd8e7e0e5', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Azure service provides personalized recommendations to help you reduce costs on your subscription?',
        'Azure Advisor is the correct choice as it provides personalized recommendations to help you optimize your Azure resources and reduce costs. It analyzes your usage and configuration data to offer suggestions on cost savings, performance improvements, security enhancements, and more.', 25, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('977f7917-8a5f-49f8-88e3-6decaf83dc8e', 'e3bad685-b83a-4791-a683-2d2bd8e7e0e5', 'Azure Dashboard', FALSE, 1),
    ('8def843d-1cdd-4128-a7a9-e7051c8b872f', 'e3bad685-b83a-4791-a683-2d2bd8e7e0e5', 'Microsoft Defender for Cloud', FALSE, 2),
    ('28940322-f6cb-43a2-a95f-b40f2d021062', 'e3bad685-b83a-4791-a683-2d2bd8e7e0e5', 'Azure Advisor', TRUE, 3),
    ('964f5074-2088-4645-a5d5-d28298fdf15d', 'e3bad685-b83a-4791-a683-2d2bd8e7e0e5', 'Azure Service Health', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('a4e7bfca-2e42-45e0-b12c-206628ba7fd7', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Azure feature provides a basic, per-subnet method to protect an Azure Virtual Network subnet by controlling inbound and outbound network traffic?',
        'Network Security Group (NSG) is the Azure feature that provides a basic, per-subnet method to control inbound and outbound network traffic. NSGs contain security rules that allow or deny traffic based on source and destination IP address, port, and protocol. It is specifically designed for subnet-level network traffic control within a Virtual Network.', 26, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c8e26528-5ab8-4a72-9e43-b06b21699127', 'a4e7bfca-2e42-45e0-b12c-206628ba7fd7', 'Azure Firewall', FALSE, 1),
    ('54c09cac-3607-484e-a693-5dce4786764e', 'a4e7bfca-2e42-45e0-b12c-206628ba7fd7', 'Application Gateway with WAF', FALSE, 2),
    ('5f7912b4-67d1-472a-bed3-d723bacf90f2', 'a4e7bfca-2e42-45e0-b12c-206628ba7fd7', 'Azure DDos Standard protection', FALSE, 3),
    ('4582ef81-a853-491e-b7c0-a8f0cdf36cda', 'a4e7bfca-2e42-45e0-b12c-206628ba7fd7', 'Network Security Group', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('742a37f7-ef48-4cee-b358-ee4c054d94cd', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which of the following best describes a Distributed Denial of Service (DDoS) attack?',
        'A Distributed Denial of Service (DDoS) attack overwhelms a network or server with a flood of traffic from multiple sources, making it unable to respond to legitimate user requests. This results in a service outage for the intended users, causing disruption and potential downtime.', 27, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('eaa8180e-d8b7-4187-923f-79e39f56b19d', '742a37f7-ef48-4cee-b358-ee4c054d94cd', 'A denial of service attack that sends so much traffic to a network that it cannot respond fast enough; legitimate users become unable to use the service', TRUE, 1),
    ('bc88a85d-9b1e-4a86-aea1-a0f1ff39b804', '742a37f7-ef48-4cee-b358-ee4c054d94cd', 'An attempt to send SQL commands to the server in a way that it will execute them against the database', FALSE, 2),
    ('6c22142c-dd3a-4b2d-9355-1e3788c099ad', '742a37f7-ef48-4cee-b358-ee4c054d94cd', 'An attempt to read the contents of a web page from another website, thereby stealing the user''s private information', FALSE, 3),
    ('5d1871f5-1b75-4cee-89a1-cacb70bb3cb5', '742a37f7-ef48-4cee-b358-ee4c054d94cd', 'An attempt to guess a user''s password through brute force methods', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('cb43af26-e940-49a0-98de-da86ed4d33fc', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'You subscribe to Azure DDoS Protection at the IP protection tier (DDoS Protection Standard), which provides advanced protection for public IPs. Which type of DDoS attack is NOT mitigated by this service?',
        'Application (L7) level attacks, which target the application layer of the network stack, are not mitigated by Azure DDoS Protection at the IP protection tier (DDoS Protection Standard). These attacks focus on exploiting vulnerabilities in the application itself, rather than the network infrastructure.', 28, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('c87007a9-3fcc-464e-a26d-185ba107e1a7', 'cb43af26-e940-49a0-98de-da86ed4d33fc', 'Network (L3) level attacks', FALSE, 1),
    ('b43219aa-5d88-49f9-9ea7-21068e5f77b9', 'cb43af26-e940-49a0-98de-da86ed4d33fc', 'Application (L7) level attacks', TRUE, 2),
    ('8bf3153c-b1c9-4df7-a405-ccd5d181982a', 'cb43af26-e940-49a0-98de-da86ed4d33fc', 'Transport (L4) level attacks', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('611db0a5-9667-49af-aaec-245c501e3684', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Microsoft Entra ID feature provides an additional sign-in factor - often using a mobile phone (for example, the Microsoft Authenticator app) - to verify a user''s identity when they sign in?',
        'Multi-Factor Authentication (MFA) is a feature that adds an extra layer of security to user sign-ins by requiring users to provide multiple forms of verification. This can include something the user knows (password), something they have (mobile phone), or something they are (biometric data). The Microsoft Authenticator app is often used as a second factor in MFA to verify a user''s identity during sign-in.', 29, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('1a8c76d5-c92e-49b6-9f97-943ecf4b144d', '611db0a5-9667-49af-aaec-245c501e3684', 'Microsoft Defender for Cloud', FALSE, 1),
    ('d3db7824-7277-4910-bd38-b86c1b36e2a5', '611db0a5-9667-49af-aaec-245c501e3684', 'Azure Information Protection (AIP)', FALSE, 2),
    ('0aed1ba8-57c5-4494-a6bc-c0f93a83fd6c', '611db0a5-9667-49af-aaec-245c501e3684', 'Advanced Threat Protection (ATP)', FALSE, 3),
    ('26d449e0-fd2f-48f2-84b4-2c6583b75b48', '611db0a5-9667-49af-aaec-245c501e3684', 'Multi-Factor Authentication', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('3840cbdb-8cd6-4c35-984e-7fe7a3ce6080', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Azure service is the primary identity and authentication platform?',
        'Microsoft Azure Active Directory (formerly Azure Active Directory) is the primary identity and authentication platform in Azure. It provides centralized identity management, single sign-on, and multi-factor authentication capabilities for Azure services and applications.', 30, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('519cf480-5d36-47e3-9e60-b29283c18fd5', '3840cbdb-8cd6-4c35-984e-7fe7a3ce6080', 'Microsoft Entra ID (formerly Azure Active Directory)', TRUE, 1),
    ('0f265064-7261-4f5c-8302-80f503fd4bed', '3840cbdb-8cd6-4c35-984e-7fe7a3ce6080', 'Facebook Connect', FALSE, 2),
    ('c3612fc1-caa3-45ba-9f44-01562c404d43', '3840cbdb-8cd6-4c35-984e-7fe7a3ce6080', 'Live Connect', FALSE, 3),
    ('bdff32b4-6c96-4dff-a9a3-5a01dbb37408', '3840cbdb-8cd6-4c35-984e-7fe7a3ce6080', 'Network Security Group', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4c55cc28-d551-45d1-a023-5011737c0077', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Your company wants employees to sign in once and then access multiple Microsoft 365 and Azure applications without re-entering their credentials. Which Azure feature should the company implement?',
        'Microsoft Entra ID Single Sign-On (SSO) is the correct choice for enabling employees to sign in once and access multiple Microsoft 365 and Azure applications without the need to re-enter their credentials. It provides a seamless and secure authentication experience across various applications.', 31, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('82d1ce88-0d02-4b93-9ba0-54aafe0579bd', '4c55cc28-d551-45d1-a023-5011737c0077', 'Azure Key Vault', FALSE, 1),
    ('eda93a0f-6375-4e6c-978f-4e15d0fa9ef2', '4c55cc28-d551-45d1-a023-5011737c0077', 'Microsoft Entra ID Single Sign-On (SSO)', TRUE, 2),
    ('e90a8ce8-b79a-4cbe-86f0-881adc8445f6', '4c55cc28-d551-45d1-a023-5011737c0077', 'Azure Policy', FALSE, 3),
    ('6d417c92-ee48-432c-b363-18d63e75ef22', '4c55cc28-d551-45d1-a023-5011737c0077', 'Microsoft Defender for Cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('e97c650c-a16f-46e3-967f-aa6ed7ea7a11', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'In the Azure shared responsibility model, who is responsible for securing the access keys (account keys) for your Azure Storage account?',
        'As a user, you are responsible for securing the access keys (account keys) for your Azure Storage account in the shared responsibility model. It is crucial to protect these keys to maintain the security of your storage resources and prevent unauthorized access.', 32, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('2133c135-5caf-44c3-89de-e8b013b07dad', 'e97c650c-a16f-46e3-967f-aa6ed7ea7a11', 'Azure is responsible for securing the access keys', FALSE, 1),
    ('ac8cacef-6849-4994-a4b4-718104db83a5', 'e97c650c-a16f-46e3-967f-aa6ed7ea7a11', 'I am responsible for securing the access keys', TRUE, 2);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('d667c23a-68b9-439a-8e31-3b8bb6f56e94', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Your company stores data in Azure Blob Storage and wants to ensure that this data is automatically encrypted when saved and decrypted only when accessed by authorized users. Which Azure feature provides this capability by default?',
        'Azure Storage Service Encryption (SSE) is a feature that automatically encrypts data at rest in Azure Blob Storage. It ensures that data is encrypted when saved and decrypted only when accessed by authorized users, making it the correct choice for the scenario described in the question.', 33, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('60d9762a-8733-49eb-9cca-bc7f1c1b6ba0', 'd667c23a-68b9-439a-8e31-3b8bb6f56e94', 'Azure Key Vault', FALSE, 1),
    ('d429bbce-a13f-4b31-bed9-489ce84658ab', 'd667c23a-68b9-439a-8e31-3b8bb6f56e94', 'Azure Disk Encryption', FALSE, 2),
    ('41e21df7-50d4-404c-a0d3-eae2616a7c59', 'd667c23a-68b9-439a-8e31-3b8bb6f56e94', 'Azure Storage Service Encryption (SSE)', TRUE, 3),
    ('8f1f0aa8-3cbf-4fc4-861b-6b7467eacf85', 'd667c23a-68b9-439a-8e31-3b8bb6f56e94', 'Azure Information Protection', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('f859962e-0ce2-4ec0-ae97-3af95b372155', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Azure service provides a centralized security dashboard that consolidates cloud security posture, recommendations, and threat protection for Azure resources?',
        'Microsoft Defender for Cloud is a centralized security solution that provides a dashboard for consolidating cloud security posture, recommendations, and threat protection for Azure resources. It helps organizations to identify and remediate security vulnerabilities, protect against threats, and ensure compliance with security best practices.', 34, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ce451b06-adb7-4d81-bbf2-31ecbb37b1a1', 'f859962e-0ce2-4ec0-ae97-3af95b372155', 'Azure Monitor', FALSE, 1),
    ('d88e7fe3-a4d6-4728-a9c4-ea0c2fcbbc09', 'f859962e-0ce2-4ec0-ae97-3af95b372155', 'Azure Portal Dashboard', FALSE, 2),
    ('577d1940-34c9-4f6e-b11c-9b413ff20ea8', 'f859962e-0ce2-4ec0-ae97-3af95b372155', 'Microsoft Defender for Cloud', TRUE, 3),
    ('9ac0e520-7383-4539-8456-1acda1b90a18', 'f859962e-0ce2-4ec0-ae97-3af95b372155', 'Azure Key Vault', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('df200639-e096-4150-9e75-16a5649d98f5', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Your organization has an Azure Policy that restricts which virtual machine SKUs/sizes can be deployed. Which of the following actions would allow you to create a VM that the policy currently blocks?',
        'Removing the Azure Policy temporarily to create the VM and then reapplying it is the most direct way to bypass the policy restrictions. This approach allows for the creation of the VM that is currently blocked by the policy while ensuring that the policy is still enforced once the VM is deployed.', 35, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ca4806f2-6127-41eb-99b9-4bca21945153', 'df200639-e096-4150-9e75-16a5649d98f5', 'Subscription Owners (Administrators) can create resources regardless of what the policy restricts', FALSE, 1),
    ('e7261b1a-c9e5-4660-a892-7b6c021bf746', 'df200639-e096-4150-9e75-16a5649d98f5', 'The only way is to remove the policy, create the resource and add the policy back', TRUE, 2),
    ('d463e3fa-4f5e-41fe-80c2-02f85357f66e', 'df200639-e096-4150-9e75-16a5649d98f5', 'Use an account that has Contributor or above permissions to the resource group', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('19795e63-0f31-4b5e-a2b7-2ec1c06d868b', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Your organization has specific compliance requirements that are not covered by Azure’s built-in policy definitions. What should you do to enforce your organization’s own rules?',
        'Creating and assigning a custom policy definition in Azure Policy allows you to define and enforce your organization''s own rules and compliance requirements. This option gives you the flexibility to tailor policies to meet your specific needs and ensure that resources adhere to your organization''s standards.', 36, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('317088c3-92e5-43e1-8254-cf91ee12cdaa', '19795e63-0f31-4b5e-a2b7-2ec1c06d868b', 'Open a Microsoft support request to add a new built-in policy.', FALSE, 1),
    ('dba43bec-7686-456a-aa8a-a4a34c0262be', '19795e63-0f31-4b5e-a2b7-2ec1c06d868b', 'Use Azure Resource Locks to prevent changes that violate your rules.', FALSE, 2),
    ('778d4aeb-7c8e-47a1-921d-110ca8193094', '19795e63-0f31-4b5e-a2b7-2ec1c06d868b', 'Create and assign a custom policy definition in Azure Policy.', TRUE, 3),
    ('dc0ad263-5efa-4a94-a511-d134264528cb', '19795e63-0f31-4b5e-a2b7-2ec1c06d868b', 'Deploy resources only in regions with default compliance controls.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('061830a7-cf39-49f4-b1c2-99f512466662', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Azure service centralizes telemetry and log data from multiple resources so you can run queries, visualize results, and create alerts on events?',
        'Azure Monitor is the correct choice as it is specifically designed to centralize telemetry and log data from various Azure resources. It enables users to run queries, visualize results, and create alerts on events, making it a comprehensive monitoring and management solution for Azure environments.', 37, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('131d7097-f80d-4eb1-9768-8fab0c4aa5ca', '061830a7-cf39-49f4-b1c2-99f512466662', 'Azure Portal Dashboard', FALSE, 1),
    ('e8f40c51-f836-432a-adde-6e67fb06eedc', '061830a7-cf39-49f4-b1c2-99f512466662', 'Storage Account or Event Hub', FALSE, 2),
    ('ad7ff622-5abf-4d8e-b431-13cdc97205c1', '061830a7-cf39-49f4-b1c2-99f512466662', 'Azure Monitor', TRUE, 3),
    ('bca172ad-0fcb-4434-849f-09428dd235d9', '061830a7-cf39-49f4-b1c2-99f512466662', 'Microsoft Defender for Cloud', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('81049f32-0363-4e62-8e49-ea11fed392d6', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which type of container does Azure Monitor use to collect and store log (telemetry) data from multiple Azure resources?',
        'Log Analytics Workspace is the correct type of container used by Azure Monitor to collect and store log (telemetry) data from multiple Azure resources. It provides a centralized location for storing and analyzing log data, making it easier to monitor and troubleshoot Azure resources.', 38, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('daeb4ae3-107a-4cba-9b00-f16703fe26c5', '81049f32-0363-4e62-8e49-ea11fed392d6', 'Managed Storage', FALSE, 1),
    ('505d4b1a-0b35-4a90-9822-c976c75c8970', '81049f32-0363-4e62-8e49-ea11fed392d6', 'Log Analytics Workspace', TRUE, 2),
    ('23c029f3-ac56-4d49-a909-55c6721b070c', '81049f32-0363-4e62-8e49-ea11fed392d6', 'Append Blob Storage', FALSE, 3),
    ('effe622d-f42a-4772-bd12-4f2a076e760d', '81049f32-0363-4e62-8e49-ea11fed392d6', 'Azure Monitor account', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('02a36e9e-c898-423d-aee8-13f8453ef04b', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Microsoft tool helps you assess and track your organization''s compliance with international standards and government regulations (for example, GDPR or ISO/IEC 27001)?',
        'Purview Compliance Manager is the correct choice as it is a tool that helps organizations assess and track their compliance with international standards and government regulations such as GDPR or ISO/IEC 27001. It provides insights, recommendations, and actions to help organizations meet their compliance requirements.', 39, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('29f0fe51-8018-4f33-8b3e-97f4ef7ea5fb', '02a36e9e-c898-423d-aee8-13f8453ef04b', 'Azure Government Services', FALSE, 1),
    ('77609d99-3e82-4b45-be81-6a362c69f5d0', '02a36e9e-c898-423d-aee8-13f8453ef04b', 'Purview Compliance Manager', TRUE, 2),
    ('a355d692-7b51-4374-b3ed-7f101af402c5', '02a36e9e-c898-423d-aee8-13f8453ef04b', 'Microsoft Privacy Statement', FALSE, 3),
    ('0d6f24dd-1bee-4be1-bfb5-c944cbd3d08c', '02a36e9e-c898-423d-aee8-13f8453ef04b', 'Service Trust Portal', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('706f8165-f36f-4175-8d0d-3e3f8175358e', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Your company uses Microsoft Entra ID (tenant) to manage access to Azure resources. The IT department wants to separate billing, permissions, and resource limits for different business units within the same organization. What should they do?',
        'Creating multiple subscriptions under the same tenant allows for separating billing, permissions, and resource limits for different business units while still maintaining a centralized management structure. This approach provides flexibility in managing resources and access control within the organization.', 40, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('21887073-df7e-4e9a-9c1a-5feaee7c5cd5', '706f8165-f36f-4175-8d0d-3e3f8175358e', 'Create separate Azure tenants for each business unit.', FALSE, 1),
    ('2929ab34-1b2a-4949-a201-35fd44a6a52f', '706f8165-f36f-4175-8d0d-3e3f8175358e', 'Create multiple subscriptions under the same tenant.', TRUE, 2),
    ('d617de84-2bfe-4f4c-9688-45d0aeaee769', '706f8165-f36f-4175-8d0d-3e3f8175358e', 'Create multiple management groups under one subscription.', FALSE, 3),
    ('ce4ebb3b-a05e-4046-8016-f987bed7ac23', '706f8165-f36f-4175-8d0d-3e3f8175358e', 'Use Azure Resource Groups to isolate billing and limits.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('54b51411-92b3-4c8c-a64d-4a98a85b1d22', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'When you sign up for a new Azure Free account, how much initial credit (USD) does Microsoft provide for use during the trial period?',
        'The correct initial credit amount provided by Microsoft when you sign up for a new Azure Free account is US$200. This amount can be used towards Azure services during the trial period.', 41, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('edd7f307-d001-47e1-812b-aecd2290620a', '54b51411-92b3-4c8c-a64d-4a98a85b1d22', 'You are given $50 per month, for one year towards Azure services', FALSE, 1),
    ('51ca1fc7-a3f8-4f3d-8a91-73625a0a6eae', '54b51411-92b3-4c8c-a64d-4a98a85b1d22', 'Azure does not give you any free credits when you create a free account', FALSE, 2),
    ('79e96d1d-2e35-4557-b588-606d9c2c6912', '54b51411-92b3-4c8c-a64d-4a98a85b1d22', 'The default is US$200', TRUE, 3),
    ('32cc556f-c082-4f0d-8129-f3bf936ad15a', '54b51411-92b3-4c8c-a64d-4a98a85b1d22', 'You can create 1 Linux VM, 1 Windows VM, and a number of other free services for the first year.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('0e3998f0-9dc5-41f3-a066-d2f5902b2785', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Azure website tool lets you estimate future costs by adding Azure products and services to a shopping cart and calculating the pricing?',
        'The Azure Pricing Calculator is the correct choice as it allows users to estimate future costs by selecting Azure products and services, adding them to a virtual shopping cart, and calculating the pricing based on usage and configurations. This tool helps users plan and budget for their Azure resources effectively.', 42, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('fc899734-a348-4c0a-bcb3-52308e78a759', '0e3998f0-9dc5-41f3-a066-d2f5902b2785', 'Azure Pricing Calculator', TRUE, 1),
    ('b25e83d6-6efa-44d5-ac0d-c21bd727e048', '0e3998f0-9dc5-41f3-a066-d2f5902b2785', 'Microsoft Docs', FALSE, 2),
    ('bbe97da4-d758-44ad-9779-d48439990feb', '0e3998f0-9dc5-41f3-a066-d2f5902b2785', 'Azure Advisor', FALSE, 3);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('36aa5e2b-b7d3-4d76-a132-15801fc8f872', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Azure service should an IT administrator use to enforce multi-factor authentication (MFA) and control access to an application?',
        'Microsoft Entra ID is the correct choice for enforcing multi-factor authentication (MFA) and controlling access to an application. Microsoft Entra ID is a service that provides secure authentication solutions, including MFA, to help protect user identities and control access to applications and resources.', 43, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('607b42b6-d79c-42c3-9fd3-cc1b1c377e03', '36aa5e2b-b7d3-4d76-a132-15801fc8f872', 'Azure Authentication', FALSE, 1),
    ('75924c0c-7452-42fd-8242-9318d24e275b', '36aa5e2b-b7d3-4d76-a132-15801fc8f872', 'Azure Authorization', FALSE, 2),
    ('7122776a-a1a0-49f0-b9ff-8c42e3db6eb8', '36aa5e2b-b7d3-4d76-a132-15801fc8f872', 'Microsoft Entra ID', TRUE, 3),
    ('68160ca5-57ee-4340-9252-7491ff56be31', '36aa5e2b-b7d3-4d76-a132-15801fc8f872', 'Azure Function', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('c8abb603-436a-41cb-a0e6-19893c85ac18', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which of the following is a characteristic of the Azure Blob Storage cool access tier?',
        'The cool access tier is much cheaper to store your files compared to the hot access tier. It is designed for data that is accessed less frequently and offers cost savings for storing large amounts of data.', 44, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('d248a4a3-9588-4b80-afef-f63124ca3fe1', 'c8abb603-436a-41cb-a0e6-19893c85ac18', 'Significant delays in accessing your data, up to several hours', FALSE, 1),
    ('b3bb0e65-ffc0-494b-9edf-003c1648802f', 'c8abb603-436a-41cb-a0e6-19893c85ac18', 'Cheapest option when it comes to bandwidth costs to access your files', FALSE, 2),
    ('d50df996-8930-42ed-ad5e-81bf9257bd35', 'c8abb603-436a-41cb-a0e6-19893c85ac18', 'Most expensive option when it comes to bandwidth cost to access your files', FALSE, 3),
    ('905e483f-5b3b-4d52-b9eb-743b46bc0b00', 'c8abb603-436a-41cb-a0e6-19893c85ac18', 'Much cheaper to store your files than the hot access tier', TRUE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('711cfe72-a653-43a8-afc0-004bcdd971a0', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which of the following Azure actions is most likely to produce the most immediate reduction in your Azure costs?',
        'Using Azure Reserved Instances for most of your virtual machines can lead to an immediate reduction in costs. Reserved Instances offer significant discounts compared to pay-as-you-go pricing, so utilizing them for your VMs can result in immediate cost savings.', 45, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b35354a7-6010-4c67-9805-677a3a0aa54e', '711cfe72-a653-43a8-afc0-004bcdd971a0', 'Changing your storage accounts from globally redundant (GRS) to locally redundant (LRS)', FALSE, 1),
    ('ebb96719-b72e-40cc-9e10-eb451c0123c0', '711cfe72-a653-43a8-afc0-004bcdd971a0', 'Using Azure Reserved Instances for most of your virtual machines', TRUE, 2),
    ('00d60a42-c627-478d-a485-7c2c68987bd6', '711cfe72-a653-43a8-afc0-004bcdd971a0', 'Auto shutdown of development and QA servers over night and on weekends', FALSE, 3),
    ('dd66ad15-680b-4180-a6e1-f9c55aa16597', '711cfe72-a653-43a8-afc0-004bcdd971a0', 'Using Azure Policy to restrict the use of expensive VM SKUs', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('94bd29dd-0ba5-4fa4-bfe8-e7f48344bbda', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which three stages are commonly used in the Azure service lifecycle?',
        'Private Preview, Public Preview, and General Availability are the three common stages in the Azure service lifecycle. Private Preview allows a limited set of customers to test the service, Public Preview opens it up to a broader audience for feedback, and General Availability is when the service is officially released for all customers.', 46, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('116222bf-132b-4c3c-ac4f-57aca89bf3fc', '94bd29dd-0ba5-4fa4-bfe8-e7f48344bbda', 'Private Preview, Public Preview, and General Availability', TRUE, 1),
    ('21decee5-87a1-46ef-b7d5-a7300f8497ff', '94bd29dd-0ba5-4fa4-bfe8-e7f48344bbda', 'Development phase, QA phase, and Live phase', FALSE, 2),
    ('531ac2e0-1213-4f2c-889d-7b9677ad66b4', '94bd29dd-0ba5-4fa4-bfe8-e7f48344bbda', 'Announced, Coming Soon, and Live', FALSE, 3),
    ('66774596-484c-4aac-8157-249a8e6d27f9', '94bd29dd-0ba5-4fa4-bfe8-e7f48344bbda', 'Preview Phase, General Availability Phase, and Unpublished', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('4b55142c-e84d-4e69-8147-d41455b9092e', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'You discover an Azure service labeled ''private preview''. Which of the following statements about services in private preview is true?',
        'This statement is correct. Access to services in private preview mode is restricted and typically requires approval from Microsoft or an invitation. This is to control access to the service and gather feedback from a select group of users before making it generally available.', 47, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('f5ba49b7-f4a8-4d9a-884f-e805aae2c897', '4b55142c-e84d-4e69-8147-d41455b9092e', 'Services in private preview mode are generally available (GA) and can be used in production environments.', FALSE, 1),
    ('e33fcd4d-64d0-40b0-a5df-8aba18986270', '4b55142c-e84d-4e69-8147-d41455b9092e', 'Access to services in private preview mode is limited and usually requires approval from Microsoft or an invitation.', TRUE, 2),
    ('2767f111-7476-4238-94ed-d3175db0ad68', '4b55142c-e84d-4e69-8147-d41455b9092e', 'Services in private preview mode have the same level of support and SLA guarantees as generally available services.', FALSE, 3),
    ('f97ce695-e4ce-40a5-bc38-3f8ea512b382', '4b55142c-e84d-4e69-8147-d41455b9092e', 'All Azure customers automatically have access to services in private preview mode.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('92a560f5-065d-4a59-9fa3-ad5b472cdf22', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'You plan to deploy a critical application on Azure and must design for high availability and reliability. Which of the following statements about Azure Service Level Agreements (SLAs) is correct and should be considered when designing your solution?',
        'This statement is correct. Azure SLAs are specific to each service and can include guarantees for uptime, performance, and connectivity. It is essential to review the SLA for each service you plan to use to ensure it meets your availability and reliability requirements.', 48, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('b8ca7564-783e-4194-87b5-72802a09ff4f', '92a560f5-065d-4a59-9fa3-ad5b472cdf22', 'Azure provides a 100% SLA for all services.', FALSE, 1),
    ('ca9c9e78-b5b5-4be1-9b7f-4c819df07695', '92a560f5-065d-4a59-9fa3-ad5b472cdf22', 'The SLA guarantees that the service will be available 99.9% of the time for all Azure services.', FALSE, 2),
    ('62e9c777-2ab1-44a2-b7fe-0c8b4a0e5bb4', '92a560f5-065d-4a59-9fa3-ad5b472cdf22', 'SLAs vary by service and can include guarantees for uptime, performance, and connectivity.', TRUE, 3),
    ('f93f2a4b-69a1-4893-b992-e6bf9d8b3def', '92a560f5-065d-4a59-9fa3-ad5b472cdf22', 'You do not need to consider SLAs when designing your solution, as Azure automatically ensures the highest availability.', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('bc5e198c-6a7f-46ee-b2cf-9fcc6bfc27ad', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which Microsoft service provides ''Pipelines'' to automate building, running tests, and deploying code from a repository to Azure?',
        'Azure DevOps is a Microsoft service that provides ''Pipelines'' as part of its suite of tools for automating the software delivery process. With Azure DevOps Pipelines, users can automate building, testing, and deploying code from a repository to Azure, making it the correct choice for this scenario.', 49, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('ec7ab7e6-aa45-46ec-aec7-e382b7059c83', 'bc5e198c-6a7f-46ee-b2cf-9fcc6bfc27ad', 'GitHub', FALSE, 1),
    ('cbc6dbd3-100f-4405-8f43-821b9aa8a1aa', 'bc5e198c-6a7f-46ee-b2cf-9fcc6bfc27ad', 'Azure DevOps', TRUE, 2),
    ('608cb3b7-a663-49c5-af06-28907fa5729d', 'bc5e198c-6a7f-46ee-b2cf-9fcc6bfc27ad', 'Azure Monitor', FALSE, 3),
    ('fe380dea-c19d-4752-a289-d121b4583825', 'bc5e198c-6a7f-46ee-b2cf-9fcc6bfc27ad', 'Virtual Machines', FALSE, 4);

INSERT INTO question (id, module_id, type, statement, explanation, position, active)
VALUES ('47a09d09-c27f-40b5-a652-0fdf72052340', 'fce0c77b-5e44-4cf0-bacd-bd1023d6ba87', 'SINGLE_CHOICE', 'Which of the following is the primary graphical user interface for managing Azure resources? ✅',
        'Azure Portal is the primary graphical user interface for managing Azure resources. It provides a user-friendly and interactive interface for users to easily navigate, monitor, and manage their Azure services and resources. Users can perform various tasks such as creating virtual machines, configuring storage, monitoring performance, and managing access controls through the Azure Portal.', 50, TRUE);
INSERT INTO answer_option (id, question_id, label, is_correct, position)
VALUES
    ('838f537c-92ef-48f7-b39c-b33bb8315f68', '47a09d09-c27f-40b5-a652-0fdf72052340', 'Azure Portal', TRUE, 1),
    ('588568ab-a87e-4d02-b1aa-bdddefb1ab30', '47a09d09-c27f-40b5-a652-0fdf72052340', 'PowerShell', FALSE, 2),
    ('22bea505-89b3-46b7-b46a-cb865a3b377b', '47a09d09-c27f-40b5-a652-0fdf72052340', 'Azure Storage Explorer', FALSE, 3),
    ('09154634-057d-4566-9e9c-900f96d2d92f', '47a09d09-c27f-40b5-a652-0fdf72052340', 'Remote Desktop Protocol (RDP)', FALSE, 4);
