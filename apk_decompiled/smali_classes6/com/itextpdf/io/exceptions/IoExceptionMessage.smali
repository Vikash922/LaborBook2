.class public final Lcom/itextpdf/io/exceptions/IoExceptionMessage;
.super Ljava/lang/Object;
.source "IoExceptionMessage.java"


# static fields
.field public static final ALREADY_CLOSED:Ljava/lang/String; = "Already closed"

.field public static final CANNOT_OPEN_OUTPUT_DIRECTORY:Ljava/lang/String; = "Cannot open output directory for <filename>"

.field public static final COMPARE_COMMAND_IS_NOT_SPECIFIED:Ljava/lang/String; = "ImageMagick comparison command is not specified. Set the ITEXT_MAGICK_COMPARE_EXEC environment variable with the CLI command which can run the ImageMagic comparison. See BUILDING.MD in the root of the repository for more details."

.field public static final COMPARE_COMMAND_SPECIFIED_INCORRECTLY:Ljava/lang/String; = "ImageMagick comparison command specified incorrectly. Set the ITEXT_MAGICK_COMPARE_EXEC environment variable with the CLI command which can run the ImageMagic comparison. See BUILDING.MD in the root of the repository for more details."

.field public static final GHOSTSCRIPT_FAILED:Ljava/lang/String; = "GhostScript failed for <filename>"

.field public static final GS_ENVIRONMENT_VARIABLE_IS_NOT_SPECIFIED:Ljava/lang/String; = "Ghostscript command is not specified or specified incorrectly. Set the ITEXT_GS_EXEC environment variable to a CLI command that can run the Ghostscript application. See BUILDING.MD in the root of the repository for more details."

.field public static final IMAGE_MAGICK_OUTPUT_IS_NULL:Ljava/lang/String; = "ImageMagick process output is null."

.field public static final IMAGE_MAGICK_PROCESS_EXECUTION_FAILED:Ljava/lang/String; = "ImageMagick process execution finished with errors: "


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
