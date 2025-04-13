export ZONE=us-central1-c
export CLUSTER_NAME=hello-cluster
export REPO=my-repository
curl -LO raw.githubusercontent.com/quiccklabs/Labs_solutions/master/Implement%20DevOps%20Workflows%20in%20Google%20Cloud%20Challenge%20Lab/quicklabgsp330.sh
sudo chmod +x quicklabgsp330.sh
./quicklabgsp330.sh
gcloud services enable cloudbuild.googleapis.com container.googleapis.com artifactregistry.googleapis.com
gh auth login
export REPO_NAME="sample-app"
export GITHUB_USER="kishorekannann"  
export REGION="us-central1"
export ZONE="us-central1-c"
echo "Creating GitHub repo..."
gh repo create "$GITHUB_USER/$REPO_NAME" --public --confirm
cd ~
git clone "https://github.com/$GITHUB_USER/$REPO_NAME.git"
cd "$REPO_NAME"
cd ~
git clone "https://github.com/$GITHUB_USER/$REPO_NAME.git"
cd "$REPO_NAME"
gsutil cp -r gs://spls/gsp330/sample-app/* .
chmod -R +w .
for file in cloudbuild-dev.yaml cloudbuild.yaml; do   sed -i "s/<your-region>/${REGION}/g" "$file";   sed -i "s/<your-zone>/${ZONE}/g" "$file"; done
git add .
git commit -m "Initial commit with sample Go app"
git push origin master
git checkout -b dev
git push origin dev
echo "Creating Cloud Build triggers..."
gcloud builds triggers create github   --name="sample-app-prod-deploy"   --repo-name="$REPO_NAME"   --repo-owner="$GITHUB_USER"   --branch-pattern="^master$"   --build-config="cloudbuild.yaml"   --region="$REGION"
echo "REPO_NAME = $REPO_NAME"
echo "GITHUB_USER = $GITHUB_USER"
echo "REGION = $REGION"
gcloud builds triggers create github   --name="sample-app-prod-deploy"   --region="us-central1"   --repo-name="sample-app"   --repo-owner="kishorekannann"   --branch-pattern="^master$"   --build-config="cloudbuild.yaml"
cd ~/sample-app
git add .
git commit -m "Initial commit with sample Go app"
git push origin master
git checkout -b dev
git push origin dev
gcloud builds triggers create github   --name="sample-app-prod-deploy"   --region="us-central1"   --repo-name="sample-app"   --repo-owner="kishorekannann"   --branch-pattern="^master$"   --build-config="cloudbuild.yaml"
cd ~
gsutil cp -r gs://spls/gsp330/sample-app/* sample-app
export REGION="us-central1"
export ZONE="us-central1-c"
for file in sample-app/cloudbuild-dev.yaml sample-app/cloudbuild.yaml; do     sed -i "s/<your-region>/${REGION}/g" "$file";     sed -i "s/<your-zone>/${ZONE}/g" "$file"; done
cd ~
gsutil cp -r gs://spls/gsp330/sample-app/* sample-app
export REGION="us-central1"
export ZONE="us-central1-c"
for file in sample-app/cloudbuild-dev.yaml sample-app/cloudbuild.yaml; do     sed -i "s/<your-region>/${REGION}/g" "$file";     sed -i "s/<your-zone>/${ZONE}/g" "$file"; done
cd ~
git clone https://github.com/kishorekannann/sample-app.git
cd ~
gsutil cp -r gs://spls/gsp330/sample-app/* sample-app
export REGION="us-central1"
export ZONE="us-central1-c"
for file in cloudbuild-dev.yaml cloudbuild.yaml; do     sed -i "s/<your-region>/${REGION}/g" "$file";     sed -i "s/<your-zone>/${ZONE}/g" "$file"; done
export REGION="us-central1"
export ZONE="us-central1-c"
for file in sample-app/cloudbuild-dev.yaml sample-app/cloudbuild.yaml; do     sed -i "s/<your-region>/${REGION}/g" "$file";     sed -i "s/<your-zone>/${ZONE}/g" "$file"; done
git add .
git commit -m "Initial commit with sample Go application"
git push origin master
git remote add origin https://github.com/kishorekannann/sample-app.git
git remote -v
git push -u origin master
git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch .kube/gke_gcloud_auth_plugin_cache .config/gh/hosts.yml' --prune-empty --tag-name-filter cat -- --all
git push -u origin master
git checkout -b dev
git push -u origin dev
git checkout -b dev
git push -u origin dev
gh auth login
git push -u origin dev
cd sample-app
git checkout -b dev
git add .
git commit -m "Initial commit with sample Go app on dev branch"
git checkout dev
cd ~
gsutil cp -r gs://spls/gsp330/sample-app/* sample-app
export REGION="us-central1"
export ZONE="us-central1-c"
for file in sample-app/cloudbuild-dev.yaml sample-app/cloudbuild.yaml; do     sed -i "s/<your-region>/${REGION}/g" "$file";     sed -i "s/<your-zone>/${ZONE}/g" "$file"; done
