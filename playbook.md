# SEIR Foundations

## Systems Engineering, Infrastructure, and Reliability Foundations

### Academic Curriculum Overview

---

## 1. Program Overview

**SEIR Foundations** is an applied computing curriculum designed to introduce students to modern systems engineering, cloud infrastructure, software platforms, automation, observability, and artificial intelligence through a progressive engineering framework.

Rather than organizing instruction exclusively around individual technologies or vendor services, SEIR Foundations uses an **Engineering Systems Thinking** methodology.

Students learn to understand technology as interconnected systems composed of:

* Compute
* Networking
* Operating systems
* Applications
* APIs
* Data
* Observability
* Automation
* Security controls
* Artificial intelligence
* Human engineering workflows

Cloud services are therefore taught as implementations of broader engineering concepts rather than isolated products.

The curriculum uses Amazon Web Services (AWS), Linux, Python, containers, APIs, and generative AI as practical environments in which students develop these skills.

The central instructional principle is:

> **Students should learn how systems work, how systems interact, how systems fail, and how engineers investigate, modify, automate, and improve them.**

---

## 2. Academic Philosophy

SEIR Foundations is based on the premise that contemporary infrastructure engineering increasingly requires practitioners to reason across traditional disciplinary boundaries.

A modern engineer may interact with:

* Linux systems
* IP networks
* Cloud infrastructure
* Application runtimes
* APIs
* Containers
* Logs and telemetry
* Identity systems
* Infrastructure automation
* Security services
* Artificial intelligence systems

Teaching these technologies independently can result in fragmented knowledge.

SEIR Foundations instead emphasizes **workflows and system relationships**.

For example, students are not simply taught how to launch an EC2 instance.

They examine a workflow such as:

```text
Application
    |
    v
Operating System
    |
    v
Compute Infrastructure
    |
    v
Network
    |
    v
Telemetry
    |
    v
CloudWatch
    |
    v
Analysis
    |
    v
Engineering Decision
```

The student is therefore encouraged to understand both the individual components and the system formed by their interaction.

---

## 3. Engineering Systems Thinking

Engineering Systems Thinking is the conceptual foundation of the curriculum.

Students are repeatedly asked to approach technical problems through a structured engineering workflow:

```text
Observe
   |
   v
Collect Evidence
   |
   v
Analyze
   |
   v
Form a Hypothesis
   |
   v
Recommend
   |
   v
Implement
   |
   v
Verify
   |
   v
Document
   |
   v
Automate
```

Artificial intelligence is introduced **inside this workflow**, rather than as a replacement for it.

This distinction is important.

The curriculum does not teach students to:

> "Ask AI for the answer."

Instead, students learn to construct engineering processes in which AI can assist with analysis, interpretation, recommendation, documentation, and automation.

---

## 4. Artificial Intelligence as an Engineering Component

SEIR Foundations introduces generative AI through **Amazon Bedrock** and foundation models.

Students learn that an AI model is one component within a larger engineering system.

A simplified architecture is:

```text
Engineer
    |
    v
Application
    |
    v
Structured Workflow
    |
    v
Foundation Model
    |
    v
Analysis
    |
    v
Engineer Reviews Result
```

This approach reinforces the principle that the quality of AI-assisted engineering depends significantly on:

* Problem definition
* Context
* Data quality
* Workflow design
* Input validation
* Tool selection
* Verification
* Human judgment

AI therefore becomes an extension of engineering methodology rather than a substitute for technical understanding.

---

## 5. Balerica AI

A central instructional project within SEIR Foundations is **Balerica AI**, a progressively developed AI-assisted engineering platform.

Students begin with relatively small Python utilities and gradually evolve them into an extensible engineering application.

Initial capabilities include components such as:

```text
health.py
telemetry.py
analyze_logs.py
cost.py
suggestion.py
auditor.py
bedrock.py
ask.py
```

Each component represents a specific engineering responsibility.

### `health.py`

Examines system health and infrastructure state.

### `telemetry.py`

Collects operational information and metrics.

### `analyze_logs.py`

Examines application and infrastructure logs and assists with identifying significant patterns.

### `cost.py`

