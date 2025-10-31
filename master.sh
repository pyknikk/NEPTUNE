gcloud services enable \
    dataflow.googleapis.com cloudfunctions.googleapis.com \
    run.googleapis.com cloudbuild.googleapis.com \
    eventarc.googleapis.com pubsub.googleapis.com \
    cloudbuild.googleapis.com containerregistry.googleapis.com

bq mk neptune
bq mk --schema message:STRING -t neptune.rawmessages

gcloud pubsub topics create neptune-activities

gcloud pubsub subscriptions create neptune-activities-test --topic neptune-activities

gcloud pubsub subscriptions create neptune-activities --topic projects/moonbank-neptune/topics/activities --push-endpoint=https://pubsub.googleapis.com/v1/projects/${DEVSHELL_PROJECT_ID}/topics/neptune-activities:publish
