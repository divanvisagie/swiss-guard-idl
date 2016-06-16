namespace java com.swissguard.user.thriftjava
#@namespace scala com.swissguard.user.thriftscala

include "finatra-thrift/finatra_thrift_exceptions.thrift"

struct UserRequest {
  1: string username,
  2: string password
}

struct UserResponse {
  1: i64 id,
  2: string username,
  3: string token
}

service UserService {

  UserResponse createUser(1:UserRequest user) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )

  UserResponse login(1:UserRequest user) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )

  bool validateToken(1:string token) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )
}