Introduces FinOps concepts by examining infrastructure cost in relation to utilization.

### `suggestion.py`

Recommends additional areas of study and relevant technical documentation based on the student's engineering query.

### `auditor.py`

Introduces input validation, prompt inspection, policy enforcement, and responsible AI interaction.

### `bedrock.py`

Provides the abstraction through which Balerica AI communicates with Amazon Bedrock foundation models.

### `ask.py`

Functions as an orchestration layer that receives user requests, invokes appropriate components, and coordinates the engineering workflow.

---

## 6. Extensible Agent Architecture

Balerica AI is designed around a simple extensibility model.

Rather than requiring students to modify the entire application whenever functionality is added, new engineering capabilities can be implemented as additional modules.

For example:

```text
agents/
|
+-- health.py
+-- telemetry.py
+-- analyze_logs.py
+-- cost.py
+-- suggestion.py
+-- network.py
+-- security.py
+-- future_agent.py
```

The application can discover compatible agents and expose their capabilities through a common interface.

This introduces students to several software engineering concepts without initially requiring advanced software engineering terminology or frameworks:

* Modularity
* Separation of concerns
* Interfaces
* Extensibility
* Reusability
* Orchestration
* Abstraction
* Plugin architectures

Advanced courses can subsequently formalize and extend these concepts using more sophisticated agent and workflow frameworks.

---

## 7. Progressive Interface Development

Students initially interact with Balerica AI through the Linux command line.

```text
SSH
 |
 v
Linux
 |
 v
Python
 |
 v
Balerica AI
```

This ensures that students first develop familiarity with:

* SSH
* Linux
* Filesystems
* Command-line interfaces
* Text editors
* Python execution
* Processes
* Environment configuration
* Basic troubleshooting

The same application is later exposed through an API.

```text
Browser
   |
   v
FastAPI
   |
   v
Balerica AI
```

The important instructional principle is:

> **The underlying engineering capability remains consistent while the interface evolves.**

Students therefore experience the progression from:

```text
Script
   |
   v
Command-Line Application
   |
   v
API
   |
   v
Web Application
   |
   v
Containerized Application
   |
   v
Distributed Platform
```

---

## 8. FastAPI and API Engineering

FastAPI is introduced as the mechanism through which Balerica AI becomes accessible to applications and web clients.

Students encounter concepts including:

* HTTP
* REST-style APIs
* GET and POST operations
* Routes
* Endpoints
* JSON
* Request/response models
* Status codes
* API documentation
* Application interfaces

A simplified architecture becomes:

```text
Client
   |
   v
FastAPI
   |
   v
ask.py
   |
   v
Agent Framework
   |
   v
Amazon Bedrock
```

FastAPI's automatically generated API documentation provides students with an immediate graphical mechanism for interacting with the application while simultaneously exposing them to API concepts.

---

## 9. Pydantic and Data Validation

Pydantic is introduced alongside FastAPI to establish an early understanding of structured data and validation.

For example, an API may define an expected request:

```python
class QuestionRequest(BaseModel):
    question: str
```

This allows students to examine the transition:

```text
Untrusted External Input
          |
          v
      Validation
          |
          v
   Application Logic
```

This simple exercise provides a conceptual foundation for later study of:

* Input validation
* Secure coding
* API security
* Data models
* Schema enforcement
* AI guardrails
* Authentication
* Authorization
* Policy enforcement

The curriculum deliberately introduces these concepts incrementally rather than presenting the entire security architecture simultaneously.

---

## 10. Amazon EC2: Systems Foundations

Amazon EC2 provides the initial execution environment.

Students work directly with virtual machines so that cloud computing does not obscure foundational systems concepts.

Topics include:

* Virtual machines
* Linux
* SSH
* Processes
* Filesystems
* Permissions
* Environment variables
* IAM roles
* Networking
* Security groups
* Application installation
* Python
* APIs
* Logs
* Telemetry
* Infrastructure troubleshooting

The EC2 environment functions as a bridge between traditional systems administration and modern cloud platform engineering.

---

## 11. Networking as a Persistent Foundation

Networking is treated as a continuing systems requirement rather than a topic that disappears after introductory instruction.

