if [ -n "$PUBLISH" ]; then
  PUBLISH_FLAG="--publish"
fi

if [ -z "$VARS" ]; then
  ENV_FLAG="$VARS"
fi

/pack/pack build $IMAGE_NAME -q -p /github/workspace/$SOURCE_LOCATION/$CONTEXT --builder $BUILDER $PUBLISH_FLAG $ENV_FLAG
