namespace java com.swissguard.token.thriftjava
#@namespace scala com.swissguard.token.thriftscala

include "finatra-thrift/finatra_thrift_exceptions.thrift"

struct Claims {
  1: string userId,
  2: string username,
  3: list<string> claims
}

service TokenService {
  bool validateToken(1:string token) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )

  Claims claimsForToken (1: string token) throws (
    1: finatra_thrift_exceptions.ClientError clientError,
    2: finatra_thrift_exceptions.ServerError serverError
  )
}