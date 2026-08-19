package com.truecaller.android.sdk.oAuth;

/* JADX INFO: loaded from: classes5.dex */
public final class TcException {
    public static final int TYPE_API = 2;
    public static final String TYPE_APP_SIGNATURE_MISSING = "Could not fetch application's signature";
    public static final String TYPE_CLIENT_MISSING = "No compatible client available. Please change your scope";
    public static final String TYPE_CODE_CHALLENGE_MISSING = "Code challenge cannot be null or empty";
    public static final int TYPE_INCOMPLETE_INFO = 5;
    public static final String TYPE_INTERNAL_SERVER_ERROR = "internal service error";
    public static final String TYPE_INVALID_NAME_MESSAGE = "Please provide a valid name";
    public static final int TYPE_MISSING_API_CALL = 3;
    static final String TYPE_MISSING_CLIENT_ID = "Add client id in your manifest";
    public static final String TYPE_MISSING_CREATE_CALL_MESSAGE = "Please call createInstallation first";
    public static final int TYPE_MISSING_PERMISSION = 4;
    public static final String TYPE_MISSING_PERMISSIONS_MESSAGE = "Required permissions missing";
    static final String TYPE_MISSING_SCOPES = "OAuth scopes cannot be null or empty";
    static final String TYPE_MISSING_STATE = "OAuth state cannot be null or empty";
    static final String TYPE_SDK_NOT_INITIALIZED = "Please call init() on TcSdk first";
    public static final int TYPE_UNKNOWN = 1;
    public static final String TYPE_UNKNOWN_MESSAGE = "Unknown error";
    private final String mExceptionMessage;
    private final int mExceptionType;

    public TcException(int i, String str) {
        this.mExceptionType = i;
        this.mExceptionMessage = str;
    }

    public int getExceptionType() {
        return this.mExceptionType;
    }

    public String getExceptionMessage() {
        return this.mExceptionMessage;
    }
}
