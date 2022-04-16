Run coverage:

https://pub.dev/packages/test_cov

```
dart pub global activate test_cov && \
dart pub global run test_cov:test_cov && \
genhtml -o coverage coverage/lcov.info

# Optional: open report in browser
open coverage/index.html
```
