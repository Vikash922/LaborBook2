.class public Lcom/itextpdf/styledxmlparser/css/validate/impl/datatype/CssQuotesValidator;
.super Ljava/lang/Object;
.source "CssQuotesValidator.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/css/validate/ICssDataTypeValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;->createQuotes(Ljava/lang/String;Z)Lcom/itextpdf/styledxmlparser/css/resolve/CssQuotes;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
