.class public Lcom/itextpdf/io/util/ImageMagickHelper;
.super Ljava/lang/Object;
.source "ImageMagickHelper.java"


# static fields
.field private static final DIFF_PIXELS_OUTPUT_REGEXP:Ljava/lang/String; = "^\\d+\\.*\\d*(e\\+\\d+)?"

.field public static final MAGICK_COMPARE_ENVIRONMENT_VARIABLE:Ljava/lang/String; = "ITEXT_MAGICK_COMPARE_EXEC"

.field static final MAGICK_COMPARE_ENVIRONMENT_VARIABLE_LEGACY:Ljava/lang/String; = "compareExec"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final MAGICK_COMPARE_KEYWORD:Ljava/lang/String; = "ImageMagick Studio LLC"

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "itext_im_io_temp"

.field private static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private compareExec:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-string v0, "^\\d+\\.*\\d*(e\\+\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/ImageMagickHelper;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lcom/itextpdf/io/util/ImageMagickHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 98
    const-string p1, "ITEXT_MAGICK_COMPARE_EXEC"

    invoke-static {p1}, Lcom/itextpdf/commons/utils/SystemUtil;->getPropertyOrEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 100
    const-string p1, "compareExec"

    invoke-static {p1}, Lcom/itextpdf/commons/utils/SystemUtil;->getPropertyOrEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    const-string v0, "ImageMagick Studio LLC"

    invoke-static {p1, v0}, Lcom/itextpdf/io/util/CliCommandUtil;->isVersionCommandExecutable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageMagick comparison command specified incorrectly. Set the ITEXT_MAGICK_COMPARE_EXEC environment variable with the CLI command which can run the ImageMagic comparison. See BUILDING.MD in the root of the repository for more details."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parseImageMagickProcessOutput(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 257
    :cond_0
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 259
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 261
    :try_start_0
    sget-object v4, Lcom/itextpdf/io/util/ImageMagickHelper;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 262
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 263
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImageMagick process execution finished with errors: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageMagick process output is null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateFuzziness(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 239
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :catch_0
    return v1
.end method


# virtual methods
.method public getCliExecutionCommand()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    return-object v0
.end method

.method public runImageMagickImageCompare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/io/util/ImageMagickHelper;->runImageMagickImageCompare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public runImageMagickImageCompare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/io/util/ImageMagickHelper;->runImageMagickImageCompareAndGetResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/util/ImageMagickCompareResult;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/itextpdf/io/util/ImageMagickCompareResult;->isComparingResultSuccessful()Z

    move-result p1

    return p1
.end method

.method public runImageMagickImageCompareAndGetResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/util/ImageMagickCompareResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 201
    const-string v0, "\' \'"

    const-string v1, "itext_im_io_temp"

    invoke-static {p4}, Lcom/itextpdf/io/util/ImageMagickHelper;->validateFuzziness(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p4, :cond_0

    .line 204
    const-string p4, ""

    goto :goto_0

    :cond_0
    const-string v2, " -metric AE -fuzz <fuzzValue>%"

    const-string v3, "<fuzzValue>"

    invoke-virtual {v2, v3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 210
    :try_start_0
    invoke-static {p1, v1, v6}, Lcom/itextpdf/commons/utils/FileUtil;->createTempCopy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 211
    :try_start_1
    invoke-static {p2, v1, v6}, Lcom/itextpdf/commons/utils/FileUtil;->createTempCopy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    const-string v7, ".png"

    invoke-static {v1, v7}, Lcom/itextpdf/commons/utils/FileUtil;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, " \'"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "\'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 220
    iget-object v0, p0, Lcom/itextpdf/io/util/ImageMagickHelper;->compareExec:Ljava/lang/String;

    invoke-static {v0, p4}, Lcom/itextpdf/commons/utils/SystemUtil;->runProcessAndGetProcessInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/commons/utils/ProcessInfo;

    move-result-object p4

    .line 221
    invoke-virtual {p4}, Lcom/itextpdf/commons/utils/ProcessInfo;->getExitCode()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    .line 222
    :goto_1
    invoke-virtual {p4}, Lcom/itextpdf/commons/utils/ProcessInfo;->getProcessErrOutput()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/itextpdf/io/util/ImageMagickHelper;->parseImageMagickProcessOutput(Ljava/lang/String;)J

    move-result-wide v7

    .line 223
    new-instance p4, Lcom/itextpdf/io/util/ImageMagickCompareResult;

    invoke-direct {p4, v0, v7, v8}, Lcom/itextpdf/io/util/ImageMagickCompareResult;-><init>(ZJ)V

    .line 225
    invoke-static {v6}, Lcom/itextpdf/commons/utils/FileUtil;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-static {v6, p3}, Lcom/itextpdf/commons/utils/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :cond_2
    new-array p3, v3, [Ljava/lang/String;

    aput-object p1, p3, v5

    aput-object p2, p3, v4

    aput-object v6, p3, v2

    invoke-static {p3}, Lcom/itextpdf/commons/utils/FileUtil;->removeFiles([Ljava/lang/String;)Z

    return-object p4

    :catchall_0
    move-exception p3

    move-object v9, v6

    move-object v6, p1

    move-object p1, v9

    goto :goto_2

    :catchall_1
    move-exception p3

    move-object p2, v6

    move-object v6, p1

    move-object p1, p2

    goto :goto_2

    :catchall_2
    move-exception p3

    move-object p1, v6

    move-object p2, p1

    :goto_2
    new-array p4, v3, [Ljava/lang/String;

    aput-object v6, p4, v5

    aput-object p2, p4, v4

    aput-object p1, p4, v2

    invoke-static {p4}, Lcom/itextpdf/commons/utils/FileUtil;->removeFiles([Ljava/lang/String;)Z

    .line 231
    throw p3

    .line 202
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid fuzziness value: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public runImageMagickImageCompareWithThreshold(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/itextpdf/io/util/ImageMagickHelper;->runImageMagickImageCompareAndGetResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/util/ImageMagickCompareResult;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Lcom/itextpdf/io/util/ImageMagickCompareResult;->isComparingResultSuccessful()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/io/util/ImageMagickCompareResult;->getDiffPixels()J

    move-result-wide p1

    cmp-long p1, p1, p5

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    return p3
.end method
