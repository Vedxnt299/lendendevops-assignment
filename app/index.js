const express = require('express')
const app = express()

app.get('/', (req,res)=>{
  res.send(`
      <h1>LenDenClub DevOps Assignment</h1>
      <p>Application deployed using:</p>
      <ul>
         <li>Terraform Infrastructure as Code</li>
         <li>Jenkins CI/CD Pipeline</li>
         <li>Trivy Security Scanning</li>
      </ul>
    `)
})

app.listen(3000, "0.0.0.0", () => {
  console.log("Server running on port 3000")
})