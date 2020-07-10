if [ -n "$PUBLISH" ]; then
  PUBLISH_FLAG="--publish"
fi

if [ ! -z "$VARS" ]; then
  for var in $VARS; do
    ENV_FLAGS="$ENV_FLAGS --env $var"
  done
fi

/pack/pack build $IMAGE_NAME -q -p /github/workspace/$SOURCE_LOCATION/$CONTEXT --builder $BUILDER $PUBLISH_FLAG $ENV_FLAGS
