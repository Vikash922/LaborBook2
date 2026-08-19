.class Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;
.super Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TypedValue;
.source "Safelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttributeKey"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 604
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TypedValue;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;
    .locals 1

    .line 608
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
