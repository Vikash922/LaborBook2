.class public final Lcom/truecaller/android/sdk/oAuth/TcException;
.super Ljava/lang/Object;
.source "TcException.java"


# static fields
.field public static final TYPE_API:I = 0x2

.field public static final TYPE_APP_SIGNATURE_MISSING:Ljava/lang/String; = "Could not fetch application\'s signature"

.field public static final TYPE_CLIENT_MISSING:Ljava/lang/String; = "No compatible client available. Please change your scope"

.field public static final TYPE_CODE_CHALLENGE_MISSING:Ljava/lang/String; = "Code challenge cannot be null or empty"

.field public static final TYPE_INCOMPLETE_INFO:I = 0x5

.field public static final TYPE_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "internal service error"

.field public static final TYPE_INVALID_NAME_MESSAGE:Ljava/lang/String; = "Please provide a valid name"

.field public static final TYPE_MISSING_API_CALL:I = 0x3

.field static final TYPE_MISSING_CLIENT_ID:Ljava/lang/String; = "Add client id in your manifest"

.field public static final TYPE_MISSING_CREATE_CALL_MESSAGE:Ljava/lang/String; = "Please call createInstallation first"

.field public static final TYPE_MISSING_PERMISSION:I = 0x4

.field public static final TYPE_MISSING_PERMISSIONS_MESSAGE:Ljava/lang/String; = "Required permissions missing"

.field static final TYPE_MISSING_SCOPES:Ljava/lang/String; = "OAuth scopes cannot be null or empty"

.field static final TYPE_MISSING_STATE:Ljava/lang/String; = "OAuth state cannot be null or empty"

.field static final TYPE_SDK_NOT_INITIALIZED:Ljava/lang/String; = "Please call init() on TcSdk first"

.field public static final TYPE_UNKNOWN:I = 0x1

.field public static final TYPE_UNKNOWN_MESSAGE:Ljava/lang/String; = "Unknown error"


# instance fields
.field private final mExceptionMessage:Ljava/lang/String;

.field private final mExceptionType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/truecaller/android/sdk/oAuth/TcException;->mExceptionType:I

    .line 68
    iput-object p2, p0, Lcom/truecaller/android/sdk/oAuth/TcException;->mExceptionMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExceptionMessage()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/truecaller/android/sdk/oAuth/TcException;->mExceptionMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptionType()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/truecaller/android/sdk/oAuth/TcException;->mExceptionType:I

    return v0
.end method
