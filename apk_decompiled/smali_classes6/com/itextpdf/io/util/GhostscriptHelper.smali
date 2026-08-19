.class public Lcom/itextpdf/io/util/GhostscriptHelper;
.super Ljava/lang/Object;
.source "GhostscriptHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/util/GhostscriptHelper$GhostscriptExecutionException;
    }
.end annotation


# static fields
.field public static final GHOSTSCRIPT_ENVIRONMENT_VARIABLE:Ljava/lang/String; = "ITEXT_GS_EXEC"

.field static final GHOSTSCRIPT_ENVIRONMENT_VARIABLE_LEGACY:Ljava/lang/String; = "gsExec"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final GHOSTSCRIPT_KEYWORD:Ljava/lang/String; = "GPL Ghostscript"

.field private static final GHOSTSCRIPT_PARAMS:Ljava/lang/String; = " -dSAFER -dNOPAUSE -dBATCH -sDEVICE=png16m -r150 {0} -sOutputFile=\"{1}\" \"{2}\""

.field private static final PAGE_LIST_REGEX:Ljava/util/regex/Pattern;

.field private static final PAGE_NUMBER_PATTERN:Ljava/lang/String; = "%03d"

.field private static final RENDERED_IMAGE_EXTENSION:Ljava/lang/String; = "png"

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "itext_gs_io_temp"


# instance fields
.field private gsExec:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const-string v0, "^(\\d+,)*\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/util/GhostscriptHelper;->PAGE_LIST_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lcom/itextpdf/io/util/GhostscriptHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 102
    const-string p1, "ITEXT_GS_EXEC"

    invoke-static {p1}, Lcom/itextpdf/commons/utils/SystemUtil;->getPropertyOrEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 105
    const-string p1, "gsExec"

    invoke-static {p1}, Lcom/itextpdf/commons/utils/SystemUtil;->getPropertyOrEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    const-string v0, "GPL Ghostscript"

    invoke-static {p1, v0}, Lcom/itextpdf/io/util/CliCommandUtil;->isVersionCommandExecutable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Ghostscript command is not specified or specified incorrectly. Set the ITEXT_GS_EXEC environment variable to a CLI command that can run the Ghostscript application. See BUILDING.MD in the root of the repository for more details."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static formatImageNumber(I)Ljava/lang/String;
    .locals 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p0

    .line 245
    :goto_0
    div-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_0

    const/16 v2, 0x30

    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static validateImageFilePattern(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "%"

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static validatePageList(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 232
    sget-object v0, Lcom/itextpdf/io/util/GhostscriptHelper;->PAGE_LIST_REGEX:Ljava/util/regex/Pattern;

    .line 233
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public getCliExecutionCommand()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    return-object v0
.end method

.method public runGhostScriptImageGeneration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/io/util/GhostscriptHelper;->runGhostScriptImageGeneration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public runGhostScriptImageGeneration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 167
    const-string v0, "itext_gs_io_temp"

    invoke-static {p2}, Lcom/itextpdf/commons/utils/FileUtil;->directoryExists(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "<filename>"

    if-eqz v1, :cond_7

    .line 171
    invoke-static {p3}, Lcom/itextpdf/io/util/GhostscriptHelper;->validateImageFilePattern(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 174
    invoke-static {p4}, Lcom/itextpdf/io/util/GhostscriptHelper;->validatePageList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p4, :cond_0

    .line 177
    const-string p4, ""

    goto :goto_0

    :cond_0
    const-string v1, "-sPageList=<pagelist>"

    const-string v3, "<pagelist>"

    invoke-virtual {v1, v3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    :try_start_0
    invoke-static {p1, v0, v3}, Lcom/itextpdf/commons/utils/FileUtil;->createTempCopy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 184
    :try_start_1
    invoke-static {v0}, Lcom/itextpdf/commons/utils/FileUtil;->createTempDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 185
    :try_start_2
    const-string v7, " -dSAFER -dNOPAUSE -dBATCH -sDEVICE=png16m -r150 {0} -sOutputFile=\"{1}\" \"{2}\""

    new-array v8, v4, [Ljava/lang/String;

    const-string v9, "itext_gs_io_temp%03d.png"

    aput-object v9, v8, v5

    .line 186
    invoke-static {v0, v8}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v8

    .line 187
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {p4, v8, v6}, [Ljava/lang/Object;

    move-result-object p4

    .line 185
    invoke-static {v7, p4}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 190
    iget-object v7, p0, Lcom/itextpdf/io/util/GhostscriptHelper;->gsExec:Ljava/lang/String;

    invoke-static {v7, p4}, Lcom/itextpdf/commons/utils/SystemUtil;->runProcessAndWait(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 198
    invoke-static {v0, v5}, Lcom/itextpdf/commons/utils/FileUtil;->listFilesInDirectory(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move p1, v5

    .line 200
    :goto_1
    array-length p4, v3

    if-ge p1, p4, :cond_1

    .line 201
    aget-object p4, v3, p1

    new-array v2, v4, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 p1, p1, 0x1

    .line 204
    invoke-static {p1}, Lcom/itextpdf/io/util/GhostscriptHelper;->formatImageNumber(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 202
    invoke-static {p2, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {p4, v2}, Lcom/itextpdf/commons/utils/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz v3, :cond_2

    .line 210
    invoke-static {v3}, Lcom/itextpdf/commons/utils/FileUtil;->removeFiles([Ljava/lang/String;)Z

    .line 212
    :cond_2
    new-array p1, v1, [Ljava/lang/String;

    aput-object v0, p1, v5

    aput-object v6, p1, v4

    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->removeFiles([Ljava/lang/String;)Z

    return-void

    .line 192
    :cond_3
    :try_start_3
    invoke-static {v0, v5}, Lcom/itextpdf/commons/utils/FileUtil;->listFilesInDirectory(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 193
    new-instance p2, Lcom/itextpdf/io/util/GhostscriptHelper$GhostscriptExecutionException;

    const-string p3, "GhostScript failed for <filename>"

    .line 194
    invoke-virtual {p3, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itextpdf/io/util/GhostscriptHelper$GhostscriptExecutionException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v0, v3

    move-object v6, v0

    :goto_2
    if-eqz v3, :cond_4

    .line 210
    invoke-static {v3}, Lcom/itextpdf/commons/utils/FileUtil;->removeFiles([Ljava/lang/String;)Z

    .line 212
    :cond_4
    new-array p2, v1, [Ljava/lang/String;

    aput-object v0, p2, v5

    aput-object v6, p2, v4

    invoke-static {p2}, Lcom/itextpdf/commons/utils/FileUtil;->removeFiles([Ljava/lang/String;)Z

    .line 213
    throw p1

    .line 175
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid page list: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Invalid output image pattern: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 168
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Cannot open output directory for <filename>"

    .line 169
    invoke-virtual {p3, v2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
