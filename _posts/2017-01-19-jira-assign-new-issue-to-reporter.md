---
title: "JIRA - Automatically Assign a New Issue to the Current User"
categories:
  - Project Management
tags:
  - project management
  - atlassian
  - jira
  - workflow
  - automation
  - post functions
header:
  image: /assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/cover-jira-post-functions.jpg
  caption: "Assign issue to reporter using JIRA Post Functions"
gallery:
  - url:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-1.png
    image_path:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-1.png
    title: "Navigate to 'JIRA Administration > Issues' from the main toolbar menu."
    alt: "Navigate to 'JIRA Administration > Issues' from the main toolbar menu."
  - url:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-2.png
    image_path:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-2.png
    title: "Select 'Workflows' from the menu on the left."
    alt: "Select 'Workflows' from the menu on the left."
  - url:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-3.png
    image_path:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-3.png
    title: "Click 'View' for the Workflow you want to add automatic issue assignment."
    alt: "Click 'View' for the Workflow you want to add automatic issue assignment."
  - url:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-4.png
    image_path:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-4.png
    title: "Select the 'Diagram' view for convenience to work visually."
    alt: "Select the 'Diagram' view for convenience to work visually."
  - url:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-5.png
    image_path:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-5.png
    title: "Click the 'Edit' button in order to make changes."
    alt: "Click the 'Edit' button in order to make changes."
  - url:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-6.png
    image_path:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-6.png
    title: "Click the 'Create' transition line to bring up a dialog where you can click the 'Post Functions' link."
    alt: "Click the 'Create' transition line to bring up a dialog where you can click the 'Post Functions' link."
  - url:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-7.png
    image_path:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-7.png
    title: "Click the 'Add post function' link."
    add: "Click the 'Add post function' link."
  - url:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-8.png
    image_path:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-8.png
    title: "Select the 'Assign to Current User' option and then click the 'Add' button."
    alt: "Select the 'Assign to Current User' option and then click the 'Add' button."
  - url:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-9.png
    image_path:  assets/images/posts/2017/01-january/2017-01-19-jira-assign-new-issue-to-reporter/jira-screenshot-9.png
    title: "Verify the new post function has been added to the list and then click 'Publish Draft'."
    alt: "Verify the new post function has been added to the list and then click 'Publish Draft'."
---

I've been working on streamlining our [Atlassian JIRA](https://www.atlassian.com/software/jira) project management workflow.

Today, I made use of the JIRA [Post Functions](https://confluence.atlassian.com/adminjiracloud/advanced-workflow-configuration-776636620.html#Advancedworkflowconfiguration-postfunctions) workflow feature to automatically Assign a New Issue to the Reporter *after* Issue Creation.

Specifically, I added [a post function on the "initial" transition](https://confluence.atlassian.com/adminjiracloud/advanced-workflow-configuration-776636620.html#Advancedworkflowconfiguration-Usingpostfunctionswiththeinitialtransition) to perform this task for me automatically.

{% include gallery caption="Screenshots walking through the process of setting up a JIRA Post Function to automatically assign a new Issue to the Reporter." %}
