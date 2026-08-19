.class Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;
.super Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TypedValue;
.source "Safelist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Protocol"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 624
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TypedValue;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;
    .locals 1

    .line 628
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;

    invoke-direct {v0, p0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
