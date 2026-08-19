.class Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;
.super Ljava/lang/Object;
.source "CompareTool.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/utils/CompareTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PngFileFilter"
.end annotation


# instance fields
.field private currentOutPdfName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1825
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;->currentOutPdfName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .line 1829
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1830
    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1831
    const-string v1, "cmp_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;->currentOutPdfName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
