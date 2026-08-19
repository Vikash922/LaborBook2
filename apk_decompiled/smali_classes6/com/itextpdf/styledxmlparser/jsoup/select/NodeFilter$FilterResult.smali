.class public final enum Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;
.super Ljava/lang/Enum;
.source "NodeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

.field public static final enum CONTINUE:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

.field public static final enum REMOVE:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

.field public static final enum SKIP_CHILDREN:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

.field public static final enum SKIP_ENTIRELY:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

.field public static final enum STOP:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 52
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    const-string v1, "CONTINUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    .line 54
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    const-string v2, "SKIP_CHILDREN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->SKIP_CHILDREN:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    .line 56
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    const-string v3, "SKIP_ENTIRELY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->SKIP_ENTIRELY:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    .line 58
    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    const-string v4, "REMOVE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->REMOVE:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    .line 60
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    const-string v5, "STOP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->STOP:Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    .line 50
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->$VALUES:[Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;
    .locals 1

    .line 50
    const-class v0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;
    .locals 1

    .line 50
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->$VALUES:[Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    invoke-virtual {v0}, [Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/styledxmlparser/jsoup/select/NodeFilter$FilterResult;

    return-object v0
.end method
