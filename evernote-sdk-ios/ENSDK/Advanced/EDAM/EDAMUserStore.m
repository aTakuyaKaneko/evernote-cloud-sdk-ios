/*
 * Copyright (c) 2014 by Evernote Corporation, All rights reserved.
 *
 * Use of the source code and binary libraries included in this package
 * is permitted under the following terms:
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 * IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/**
 * Autogenerated by Thrift Compiler (0.9.1)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#import <Foundation/Foundation.h>

#import "TProtocol.h"
#import "TException.h"
#import "FATObject.h"
#import "EDAMTypes.h"
#import "EDAMErrors.h"

#import "EDAMUserStore.h"

@implementation EDAMPublicUserInfo

+ (NSString *) structName {
  return @"PublicUserInfo";
}

+ (NSArray *) structFields {
  return @[
    [FATField fieldWithIndex:1 type:TType_I32 optional:NO name:@"userId"],
    [FATField fieldWithIndex:2 type:TType_STRING optional:NO name:@"shardId"],
    [FATField fieldWithIndex:3 type:TType_I32 optional:YES name:@"privilege"],
    [FATField fieldWithIndex:4 type:TType_STRING optional:YES name:@"username"],
    [FATField fieldWithIndex:5 type:TType_STRING optional:YES name:@"noteStoreUrl"],
    [FATField fieldWithIndex:6 type:TType_STRING optional:YES name:@"webApiUrlPrefix"],
  ];
}

@end

@implementation EDAMAuthenticationResult

+ (NSString *) structName {
  return @"AuthenticationResult";
}

+ (NSArray *) structFields {
  return @[
    [FATField fieldWithIndex:1 type:TType_I64 optional:NO name:@"currentTime"],
    [FATField fieldWithIndex:2 type:TType_STRING optional:NO name:@"authenticationToken"],
    [FATField fieldWithIndex:3 type:TType_I64 optional:NO name:@"expiration"],
    [FATField fieldWithIndex:4 type:TType_STRUCT optional:YES name:@"user" valueType:TType_STRUCT valueClass:[EDAMUser class]],
    [FATField fieldWithIndex:5 type:TType_STRUCT optional:YES name:@"publicUserInfo" valueType:TType_STRUCT valueClass:[EDAMPublicUserInfo class]],
    [FATField fieldWithIndex:6 type:TType_STRING optional:YES name:@"noteStoreUrl"],
    [FATField fieldWithIndex:7 type:TType_STRING optional:YES name:@"webApiUrlPrefix"],
    [FATField fieldWithIndex:8 type:TType_BOOL optional:YES name:@"secondFactorRequired"],
    [FATField fieldWithIndex:9 type:TType_STRING optional:YES name:@"secondFactorDeliveryHint"],
  ];
}

@end

@implementation EDAMBootstrapSettings

+ (NSString *) structName {
  return @"BootstrapSettings";
}

+ (NSArray *) structFields {
  return @[
    [FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"serviceHost"],
    [FATField fieldWithIndex:2 type:TType_STRING optional:NO name:@"marketingUrl"],
    [FATField fieldWithIndex:3 type:TType_STRING optional:NO name:@"supportUrl"],
    [FATField fieldWithIndex:4 type:TType_STRING optional:NO name:@"accountEmailDomain"],
    [FATField fieldWithIndex:14 type:TType_STRING optional:YES name:@"cardscanUrl"],
    [FATField fieldWithIndex:15 type:TType_STRING optional:YES name:@"announcementsUrl"],
    [FATField fieldWithIndex:5 type:TType_BOOL optional:YES name:@"enableFacebookSharing"],
    [FATField fieldWithIndex:6 type:TType_BOOL optional:YES name:@"enableGiftSubscriptions"],
    [FATField fieldWithIndex:7 type:TType_BOOL optional:YES name:@"enableSupportTickets"],
    [FATField fieldWithIndex:8 type:TType_BOOL optional:YES name:@"enableSharedNotebooks"],
    [FATField fieldWithIndex:9 type:TType_BOOL optional:YES name:@"enableSingleNoteSharing"],
    [FATField fieldWithIndex:10 type:TType_BOOL optional:YES name:@"enableSponsoredAccounts"],
    [FATField fieldWithIndex:11 type:TType_BOOL optional:YES name:@"enableTwitterSharing"],
    [FATField fieldWithIndex:12 type:TType_BOOL optional:YES name:@"enableLinkedInSharing"],
    [FATField fieldWithIndex:13 type:TType_BOOL optional:YES name:@"enablePublicNotebooks"],
  ];
}

@end

@implementation EDAMBootstrapProfile

+ (NSString *) structName {
  return @"BootstrapProfile";
}

+ (NSArray *) structFields {
  return @[
    [FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"name"],
    [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"settings" valueType:TType_STRUCT valueClass:[EDAMBootstrapSettings class]],
  ];
}

@end

@implementation EDAMBootstrapInfo

+ (NSString *) structName {
  return @"BootstrapInfo";
}

+ (NSArray *) structFields {
  return @[
    [FATField fieldWithIndex:1 type:TType_LIST optional:NO name:@"profiles" valueType:TType_STRUCT valueClass:[EDAMBootstrapProfile class]],
  ];
}

@end

static int16_t EDAMEDAM_VERSION_MAJOR = 1;
static int16_t EDAMEDAM_VERSION_MINOR = 27;

@implementation EDAMUserStoreConstants
+ (int16_t) EDAM_VERSION_MAJOR{
  return EDAMEDAM_VERSION_MAJOR;
}
+ (int16_t) EDAM_VERSION_MINOR{
  return EDAMEDAM_VERSION_MINOR;
}
@end

@implementation EDAMUserStoreClient
{
  id <TProtocol> _inProtocol;
  id <TProtocol> _outProtocol;
}
- (id) initWithProtocol: (id <TProtocol>) protocol
{
  return [self initWithInProtocol: protocol outProtocol: protocol];
}

- (id) initWithInProtocol: (id <TProtocol>) anInProtocol outProtocol: (id <TProtocol>) anOutProtocol
{
  self = [super init];
  if (self != nil)  {
    _inProtocol = anInProtocol;
    _outProtocol = anOutProtocol;
  }
  return self;
}

- (BOOL) checkVersion: (NSString *) clientName edamVersionMajor: (int16_t) edamVersionMajor edamVersionMinor: (int16_t) edamVersionMinor
{
  [TProtocolUtil sendMessage:@"checkVersion"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"clientName"], clientName, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:2 type:TType_I16 optional:NO name:@"edamVersionMajor"], @(edamVersionMajor), nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:3 type:TType_I16 optional:NO name:@"edamVersionMinor"], @(edamVersionMinor), nil],
                            ]];
  return [[TProtocolUtil readMessage:@"checkVersion"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_BOOL optional:NO name:@"success"],
                              ]] boolValue];
}

- (EDAMBootstrapInfo *) getBootstrapInfo: (NSString *) locale
{
  [TProtocolUtil sendMessage:@"getBootstrapInfo"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"locale"], locale, nil],
                            ]];
  return [TProtocolUtil readMessage:@"getBootstrapInfo"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_STRUCT optional:NO name:@"success" valueType:TType_STRUCT valueClass:[EDAMBootstrapInfo class]],
                              ]];
}

- (EDAMAuthenticationResult *) authenticate: (NSString *) username password: (NSString *) password consumerKey: (NSString *) consumerKey consumerSecret: (NSString *) consumerSecret supportsTwoFactor: (BOOL) supportsTwoFactor
{
  [TProtocolUtil sendMessage:@"authenticate"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"username"], username, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:2 type:TType_STRING optional:NO name:@"password"], password, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:3 type:TType_STRING optional:NO name:@"consumerKey"], consumerKey, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:4 type:TType_STRING optional:NO name:@"consumerSecret"], consumerSecret, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:5 type:TType_BOOL optional:NO name:@"supportsTwoFactor"], @(supportsTwoFactor), nil],
                            ]];
  return [TProtocolUtil readMessage:@"authenticate"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_STRUCT optional:NO name:@"success" valueType:TType_STRUCT valueClass:[EDAMAuthenticationResult class]],
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              ]];
}

- (EDAMAuthenticationResult *) authenticateLongSession: (NSString *) username password: (NSString *) password consumerKey: (NSString *) consumerKey consumerSecret: (NSString *) consumerSecret deviceIdentifier: (NSString *) deviceIdentifier deviceDescription: (NSString *) deviceDescription supportsTwoFactor: (BOOL) supportsTwoFactor
{
  [TProtocolUtil sendMessage:@"authenticateLongSession"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"username"], username, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:2 type:TType_STRING optional:NO name:@"password"], password, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:3 type:TType_STRING optional:NO name:@"consumerKey"], consumerKey, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:4 type:TType_STRING optional:NO name:@"consumerSecret"], consumerSecret, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:5 type:TType_STRING optional:NO name:@"deviceIdentifier"], deviceIdentifier, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:6 type:TType_STRING optional:NO name:@"deviceDescription"], deviceDescription, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:7 type:TType_BOOL optional:NO name:@"supportsTwoFactor"], @(supportsTwoFactor), nil],
                            ]];
  return [TProtocolUtil readMessage:@"authenticateLongSession"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_STRUCT optional:NO name:@"success" valueType:TType_STRUCT valueClass:[EDAMAuthenticationResult class]],
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              ]];
}

- (EDAMAuthenticationResult *) completeTwoFactorAuthentication: (NSString *) authenticationToken oneTimeCode: (NSString *) oneTimeCode deviceIdentifier: (NSString *) deviceIdentifier deviceDescription: (NSString *) deviceDescription
{
  [TProtocolUtil sendMessage:@"completeTwoFactorAuthentication"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"authenticationToken"], authenticationToken, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:2 type:TType_STRING optional:NO name:@"oneTimeCode"], oneTimeCode, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:3 type:TType_STRING optional:NO name:@"deviceIdentifier"], deviceIdentifier, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:4 type:TType_STRING optional:NO name:@"deviceDescription"], deviceDescription, nil],
                            ]];
  return [TProtocolUtil readMessage:@"completeTwoFactorAuthentication"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_STRUCT optional:NO name:@"success" valueType:TType_STRUCT valueClass:[EDAMAuthenticationResult class]],
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              ]];
}

- (void) revokeLongSession: (NSString *) authenticationToken
{
  [TProtocolUtil sendMessage:@"revokeLongSession"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"authenticationToken"], authenticationToken, nil],
                            ]];
  [TProtocolUtil readMessage:@"revokeLongSession"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              ]];
}

- (EDAMAuthenticationResult *) authenticateToBusiness: (NSString *) authenticationToken
{
  [TProtocolUtil sendMessage:@"authenticateToBusiness"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"authenticationToken"], authenticationToken, nil],
                            ]];
  return [TProtocolUtil readMessage:@"authenticateToBusiness"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_STRUCT optional:NO name:@"success" valueType:TType_STRUCT valueClass:[EDAMAuthenticationResult class]],
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              ]];
}

- (EDAMAuthenticationResult *) refreshAuthentication: (NSString *) authenticationToken
{
  [TProtocolUtil sendMessage:@"refreshAuthentication"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"authenticationToken"], authenticationToken, nil],
                            ]];
  return [TProtocolUtil readMessage:@"refreshAuthentication"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_STRUCT optional:NO name:@"success" valueType:TType_STRUCT valueClass:[EDAMAuthenticationResult class]],
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              ]];
}

- (EDAMUser *) getUser: (NSString *) authenticationToken
{
  [TProtocolUtil sendMessage:@"getUser"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"authenticationToken"], authenticationToken, nil],
                            ]];
  return [TProtocolUtil readMessage:@"getUser"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_STRUCT optional:NO name:@"success" valueType:TType_STRUCT valueClass:[EDAMUser class]],
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              ]];
}

- (EDAMPublicUserInfo *) getPublicUserInfo: (NSString *) username
{
  [TProtocolUtil sendMessage:@"getPublicUserInfo"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"username"], username, nil],
                            ]];
  return [TProtocolUtil readMessage:@"getPublicUserInfo"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_STRUCT optional:NO name:@"success" valueType:TType_STRUCT valueClass:[EDAMPublicUserInfo class]],
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"notFoundException" valueType:TType_STRUCT valueClass:[EDAMNotFoundException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              [FATField fieldWithIndex:3 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              ]];
}

- (EDAMPremiumInfo *) getPremiumInfo: (NSString *) authenticationToken
{
  [TProtocolUtil sendMessage:@"getPremiumInfo"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"authenticationToken"], authenticationToken, nil],
                            ]];
  return [TProtocolUtil readMessage:@"getPremiumInfo"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_STRUCT optional:NO name:@"success" valueType:TType_STRUCT valueClass:[EDAMPremiumInfo class]],
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              ]];
}

- (NSString *) getNoteStoreUrl: (NSString *) authenticationToken
{
  [TProtocolUtil sendMessage:@"getNoteStoreUrl"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"authenticationToken"], authenticationToken, nil],
                            ]];
  return [TProtocolUtil readMessage:@"getNoteStoreUrl"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:0 type:TType_STRING optional:NO name:@"success"],
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              ]];
}

- (void) inviteToBusiness: (NSString *) authenticationToken emailAddress: (NSString *) emailAddress
{
  [TProtocolUtil sendMessage:@"inviteToBusiness"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"authenticationToken"], authenticationToken, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:2 type:TType_STRING optional:NO name:@"emailAddress"], emailAddress, nil],
                            ]];
  [TProtocolUtil readMessage:@"inviteToBusiness"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              ]];
}

- (void) removeFromBusiness: (NSString *) authenticationToken emailAddress: (NSString *) emailAddress
{
  [TProtocolUtil sendMessage:@"removeFromBusiness"
                  toProtocol:_outProtocol
                withArgPairs:@[
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:1 type:TType_STRING optional:NO name:@"authenticationToken"], authenticationToken, nil],
                               [NSArray arrayWithObjects:[FATField fieldWithIndex:2 type:TType_STRING optional:NO name:@"emailAddress"], emailAddress, nil],
                            ]];
  [TProtocolUtil readMessage:@"removeFromBusiness"
                fromProtocol:_inProtocol
           withResponseTypes:@[
                              [FATField fieldWithIndex:1 type:TType_STRUCT optional:NO name:@"userException" valueType:TType_STRUCT valueClass:[EDAMUserException class]],
                              [FATField fieldWithIndex:2 type:TType_STRUCT optional:NO name:@"systemException" valueType:TType_STRUCT valueClass:[EDAMSystemException class]],
                              [FATField fieldWithIndex:3 type:TType_STRUCT optional:NO name:@"notFoundException" valueType:TType_STRUCT valueClass:[EDAMNotFoundException class]],
                              ]];
}

@end

