.class public final synthetic Lcom/itextpdf/commons/utils/ZipFileWriter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/itextpdf/commons/utils/ZipFileWriter$ZipWriter;


# instance fields
.field public final synthetic f$0:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/commons/utils/ZipFileWriter$$ExternalSyntheticLambda1;->f$0:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final write(Ljava/util/zip/ZipOutputStream;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/itextpdf/commons/utils/ZipFileWriter$$ExternalSyntheticLambda1;->f$0:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/ZipFileWriter;->lambda$addEntry$0(Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V

    return-void
.end method
