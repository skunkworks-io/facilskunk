# facilskunk Project Structure Setup Script for Windows
# This PowerShell script creates the basic folder structure for the facilskunk project

# Print banner
Write-Host "facilskunk Project Setup" -ForegroundColor Cyan
Write-Host "AI Learning Plan Guide" -ForegroundColor Yellow
Write-Host ""
Write-Host "Setting up project structure..." -ForegroundColor Green
Write-Host ""

# Create root directory if not running from it
if (-not (Test-Path -Path "facilskunk")) {
    New-Item -Path "facilskunk" -ItemType Directory | Out-Null
    Set-Location -Path "facilskunk"
    Write-Host "Created facilskunk directory" -ForegroundColor Green
} else {
    Write-Host "Already in facilskunk directory" -ForegroundColor Yellow
}

# Create main directories
$directories = @(
    "assets\icons",
    "assets\images",
    "client\components\common",
    "client\components\dashboard",
    "client\components\assessment",
    "client\components\community",
    "client\pages",
    "client\styles\components",
    "client\utils",
    "server\api\routes",
    "server\api\controllers",
    "server\api\middleware",
    "server\config",
    "server\models",
    "server\services",
    "server\utils",
    "data\resources\fundamentals",
    "data\resources\deep-learning",
    "data\resources\nlp",
    "data\resources\computer-vision",
    "data\resources\reinforcement-learning",
    "data\assessments",
    "data\learning-paths",
    "scripts",
    "tests\unit\server",
    "tests\unit\client",
    "tests\integration\api",
    "tests\integration\user-flows",
    "tests\e2e",
    "docs\api",
    "docs\architecture",
    "docs\deployment",
    "docs\user-guides",
    "public",
    "mobile\ios",
    "mobile\android",
    "mobile\src",
    ".github\workflows",
    ".github\ISSUE_TEMPLATE"
)

# Create directories
foreach ($dir in $directories) {
    if (-not (Test-Path -Path $dir)) {
        New-Item -Path $dir -ItemType Directory -Force | Out-Null
        Write-Host "Created directory: $dir" -ForegroundColor Green
    }
}

# Create basic component files
$component_files = @(
    "client\components\common\Button.js",
    "client\components\common\Card.js",
    "client\components\common\Input.js",
    "client\components\common\Navigation.js",
    "client\components\dashboard\LearningPath.js",
    "client\components\dashboard\ProgressTracker.js",
    "client\components\dashboard\ResourceCard.js",
    "client\components\assessment\Quiz.js",
    "client\components\assessment\Results.js",
    "client\components\community\ForumList.js",
    "client\components\community\UserProfile.js"
)

# Create placeholder component files
foreach ($file in $component_files) {
    $filename = Split-Path -Path $file -Leaf
    $content = "// $filename component`r`n// TODO: Implement this component"
    if (-not (Test-Path -Path $file)) {
        Set-Content -Path $file -Value $content
        Write-Host "Created file: $file" -ForegroundColor Green
    } else {
        Write-Host "File already exists: $file" -ForegroundColor Yellow
    }
    Write-Host "Created file: $file" -ForegroundColor Green
}

# Create page files
$page_files = @(
    "client\pages\Home.js",
    "client\pages\Dashboard.js",
    "client\pages\Assessment.js",
    "client\pages\Resources.js",
    "client\pages\Community.js",
    "client\pages\Profile.js"
)

# Create placeholder page files
foreach ($file in $page_files) {
    $filename = Split-Path -Path $file -Leaf
    $content = "// $filename page`r`n// TODO: Implement this page"
    Set-Content -Path $file -Value $content
    Write-Host "Created file: $file" -ForegroundColor Green
}

# Create server files
$server_files = @(
    "server\api\routes\auth.js",
    "server\api\routes\users.js",
    "server\api\routes\learningPaths.js",
    "server\api\routes\resources.js",
    "server\api\routes\assessments.js",
    "server\api\controllers\authController.js",
    "server\api\controllers\userController.js",
    "server\api\controllers\learningPathController.js",
    "server\api\controllers\resourceController.js",
    "server\api\middleware\auth.js",
    "server\api\middleware\validation.js",
    "server\api\middleware\errorHandler.js",
    "server\config\db.js",
    "server\config\passport.js",
    "server\config\env.js",
    "server\models\User.js",
    "server\models\LearningPath.js",
    "server\models\Resource.js",
    "server\models\Assessment.js",
    "server\models\Comment.js",
    "server\services\emailService.js",
    "server\services\recommendationEngine.js",
    "server\services\analyticsService.js",
    "server\utils\logger.js",
    "server\utils\helpers.js",
    "server\server.js"
)

# Create placeholder server files
foreach ($file in $server_files) {
    $filename = Split-Path -Path $file -Leaf
    $content = "// $filename`r`n// TODO: Implement $filename"
    Set-Content -Path $file -Value $content
    Write-Host "Created file: $file" -ForegroundColor Green
}

# Create data files
$data_files = @(
    "data\assessments\beginnerQuizzes.json",
    "data\assessments\intermediateQuizzes.json",
    "data\assessments\advancedQuizzes.json",
    "data\learning-paths\beginner-paths.json",
    "data\learning-paths\intermediate-paths.json",
    "data\learning-paths\advanced-paths.json"
)

# Create placeholder data files
foreach ($file in $data_files) {
    $content = '{
  "items": [],
  "description": "TODO: Add content"
}'
    Set-Content -Path $file -Value $content
    Write-Host "Created file: $file" -ForegroundColor Green
}

