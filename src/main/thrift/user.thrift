namespace java com.swissguard.user.thriftjava
#@namespace scala com.swissguard.user.thriftscala

include "finatra-thrift/finatra_thrift_exceptions.thrift"

struct AuthenticationRequest {
  1: string username,
  2: string password
}

struct UserResponse {
  1: i64 id,
  2: string username,
  3: string token
}

service UserService {

  string register(1:AuthenticationRequest user) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )

  string login(1:AuthenticationRequest user) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )

  list<UserResponse> listUsers() throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )

  bool validateToken(1:string token) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )
}
