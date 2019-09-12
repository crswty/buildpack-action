

if [ -n "$PUBLISH" ]; then
  PUBLISH_FLAG="--publish"
fi



/pack/pack build $IMAGE_NAME -p /github/workspace/$SOURCE_LOCATION --builder $BUILDER $PUBLISH_FLAG
