.class public final enum Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

.field public static final enum Character:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

.field public static final enum Comment:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

.field public static final enum Doctype:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

.field public static final enum EOF:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

.field public static final enum EndTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

.field public static final enum StartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 448
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    const-string v1, "Doctype"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Doctype:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    .line 449
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    const-string v2, "StartTag"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->StartTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    .line 450
    new-instance v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    const-string v3, "EndTag"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->EndTag:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    .line 451
    new-instance v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    const-string v4, "Comment"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Comment:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    .line 452
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    const-string v5, "Character"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->Character:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    .line 453
    new-instance v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    const-string v6, "EOF"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->EOF:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    .line 447
    filled-new-array/range {v0 .. v5}, [Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->$VALUES:[Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 447
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;
    .locals 1

    .line 447
    const-class v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;
    .locals 1

    .line 447
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->$VALUES:[Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    invoke-virtual {v0}, [Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    return-object v0
.end method
