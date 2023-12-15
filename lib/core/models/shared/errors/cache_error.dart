enum CacheErrorType { noLocalDataFound, necessaryStateMissing }

class CacheError extends Error {
  CacheError(this.type, [this.message]);
  final CacheErrorType type;
  final String? message;
}