Students repeatedly encounter concepts such as:

* IP addressing
* DNS
* TCP/IP
* Ports
* Routing
* Subnets
* Security groups
* Load balancers
* Application connectivity

Cloud abstractions are explicitly connected to the networking principles underneath them.

For example:

```text
Browser
   |
   v
DNS
   |
   v
Load Balancer
   |
   v
Application
   |
   v
Compute
```

The instructional objective is for students to understand that abstraction changes how complexity is managed; it does not eliminate the underlying engineering principles.

---

## 12. Observability and Telemetry

Observability is integrated early in the curriculum.

Students examine systems through operational evidence rather than relying solely on assumptions.

Relevant data may include:

```text
Metrics
Logs
Events
Resource State
Utilization
Application Responses
```

Students then develop workflows such as:

```text
System
   |
   v
Telemetry
   |
   v
CloudWatch
   |
   v
Balerica AI
   |
   v
Analysis
   |
   v
Engineering Recommendation
```

This provides a foundation for later study of observability platforms and technologies such as:

* Amazon CloudWatch
* OpenTelemetry
* Prometheus
* Grafana
* Centralized logging
* Distributed tracing

---

## 13. FinOps and Resource Utilization

Infrastructure cost is introduced as an engineering concern rather than solely a financial concern.

Students examine both nominal cost and utilization.

A resource may have a monthly infrastructure cost while delivering useful work during only a fraction of its available runtime.

This creates discussions around:

* Utilization
* Idle infrastructure
* Right-sizing
* Scheduling
* Scaling
* Cost allocation
* Cost optimization
* Engineering efficiency

The objective is to introduce students to the relationship between technical architecture and economic outcomes.

---

## 14. Lambda and Event-Driven Engineering

Subsequent curriculum modules extend Engineering Systems Thinking into event-driven architectures using AWS Lambda.

Students examine workflows in which events initiate automated responses.

A conceptual workflow may resemble:

```text
Event
   |
   v
Detection
   |
   v
Lambda
   |
   v
Analysis
   |
   v
Decision
   |
   v
Response
   |
   v
Audit
```

This architecture supports introductory exploration of automation and Security Orchestration, Automation, and Response (SOAR) concepts.

It also provides an appropriate environment for progressively introducing additional security and identity controls.

---

## 15. Monolithic Applications

SEIR Foundations intentionally includes monolithic application architecture.

This is important because students entering industry are not guaranteed to encounter exclusively modern greenfield systems.

Organizations continue to operate:

* Legacy applications
* Monoliths
* Traditional databases
* Long-lived business systems
* Hybrid infrastructure

Students should therefore understand how to operate and investigate existing systems before learning how to modernize them.

---

## 16. COBOL and Legacy Systems

A small COBOL-based business application is planned as a representative legacy workload.

The purpose is **not to make COBOL programming a prerequisite for SEIR Foundations**.

Instead, students encounter an unfamiliar existing application as an engineering system.

For example:

```text
Browser
   |
   v
Application Interface
   |
   v
COBOL Business Logic
   |
   v
Data Store
```

Students can observe:

* Processes
* Logs
* Network behavior
* Application health
* Resource consumption
* Data interactions

Balerica AI can later include a specialized `cobol.py` capability that assists students with examining and understanding the legacy application.

This creates an introduction to **application modernization**.

The pedagogical question becomes:

> How does an engineer understand, operate, and eventually modernize a system that already exists?

---

## 17. Containers and Amazon ECS

After students operate applications directly on EC2, those applications can be containerized.

The progression becomes:

```text
EC2 Application
      |
      v
Docker Container
      |
      v
Amazon ECS
```

Students can therefore compare:

### Traditional Deployment

```text
EC2
 |
 v
Operating System
 |
 v
Application
```

### Containerized Deployment

```text
ECS
 |
 v
Container
 |
 v
Application
```

Because the application already exists, students can focus on what containerization changes rather than simultaneously learning a completely unrelated application.

---

## 18. Kubernetes and Amazon EKS

The same conceptual progression can later extend into Kubernetes.

```text
EC2
 |
 v
Application
```

becomes:

```text
ECS
 |
 v
Container
 |
 v
Application
```

