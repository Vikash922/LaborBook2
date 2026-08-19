.class public final enum Lcom/itextpdf/svg/MarkerVertexType;
.super Ljava/lang/Enum;
.source "MarkerVertexType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/svg/MarkerVertexType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/svg/MarkerVertexType;

.field public static final enum MARKER_END:Lcom/itextpdf/svg/MarkerVertexType;

.field public static final enum MARKER_MID:Lcom/itextpdf/svg/MarkerVertexType;

.field public static final enum MARKER_START:Lcom/itextpdf/svg/MarkerVertexType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lcom/itextpdf/svg/MarkerVertexType;

    const/4 v1, 0x0

    const-string v2, "marker-start"

    const-string v3, "MARKER_START"

    invoke-direct {v0, v3, v1, v2}, Lcom/itextpdf/svg/MarkerVertexType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_START:Lcom/itextpdf/svg/MarkerVertexType;

    .line 40
    new-instance v1, Lcom/itextpdf/svg/MarkerVertexType;

    const/4 v2, 0x1

    const-string v3, "marker-mid"

    const-string v4, "MARKER_MID"

    invoke-direct {v1, v4, v2, v3}, Lcom/itextpdf/svg/MarkerVertexType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_MID:Lcom/itextpdf/svg/MarkerVertexType;

    .line 45
    new-instance v2, Lcom/itextpdf/svg/MarkerVertexType;

    const/4 v3, 0x2

    const-string v4, "marker-end"

    const-string v5, "MARKER_END"

    invoke-direct {v2, v5, v3, v4}, Lcom/itextpdf/svg/MarkerVertexType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/itextpdf/svg/MarkerVertexType;->MARKER_END:Lcom/itextpdf/svg/MarkerVertexType;

    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/itextpdf/svg/MarkerVertexType;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/svg/MarkerVertexType;->$VALUES:[Lcom/itextpdf/svg/MarkerVertexType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/itextpdf/svg/MarkerVertexType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/svg/MarkerVertexType;
    .locals 1

    .line 31
    const-class v0, Lcom/itextpdf/svg/MarkerVertexType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/svg/MarkerVertexType;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/svg/MarkerVertexType;
    .locals 1

    .line 31
    sget-object v0, Lcom/itextpdf/svg/MarkerVertexType;->$VALUES:[Lcom/itextpdf/svg/MarkerVertexType;

    invoke-virtual {v0}, [Lcom/itextpdf/svg/MarkerVertexType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/svg/MarkerVertexType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/itextpdf/svg/MarkerVertexType;->name:Ljava/lang/String;

    return-object v0
.end method
