//
//  Constants.swift
//  Smack
//
//  Created by Kudryatzhan Arziyev on 12/14/17.
//  Copyright © 2017 Kudryatzhan Arziyev. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ success: Bool) -> Void

// URL Constants
let BASE_URL = "https://smackclone.herokuapp.com/v1/"
let URL_REGISTER = BASE_URL + "account/register"
let URL_LOGIN = BASE_URL + "account/login"

// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


// Headers
let HEADER = [
    "Content-Type": "application/json; charset=utf-8"
]
