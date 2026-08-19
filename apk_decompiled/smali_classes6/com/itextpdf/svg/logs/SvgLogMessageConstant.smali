.class public final Lcom/itextpdf/svg/logs/SvgLogMessageConstant;
.super Ljava/lang/Object;
.source "SvgLogMessageConstant.java"


# static fields
.field public static final CUSTOM_ABSTRACT_CSS_CONTEXT_NOT_SUPPORTED:Ljava/lang/String; = "Custom AbstractCssContext implementations are not supported yet"

.field public static final ERROR_INITIALIZING_DEFAULT_CSS:Ljava/lang/String; = "Error loading the default CSS. Initializing an empty style sheet."

.field public static final GRADIENT_INVALID_GRADIENT_UNITS_LOG:Ljava/lang/String; = "Could not recognize gradient units value {0}"

.field public static final GRADIENT_INVALID_SPREAD_METHOD_LOG:Ljava/lang/String; = "Could not recognize gradient spread method value {0}"

.field public static final MARKER_HEIGHT_IS_NEGATIVE_VALUE:Ljava/lang/String; = "markerHeight has negative value. Marker will not be rendered."

.field public static final MARKER_HEIGHT_IS_ZERO_VALUE:Ljava/lang/String; = "markerHeight has zero value. Marker will not be rendered."

.field public static final MARKER_WIDTH_IS_NEGATIVE_VALUE:Ljava/lang/String; = "markerWidth has negative value. Marker will not be rendered."

.field public static final MARKER_WIDTH_IS_ZERO_VALUE:Ljava/lang/String; = "markerWidth has zero value. Marker will not be rendered."

.field public static final MISSING_HEIGHT:Ljava/lang/String; = "Top Svg tag has no defined height attribute and viewbox height is not present, so browser default of 150px is used"

.field public static final MISSING_WIDTH:Ljava/lang/String; = "Top Svg tag has no defined width attribute and viewbox width is not present, so browser default of 300px is used"

.field public static final NONINVERTIBLE_TRANSFORMATION_MATRIX_USED_IN_CLIP_PATH:Ljava/lang/String; = "Non-invertible transformation matrix was used in a clipping path context. Clipped elements may show undefined behavior."

.field public static final PATTERN_INVALID_PATTERN_CONTENT_UNITS_LOG:Ljava/lang/String; = "Could not recognize patternContentUnits value {0}"

.field public static final PATTERN_INVALID_PATTERN_UNITS_LOG:Ljava/lang/String; = "Could not recognize patternUnits value {0}"

.field public static final PATTERN_WIDTH_OR_HEIGHT_IS_NEGATIVE:Ljava/lang/String; = "Pattern width or height is negative value. This pattern will not be rendered."

.field public static final PATTERN_WIDTH_OR_HEIGHT_IS_ZERO:Ljava/lang/String; = "Pattern width or height is zero. This pattern will not be rendered."

.field public static final UNABLE_TO_GET_INVERSE_MATRIX_DUE_TO_ZERO_DETERMINANT:Ljava/lang/String; = "Unable to get inverse transformation matrix and thus calculate a viewport for the element because some of the transformation matrices, which are written to document, have a determinant of zero value. A bbox of zero values will be used as a viewport for this element."

.field public static final UNABLE_TO_RETRIEVE_FONT:Ljava/lang/String; = "Unable to retrieve font:\n {0}"

.field public static final UNMAPPED_TAG:Ljava/lang/String; = "Could not find implementation for tag {0}"

.field public static final VIEWBOX_VALUE_MUST_BE_FOUR_NUMBERS:Ljava/lang/String; = "The viewBox value must be 4 numbers. This viewBox=\"{0}\" will not be processed."

.field public static final VIEWBOX_WIDTH_AND_HEIGHT_CANNOT_BE_NEGATIVE:Ljava/lang/String; = "The viewBox width and height cannot be negative. This viewBox=\"{0}\" will not be processed."

.field public static final VIEWBOX_WIDTH_OR_HEIGHT_IS_ZERO:Ljava/lang/String; = "The viewBox width or height is zero. The element with this viewBox will not be rendered."


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
