.class final enum Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;
.super Ljava/lang/Enum;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/shadow/apache/commons/lang3/time/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ModifyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum CEILING:Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum ROUND:Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

.field public static final enum TRUNCATE:Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 126
    new-instance v0, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v1, "TRUNCATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;->TRUNCATE:Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    .line 131
    new-instance v1, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v2, "ROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;->ROUND:Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    .line 136
    new-instance v2, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    const-string v3, "CEILING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;->CEILING:Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    .line 122
    filled-new-array {v0, v1, v2}, [Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    move-result-object v0

    sput-object v0, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;->$VALUES:[Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;
    .locals 1

    .line 122
    const-class v0, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    return-object p0
.end method

.method public static values()[Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;
    .locals 1

    .line 122
    sget-object v0, Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;->$VALUES:[Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    invoke-virtual {v0}, [Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/shadow/apache/commons/lang3/time/DateUtils$ModifyType;

    return-object v0
.end method
