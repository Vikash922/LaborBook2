.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EscapeMode"
.end annotation


# static fields
.field public static base:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

.field public static extended:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

.field public static xhtml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;


# instance fields
.field codeKeys:[I

.field codeVals:[I

.field nameKeys:[Ljava/lang/String;

.field nameVals:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/EntitiesData;->xmlPoints:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->xhtml:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 58
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/EntitiesData;->basePoints:Ljava/lang/String;

    const/16 v2, 0x6a

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->base:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 62
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/EntitiesData;->fullPoints:Ljava/lang/String;

    const/16 v2, 0x84d

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->extended:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;Ljava/lang/String;I)V

    return-void
.end method

.method private size()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method


# virtual methods
.method codepointForName(Ljava/lang/String;)I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameKeys:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/itextpdf/io/util/ArrayUtil;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codeVals:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method nameForCodepoint(I)Ljava/lang/String;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->nameVals:[Ljava/lang/String;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->codeKeys:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ne v2, p1, :cond_0

    aget-object p1, v1, v3

    goto :goto_0

    :cond_0
    aget-object p1, v1, v0

    :goto_0
    return-object p1

    .line 89
    :cond_1
    const-string p1, ""

    return-object p1
.end method
