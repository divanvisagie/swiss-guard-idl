namespace java com.swissguard.user.thriftjava
#@namespace scala com.swissguard.user.thriftscala

include "finatra-thrift/finatra_thrift_exceptions.thrift"

struct User {
  1: string username,
}

service UserService {
  // Responds with signup token
  string createUser(1:User user) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )
}
