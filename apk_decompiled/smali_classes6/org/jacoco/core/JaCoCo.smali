.class public final Lorg/jacoco/core/JaCoCo;
.super Ljava/lang/Object;
.source "JaCoCo.java"


# static fields
.field public static final COMMITID:Ljava/lang/String;

.field public static final COMMITID_SHORT:Ljava/lang/String;

.field public static final HOMEURL:Ljava/lang/String;

.field public static final RUNTIMEPACKAGE:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    const-string v0, "org.jacoco.core.jacoco"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    .line 42
    const-string v1, "VERSION"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/core/JaCoCo;->VERSION:Ljava/lang/String;

    .line 43
    const-string v1, "COMMITID"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/core/JaCoCo;->COMMITID:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x7

    .line 44
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/core/JaCoCo;->COMMITID_SHORT:Ljava/lang/String;

    .line 45
    const-string v1, "HOMEURL"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jacoco/core/JaCoCo;->HOMEURL:Ljava/lang/String;

    .line 46
    const-string v1, "RUNTIMEPACKAGE"

    invoke-virtual {v0, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jacoco/core/JaCoCo;->RUNTIMEPACKAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
