.class public final enum Lorg/jacoco/core/analysis/ICoverageNode$ElementType;
.super Ljava/lang/Enum;
.source "ICoverageNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/analysis/ICoverageNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jacoco/core/analysis/ICoverageNode$ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

.field public static final enum BUNDLE:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

.field public static final enum CLASS:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

.field public static final enum GROUP:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

.field public static final enum METHOD:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

.field public static final enum PACKAGE:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

.field public static final enum SOURCEFILE:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 27
    new-instance v0, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    const-string v1, "METHOD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;->METHOD:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    .line 30
    new-instance v1, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    const-string v2, "CLASS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;->CLASS:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    .line 33
    new-instance v2, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    const-string v3, "SOURCEFILE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;->SOURCEFILE:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    .line 36
    new-instance v3, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    const-string v4, "PACKAGE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;->PACKAGE:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    .line 39
    new-instance v4, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    const-string v5, "BUNDLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;->BUNDLE:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    .line 42
    new-instance v5, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    const-string v6, "GROUP"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;->GROUP:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    .line 24
    filled-new-array/range {v0 .. v5}, [Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    move-result-object v0

    sput-object v0, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;->$VALUES:[Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jacoco/core/analysis/ICoverageNode$ElementType;
    .locals 1

    .line 24
    const-class v0, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    return-object p0
.end method

.method public static final values()[Lorg/jacoco/core/analysis/ICoverageNode$ElementType;
    .locals 1

    .line 24
    sget-object v0, Lorg/jacoco/core/analysis/ICoverageNode$ElementType;->$VALUES:[Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    invoke-virtual {v0}, [Lorg/jacoco/core/analysis/ICoverageNode$ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    return-object v0
.end method
