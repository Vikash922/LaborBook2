.class public final Lcom/itextpdf/svg/exceptions/SvgExceptionMessageConstant;
.super Ljava/lang/Object;
.source "SvgExceptionMessageConstant.java"


# static fields
.field public static final ARC_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0:Ljava/lang/String; = "(rx ry rot largearc sweep x y)+ parameters are expected for elliptical arcs. Got: {0}"

.field public static final COORDINATE_ARRAY_LENGTH_MUST_BY_DIVISIBLE_BY_CURRENT_COORDINATES_ARRAY_LENGTH:Ljava/lang/String; = "Array of current coordinates must have length that is divisible by the length of the array with current coordinates"

.field public static final COULD_NOT_DETERMINE_MIDDLE_POINT_OF_ELLIPTICAL_ARC:Ljava/lang/String; = "Could not determine the middle point of the ellipse traced by this elliptical arc"

.field public static final CURRENT_VIEWPORT_IS_NULL:Ljava/lang/String; = "The current viewport is null. The viewBox applying could not be processed."

.field public static final CURVE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0:Ljava/lang/String; = "(x1 y1 x2 y2 x y)+ parameters are expected for curves. Got: {0}"

.field public static final DRAW_NO_DRAW:Ljava/lang/String; = "The renderer cannot be drawn."

.field public static final FAILED_TO_PARSE_INPUTSTREAM:Ljava/lang/String; = "Failed to parse InputStream."

.field public static final FONT_NOT_FOUND:Ljava/lang/String; = "The font wasn\'t found."

.field public static final INVALID_CLOSEPATH_OPERATOR_USE:Ljava/lang/String; = "The close path operator (Z) may not be used before a move to operation (M)"

.field public static final INVALID_PATH_D_ATTRIBUTE_OPERATORS:Ljava/lang/String; = "Invalid operators found in path data attribute: {0}"

.field public static final INVALID_SMOOTH_CURVE_USE:Ljava/lang/String; = "The smooth curve operations (S, s, T, t) may not be used as a first operator in path."

.field public static final INVALID_TRANSFORM_DECLARATION:Ljava/lang/String; = "Transformation declaration is not formed correctly."

.field public static final I_NODE_ROOT_IS_NULL:Ljava/lang/String; = "Input root value is null"

.field public static final LINE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0:Ljava/lang/String; = "(x y)+ parameters are expected for lineTo operator. Got: {0}"

.field public static final MEET_OR_SLICE_ARGUMENT_IS_INCORRECT:Ljava/lang/String; = "The meetOrSlice argument is incorrect. It must be `meet`, `slice` or null."

.field public static final MOVE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0:Ljava/lang/String; = "(x y)+ parameters are expected for moveTo operator. Got: {0}"

.field public static final NAMED_OBJECT_NAME_NULL_OR_EMPTY:Ljava/lang/String; = "The name of the named object can\'t be null or empty."

.field public static final NAMED_OBJECT_NULL:Ljava/lang/String; = "A named object can\'t be null."

.field public static final NO_ROOT:Ljava/lang/String; = "No root found"

.field public static final PARAMETER_CANNOT_BE_NULL:Ljava/lang/String; = "Parameters cannot be null."

.field public static final PATH_OBJECT_MUST_HAVE_D_ATTRIBUTE:Ljava/lang/String; = "A Path object must have an attribute with the name \'d\'."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POINTS_ATTRIBUTE_INVALID_LIST:Ljava/lang/String; = "Points attribute {0} on polyline tag does not contain a valid set of points"

.field public static final QUADRATIC_CURVE_TO_EXPECTS_FOLLOWING_PARAMETERS_GOT_0:Ljava/lang/String; = "(x1 y1 x y)+ parameters are expected for quadratic curves. Got: {0}"

.field public static final RENDERER_WITHOUT_OBJECT_BOUNDING_BOX:Ljava/lang/String; = "The renderer has no object bounding box."
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROOT_SVG_NO_BBOX:Ljava/lang/String; = "The root svg tag needs to have a bounding box defined."

.field public static final TAG_PARAMETER_NULL:Ljava/lang/String; = "Tag parameter must not be null"

.field public static final TRANSFORM_EMPTY:Ljava/lang/String; = "The transformation value is empty."

.field public static final TRANSFORM_INCORRECT_NUMBER_OF_VALUES:Ljava/lang/String; = "Transformation doesn\'t contain the right number of values."

.field public static final TRANSFORM_NULL:Ljava/lang/String; = "The transformation value is null."

.field public static final UNKNOWN_TRANSFORMATION_TYPE:Ljava/lang/String; = "Unsupported type of transformation."

.field public static final VIEWBOX_IS_INCORRECT:Ljava/lang/String; = "The viewBox is incorrect. The viewBox applying could not be processed."


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
