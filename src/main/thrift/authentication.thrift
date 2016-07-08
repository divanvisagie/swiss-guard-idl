namespace java com.swissguard.authentication.thriftjava
#@namespace scala com.swissguard.authentication.thriftscala

include "finatra-thrift/finatra_thrift_exceptions.thrift"

struct LoginRequest {
  1: string username,
  2: string password
}

struct RegistrationRequest {
  1: string username,
  2: string password,
  3: string email
}

service AuthenticationService {

  string register(1:RegistrationRequest registrationRequest) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )

  string login(1:LoginRequest loginRequest) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )
}

