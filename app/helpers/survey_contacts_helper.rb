module SurveyContactsHelper
  $questions = {
  mq:"Please select all talent acquisition goals applicable to your organization",
  ma:"Immediate Hiring Needs (1-15 Positions)",
  mb:"Ramping Hiring for Foreseeable Future (15-200 Positions within 18 months)",
  mc:"Build or Improve Internal Recruitment Infrastructure and Employee Productivity",
  md:"Hire and Train Internal Recruiters",
  other:"Other",

  aq:"Please select all applicable areas expertise that define your Immediate Hiring Needs",
  a0:"Software",
  a1:"Hardware",
  a2:"IT",
  a3:"Program Management, Product Management, Project Management",
  a4:"User Experience & Design",
  a5:"Non Technical (Sales, Finance, Marketing, Clerical, etc)",
  a6:"Leadership (Director, VP, SVP, Executives)",
  a7:"Other",

  bAq:"Please select all applicable strategies that your organization is using to meet your Aggressive Hiring Targets",
  bA0:"Outsourced requirements to third party agencies",
  bA1:"Internal Recruitment Team",
  bA2:"Job Postings",
  bA3:"SAAS Solution ",
  bA4:"Other",

  bBq:"Please select all applicable areas expertise that define your Aggressive Hiring Targets",
  bB0:"Software",
  bB1:"Hardware",
  bB2:"IT",
  bB3:"Program Management, Product Management, Project Management",
  bB4:"User Experience & Design",
  bB5:"Non Technical (Sales, Finance, Marketing, Clerical, etc)",
  bB6:"Leadership (Director, VP, SVP, Executives)",
  bB7:"Other",

  cAq:"Please select all Internal Recruitment Infrastructure Processes that would interest your organization",
  cA0:"Interviewing Best Practices",
    cA0a:"Systematized Interview Formats",
    cA0b:"Interview Training for Employees",
    cA0c:"Standardized Interview Scoring, Data Collection, and Organization
     to Increase ROI and Decrease Spending",
  cA1:"Courting/Champion Program for Passive Candidates",
  cA2:"Bucketing Positions to Increase Transparency and Productivity while Decreasing Spend",
  cA3:"Organizational Employee Value Proposition for Recruitment Purposes",
  cA4:"Define Recruiting OKRs and Expectations to Drive Recruitment Productivity",
  cA5:"Outline Company Wide Compensation Bands",
  cA6:"Advanced Requirement Qualification Process - Increase Interview to Offer Ratio",

  cBq:"Please select all Internal Recruitment Productivity processes that would interest your organization",
  cB0:"Talent Acquisition Proficiency Diagnostic (Employees, Structure, Data, Historics, etc)",
  cB1:"Hiring Manager Relationship Training - Creating a Repeatable and Transparent Workflow",
  cB2:"Advanced Techniques to Attract Passive Candidates",
  cB3:"Candidate Outreach Best Practices - Increase ROI of Recruiters",
  cB4:"Advanced Objection Handling for Recruiters",
  cB5:"Email Best Practices",
  cB6:"Cold Calling Best Practices",
  cB7:"Advanced Candidate Negotiation",
  cB8:"Advanced Closing Techniques",
  cB9:"Event Based Recruitment - Running Fruitful Events with High ROI",
  cB10:"Recruitment Heat Map Exercises - Increase Ability to Find Candidates Quickly",
  cB11:"Advanced Sourcing Techniques -  Passive Candidate Identification",

  dq:"Please select all Internal Recruitment needs applicable within your organization",
  d0:"Hire a Recruiter",
  d1:"Recruitment Training",
    d1a:"Advanced",
    d1b:"Intermediary",
    d1c:"Junior",
    d1d:"New Grad (No Experience)",
    d1e:"Technology Specific"
  } 

  def checkboxWithLabel(survey, key)
    box = survey.check_box key
    label = survey.label key, $questions[key]
    return box + label + "<br/>".html_safe
  end

end
