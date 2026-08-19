.class public Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;
.super Ljava/lang/Object;
.source "CreateInstallationModel.java"


# static fields
.field private static final CLIENT_ID:I = 0xf

.field private static final CLIENT_OS:Ljava/lang/String; = "android"


# instance fields
.field private airplaneModeDisabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "airplaneModeDisabled"
    .end annotation
.end field

.field private final clientId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "clientId"
    .end annotation
.end field

.field public final countryCodeName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countryCodeName"
    .end annotation
.end field

.field public final deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deviceId"
    .end annotation
.end field

.field public final hasTruecaller:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hasTruecaller"
    .end annotation
.end field

.field private final os:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "os"
    .end annotation
.end field

.field private final osId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osId"
    .end annotation
.end field

.field public final phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phoneNumber"
    .end annotation
.end field

.field private phonePermission:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phonePermission"
    .end annotation
.end field

.field public final requestNonce:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestNonce"
    .end annotation
.end field

.field private simState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "simState"
    .end annotation
.end field

.field private final version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p3, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->phoneNumber:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->countryCodeName:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->deviceId:Ljava/lang/String;

    const/16 p2, 0xf

    .line 82
    iput p2, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->clientId:I

    .line 83
    iput p2, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->osId:I

    .line 84
    const-string p2, "android"

    iput-object p2, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->os:Ljava/lang/String;

    .line 85
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->version:Ljava/lang/String;

    .line 86
    iput-boolean p5, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->hasTruecaller:Z

    .line 87
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->requestNonce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setAirplaneModeDisabled(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->airplaneModeDisabled:Z

    return-void
.end method

.method public setPhonePermission(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->phonePermission:Z

    return-void
.end method

.method public setSimState(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/truecaller/android/sdk/common/models/CreateInstallationModel;->simState:I

    return-void
.end method
