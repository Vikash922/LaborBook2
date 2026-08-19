.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field coreCharset:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

.field private final encoderThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/nio/charset/CharsetEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

.field private indentAmount:I

.field private outline:Z

.field private prettyPrint:Z

.field private syntax:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;->base:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    .line 412
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    .line 413
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->encoderThreadLocal:Ljava/lang/ThreadLocal;

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    const/4 v1, 0x0

    .line 417
    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline:Z

    .line 418
    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    .line 419
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    return-void
.end method

.method private partialClone()Ljava/lang/Object;
    .locals 2

    .line 578
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 580
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public charset(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 474
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    return-object p0
.end method

.method public charset(Ljava/nio/charset/Charset;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public charset()Ljava/nio/charset/Charset;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 569
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->partialClone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 571
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    .line 572
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    iput-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method

.method encoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->encoderThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CharsetEncoder;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prepareEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public escapeMode(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    return-object p0
.end method

.method public escapeMode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->escapeMode:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$EscapeMode;

    return-object v0
.end method

.method public indentAmount()I
    .locals 1

    .line 553
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    return v0
.end method

.method public indentAmount(I)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 562
    :goto_0
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(Z)V

    .line 563
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->indentAmount:I

    return-object p0
.end method

.method public outline(Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 544
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline:Z

    return-object p0
.end method

.method public outline()Z
    .locals 1

    .line 535
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->outline:Z

    return v0
.end method

.method prepareEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->encoderThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 482
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->getCoreCharsetByName(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->coreCharset:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities$CoreCharset;

    return-object v0
.end method

.method public prettyPrint(Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 525
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    return-object p0
.end method

.method public prettyPrint()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->prettyPrint:Z

    return v0
.end method

.method public syntax()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object v0
.end method

.method public syntax(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    return-object p0
.end method
