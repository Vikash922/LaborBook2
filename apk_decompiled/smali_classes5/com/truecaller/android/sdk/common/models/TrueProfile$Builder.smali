.class public final Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;
.super Ljava/lang/Object;
.source "TrueProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/android/sdk/common/models/TrueProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private final firstName:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private final lastName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetcity(Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;->city:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemail(Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;->email:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstName(Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;->firstName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgender(Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;->gender:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastName(Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;->lastName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;->firstName:Ljava/lang/String;

    .line 195
    iput-object p2, p0, Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;->lastName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/truecaller/android/sdk/common/models/TrueProfile;
    .locals 2

    .line 214
    new-instance v0, Lcom/truecaller/android/sdk/common/models/TrueProfile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/android/sdk/common/models/TrueProfile;-><init>(Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;Lcom/truecaller/android/sdk/common/models/TrueProfile-IA;)V

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;->city:Ljava/lang/String;

    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;->email:Ljava/lang/String;

    return-object p0
.end method

.method public setGender(Ljava/lang/String;)Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/truecaller/android/sdk/common/models/TrueProfile$Builder;->gender:Ljava/lang/String;

    return-object p0
.end method
