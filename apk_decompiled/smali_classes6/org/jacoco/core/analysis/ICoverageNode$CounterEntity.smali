.class public final enum Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;
.super Ljava/lang/Enum;
.source "ICoverageNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/analysis/ICoverageNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CounterEntity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

.field public static final enum BRANCH:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

.field public static final enum CLASS:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

.field public static final enum COMPLEXITY:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

.field public static final enum INSTRUCTION:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

.field public static final enum LINE:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

.field public static final enum METHOD:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    new-instance v0, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    const-string v1, "INSTRUCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;->INSTRUCTION:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    .line 55
    new-instance v1, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    const-string v2, "BRANCH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;->BRANCH:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    .line 58
    new-instance v2, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    const-string v3, "LINE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;->LINE:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    .line 61
    new-instance v3, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    const-string v4, "COMPLEXITY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;->COMPLEXITY:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    .line 64
    new-instance v4, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    const-string v5, "METHOD"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;->METHOD:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    .line 67
    new-instance v5, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    const-string v6, "CLASS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;->CLASS:Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    .line 49
    filled-new-array/range {v0 .. v5}, [Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    move-result-object v0

    sput-object v0, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;->$VALUES:[Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;
    .locals 1

    .line 49
    const-class v0, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    return-object p0
.end method

.method public static final values()[Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;
    .locals 1

    .line 49
    sget-object v0, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;->$VALUES:[Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    invoke-virtual {v0}, [Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;

    return-object v0
.end method