and later:

```text
EKS
 |
 v
Pod
 |
 v
Container
 |
 v
Application
```

Students can examine the differences between:

* Virtual machine deployment
* Container orchestration
* Kubernetes orchestration

while retaining a familiar application and engineering workflow.

This reduces unnecessary cognitive load and allows students to concentrate on the architectural differences between platforms.

---

## 19. Application Modernization

The monolithic application can eventually provide a modernization case study.

A possible progression is:

```text
Legacy Monolith
      |
      v
EC2 Deployment
      |
      v
Observability
      |
      v
Containerization
      |
      v
ECS Deployment
      |
      v
Service Identification
      |
      v
Selected Decomposition
      |
      v
Microservices
      |
      v
EKS
```

Students therefore experience modernization as a process.

They do not simply receive a finished microservices architecture.

They learn why an organization might move toward one.

---

## 20. Scaffolded Learning Model

SEIR Foundations uses a progressive instructional model.

A student begins with the knowledge they currently possess and is introduced to a manageable additional concept.

Conceptually:

```text
Current Knowledge
       +
One New Concept
       =
Progress
```

For example:

```text
Linux
  |
  + Python
  |
  + AWS API
  |
  + Bedrock
  |
  + FastAPI
  |
  + Containers
  |
  + Orchestration
```

This approach attempts to reduce unnecessary cognitive overload while maintaining technical rigor.

Complexity is introduced progressively.

---

## 21. Failure as an Instructional Mechanism

Students are expected to encounter failures.

Examples may include:

* Incorrect permissions
* Broken Python syntax
* Missing dependencies
* Incorrect environment variables
* Network connectivity problems
* Application failures
* API errors
* Container failures
* Configuration errors

The objective is not merely to obtain a successful deployment.

Students should develop a repeatable troubleshooting process:

```text
Failure
   |
   v
Observe
   |
   v
Collect Evidence
   |
   v
Form Hypothesis
   |
   v
Test
   |
   v
Correct
   |
   v
Verify
```

Failure therefore becomes part of the laboratory rather than evidence that the laboratory has failed.

---

## 22. Progressive Security

Security is introduced incrementally.

Initial exercises prioritize comprehension and successful system construction.

Subsequent exercises revisit those systems and improve their security posture.

This creates a progression such as:

```text
Build
  |
  v
Understand
  |
  v
Observe
  |
  v
Identify Risk
  |
  v
Harden
  |
  v
Verify
```

Potential later topics include:

* Least privilege
* IAM policy refinement
* Authentication
* Authorization
* Secrets management
* API security
* Network segmentation
* Audit logging
* AI guardrails
* Input validation
* Security automation

Students therefore learn **why** controls are required because they have already interacted with the system those controls protect.

---

## 23. Human-in-the-Loop AI Engineering

SEIR Foundations does not present generative AI as an autonomous replacement for engineering judgment.

Instead:

```text
System Evidence
      |
      v
AI Analysis
      |
      v
Recommendation
      |
      v
Human Engineer
      |
      v
Decision
```

Students are expected to evaluate AI output.

They should ask:

* What evidence supports this conclusion?
* What assumptions were made?
* Is additional telemetry required?
* Could another explanation fit the evidence?
* What are the consequences of the proposed action?
* How can the result be verified?

This reinforces critical thinking while simultaneously teaching practical AI integration.

---

## 24. Relationship to Advanced SEIR Study

SEIR Foundations is intended to establish the conceptual and technical foundation for more advanced study.

Later coursework can expand into areas such as:

* Advanced cloud architecture
* Multi-cloud engineering
* Kubernetes
* Distributed systems
* Platform engineering
* Site Reliability Engineering
* Advanced observability
* Infrastructure as Code
* Policy as Code
* AI orchestration
* Agentic workflows
* Model Context Protocol
* Graph-based AI workflows
* Expert systems
* Legacy modernization
* Advanced security engineering

The foundational curriculum therefore prioritizes durable engineering concepts that can support multiple future specializations.

---

## 25. Example Curriculum Progression

A representative progression may include:

### Phase I — Systems Foundations

```text
Linux
Networking
EC2
IAM
Python
Telemetry
Logs
```