# Create script files
$script_files = @(
    "scripts\seed-database.js",
    "scripts\generate-sitemap.js",
    "scripts\deploy.ps1"
)

# Create placeholder script files
foreach ($file in $script_files) {
    $filename = Split-Path -Path $file -Leaf
    if ($filename -like "*.ps1") {
        $content = "# $filename`r`n# TODO: Implement $filename"
    } else {
        $content = "// $filename`r`n// TODO: Implement $filename"
    }
    Set-Content -Path $file -Value $content
    Write-Host "Created file: $file" -ForegroundColor Green
}

# Create test files
$test_files = @(
    "tests\e2e\auth.test.js",
    "tests\e2e\learning-path.test.js",
    "tests\e2e\resources.test.js"
)

# Create placeholder test files
foreach ($file in $test_files) {
    $filename = Split-Path -Path $file -Leaf
    $content = "// $filename`r`n// TODO: Implement tests"
    Set-Content -Path $file -Value $content
    Write-Host "Created file: $file" -ForegroundColor Green
}

# Create GitHub workflow files
$workflow_files = @(
    ".github\workflows\ci.yml",
    ".github\workflows\deploy.yml"
)

# Create placeholder workflow files
foreach ($file in $workflow_files) {
    $filename = Split-Path -Path $file -Leaf
    $content = "# $filename`r`n# TODO: Configure GitHub Actions"
    if (-not (Test-Path -Path $file)) {
        Set-Content -Path $file -Value $content
        Write-Host "Created file: $file" -ForegroundColor Green
    } else {
        Write-Host "File already exists: $file" -ForegroundColor Yellow
    }
}
if (-not (Test-Path -Path "public\favicon.ico")) {
    New-Item -Path "public\favicon.ico" -ItemType File -Force | Out-Null
    Write-Host "Created public\favicon.ico" -ForegroundColor Green
} else {
    Write-Host "File already exists: public\favicon.ico" -ForegroundColor Yellow
}


# Create public files
New-Item -Path "public\favicon.ico" -ItemType File -Force | Out-Null
Set-Content -Path "public\manifest.json" -Value '{
  "name": "facilskunk",
  "short_name": "facilskunk",
  "description": "AI Learning Plan Guide"
}'
Set-Content -Path "public\robots.txt" -Value "User-agent: *`r`nAllow: /"
Set-Content -Path "public\index.html" -Value '<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>facilskunk</title>
  </head>
  <body>
    <div id="root"></div>
  </body>
</html>'
Write-Host "Created public files" -ForegroundColor Green

# Create mobile app.json
Set-Content -Path "mobile\app.json" -Value '{
  "expo": {
    "name": "facilskunk",
    "slug": "facilskunk"
  }
}'
Write-Host "Created mobile app.json" -ForegroundColor Green

# Create root config files
# package.json
Set-Content -Path "package.json" -Value '{
  "name": "facilskunk",
  "version": "0.1.0",
  "description": "AI Learning Plan Guide",
  "main": "server/server.js",
  "scripts": {
    "start": "node server/server.js",
    "dev": "nodemon server/server.js",
    "client": "cd client && npm start",
    "dev:full": "concurrently \"npm run dev\" \"npm run client\"",
    "test": "jest",
    "seed": "node scripts/seed-database.js"
  },
  "repository": {
    "type": "git",
    "url": "git+https://github.com/skunkworks-io/facilskunk.git"
  },
  "keywords": [
    "AI",
    "learning",
    "education",
    "personalized"
  ],
  "author": "skunkworks-io",
  "license": "MIT",
  "bugs": {
    "url": "https://github.com/skunkworks-io/facilskunk/issues"
  },
  "homepage": "https://github.com/skunkworks-io/facilskunk#readme",
  "dependencies": {},
  "devDependencies": {}
}'
Write-Host "Created package.json" -ForegroundColor Green

# Docker Compose
Set-Content -Path "docker-compose.yml" -Value 'version: "3"
services:
  app:
    build: .
    ports:
      - "3000:3000"
    depends_on:
      - mongo
    environment:
      - NODE_ENV=development
      - MONGO_URI=mongodb://mongo:27017/facilskunk
  
  mongo:
    image: mongo
    ports:
      - "27017:27017"
    volumes:
      - mongo-data:/data/db

volumes:
  mongo-data:'
Write-Host "Created docker-compose.yml" -ForegroundColor Green

# Create License file
Set-Content -Path "LICENSE" -Value 'MIT License

Copyright (c) 2025 skunkworks-io

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.'
Write-Host "Created LICENSE" -ForegroundColor Green

# Create .env.example
Set-Content -Path ".env.example" -Value '# App Configuration
NODE_ENV=development
PORT=3000
API_URL=http://localhost:3000/api

# Database Configuration
MONGO_URI=mongodb://localhost:27017/facilskunk

# Authentication
JWT_SECRET=your_jwt_secret_key
JWT_EXPIRE=7d

# Email Configuration
EMAIL_SERVICE=smtp
EMAIL_HOST=smtp.example.com
EMAIL_PORT=587
EMAIL_USER=user@example.com
EMAIL_PASS=your_email_password
EMAIL_FROM=noreply@facilskunk.io'
Write-Host "Created .env.example" -ForegroundColor Green

Write-Host ""
Write-Host "✓ Project structure setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Initialize Git repository: git init"
Write-Host "2. Install dependencies: npm install"
Write-Host "3. Configure your environment: copy .env.example .env"
Write-Host "4. Run the application: npm run dev:full"
Write-Host ""
Write-Host "Happy coding with facilskunk!" -ForegroundColor Cyan