### Phase II — AI-Assisted Engineering

```text
Amazon Bedrock
Foundation Models
Prompt Structure
Balerica AI
Agent Architecture
AI-Assisted Troubleshooting
Validation
```

### Phase III — API and Application Engineering

```text
FastAPI
Pydantic
HTTP
REST
JSON
Application Interfaces
```

### Phase IV — Event-Driven Engineering

```text
Lambda
Events
Automation
SOAR Workflows
Security Integration
```

### Phase V — Application Architecture

```text
Monoliths
Legacy Systems
COBOL Workload
Application Observability
Modernization
```

### Phase VI — Containers

```text
Docker
Container Images
Registries
Amazon ECS
Load Balancing
Application Deployment
```

### Phase VII — Orchestration

```text
Kubernetes Concepts
Amazon EKS
Pods
Services
Scaling
Microservices
Observability
```

---

## 26. Expected Student Outcomes

Upon successful completion of SEIR Foundations, students should be able to:

1. Explain relationships among compute, networking, operating systems, applications, APIs, and cloud services.
2. Deploy and operate Linux workloads in a cloud environment.
3. Use structured troubleshooting methodologies to investigate system failures.
4. Collect and interpret basic infrastructure telemetry and logs.
5. Explain the role of observability in reliable systems.
6. Develop basic Python tools for infrastructure and operational workflows.
7. Integrate foundation models into structured engineering workflows.
8. Explain the limitations of AI-generated technical recommendations and the importance of verification.
9. Develop and interact with basic REST APIs.
10. Apply data validation concepts to API inputs.
11. Explain modular and extensible application architecture.
12. Describe the differences among virtual machine, container, and Kubernetes deployment models.
13. Containerize an existing application and deploy it through a container orchestration platform.
14. Analyze a monolithic application as an engineering system.
15. Explain fundamental application modernization strategies.
16. Relate infrastructure utilization to operational cost.
17. Explain foundational IAM and cloud security principles.
18. Distinguish authentication, authorization, validation, auditing, and policy enforcement.
19. Document engineering decisions and troubleshooting processes.
20. Approach unfamiliar technologies using a repeatable systems methodology.

---

## 27. Pedagogical Objective

The primary objective of SEIR Foundations is not technology memorization.

AWS services, Python libraries, AI models, container technologies, and software frameworks will continue to evolve.

The curriculum therefore emphasizes durable competencies:

```text
Systems Thinking

Troubleshooting

Technical Communication

Evidence-Based Reasoning

Workflow Design

Automation

Software Modularity

Observability

Security Awareness

Cost Awareness

Adaptability

Human-AI Collaboration
```

A student who develops these competencies should be better prepared to learn unfamiliar technologies throughout their career.

---

## 28. Central Curriculum Principle

SEIR Foundations can ultimately be summarized through one architectural progression:

```text
Understand the System
        |
        v
Observe the System
        |
        v
Interact with the System
        |
        v
Automate the System
        |
        v
Secure the System
        |
        v
Modernize the System
        |
        v
Scale the System
```

Artificial intelligence participates throughout this progression.

It does not eliminate the need to understand the system.

It increases the importance of having a structured engineering framework through which the system can be understood.

---

## Conclusion

SEIR Foundations is designed as an interdisciplinary introduction to **Engineering Systems Thinking for the AI-assisted cloud era**.

Students progress from individual infrastructure components toward increasingly sophisticated systems while repeatedly working with familiar applications, workflows, and architectural patterns.

The curriculum deliberately connects traditional computing foundations with contemporary technologies:

```text
Networking
     +
Linux
     +
Cloud Computing
     +
Software Engineering
     +
APIs
     +
Observability
     +
Automation
     +
Security
     +
Artificial Intelligence
     =
Engineering Systems Thinking
```

The intended outcome is not a student who has merely completed a sequence of cloud laboratories.

The intended outcome is a developing engineer who can encounter an unfamiliar system, determine how its components interact, gather evidence about its behavior, reason about failures, use AI appropriately within a structured workflow, and progressively improve the system.

That capability is the foundation upon which the remainder of the SEIR curriculum is built.
