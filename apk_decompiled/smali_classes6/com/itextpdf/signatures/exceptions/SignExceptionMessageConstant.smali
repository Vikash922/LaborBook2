.class public final Lcom/itextpdf/signatures/exceptions/SignExceptionMessageConstant;
.super Ljava/lang/Object;
.source "SignExceptionMessageConstant.java"


# static fields
.field public static final AUTHENTICATED_ATTRIBUTE_IS_MISSING_THE_DIGEST:Ljava/lang/String; = "Authenticated attribute is missing the digest."

.field public static final AVAILABLE_SPACE_IS_NOT_ENOUGH_FOR_SIGNATURE:Ljava/lang/String; = "Available space is not enough for signature."

.field public static final CANNOT_BE_VERIFIED_CERTIFICATE_CHAIN:Ljava/lang/String; = "Cannot be verified against the KeyStore or the certificate chain."

.field public static final CANNOT_DECODE_PKCS7_SIGNED_DATA_OBJECT:Ljava/lang/String; = "Cannot decode PKCS#7 SignedData object."

.field public static final CANNOT_FIND_SIGNING_CERTIFICATE_WITH_THIS_SERIAL:Ljava/lang/String; = "Cannot find signing certificate with serial {0}."

.field public static final CERTIFICATE_TEMPLATE_FOR_EXCEPTION_MESSAGE:Ljava/lang/String; = "Certificate {0} failed: {1}"

.field public static final CERTIFICATION_SIGNATURE_CREATION_FAILED_DOC_SHALL_NOT_CONTAIN_SIGS:Ljava/lang/String; = "Certification signature creation failed. Document shall not contain any certification or approval signatures before signing with certification signature."

.field public static final DICTIONARY_THIS_KEY_IS_NOT_A_NAME:Ljava/lang/String; = "Dictionary key {0} is not a name."

.field public static final DOCUMENT_ALREADY_PRE_CLOSED:Ljava/lang/String; = "Document has been already pre closed."

.field public static final DOCUMENT_MUST_BE_PRE_CLOSED:Ljava/lang/String; = "Document must be preClosed."

.field public static final DOCUMENT_MUST_HAVE_READER:Ljava/lang/String; = "Document must have reader."

.field public static final FAILED_TO_GET_TSA_RESPONSE:Ljava/lang/String; = "Failed to get TSA response from {0}."

.field public static final FIELD_ALREADY_SIGNED:Ljava/lang/String; = "Field has been already signed."

.field public static final FIELD_NAMES_CANNOT_CONTAIN_A_DOT:Ljava/lang/String; = "Field names cannot contain a dot."

.field public static final FIELD_TYPE_IS_NOT_A_SIGNATURE_FIELD_TYPE:Ljava/lang/String; = "Field type is not a signature field type."

.field public static final INVALID_HTTP_RESPONSE:Ljava/lang/String; = "Invalid http response {0}."

.field public static final INVALID_STATE_WHILE_CHECKING_CERT_CHAIN:Ljava/lang/String; = "Invalid state. Possible circular certificate chain."

.field public static final INVALID_TSA_RESPONSE:Ljava/lang/String; = "Invalid TSA {0} response code {1}."

.field public static final NOT_A_VALID_PKCS7_OBJECT_NOT_A_SEQUENCE:Ljava/lang/String; = "Not a valid PKCS#7 object - not a sequence"

.field public static final NOT_A_VALID_PKCS7_OBJECT_NOT_SIGNED_DATA:Ljava/lang/String; = "Not a valid PKCS#7 object - not signed data."

.field public static final NOT_ENOUGH_SPACE:Ljava/lang/String; = "Not enough space."

.field public static final NO_CRYPTO_DICTIONARY_DEFINED:Ljava/lang/String; = "No crypto dictionary defined."

.field public static final SIGNATURE_WITH_THIS_NAME_IS_NOT_THE_LAST_IT_DOES_NOT_COVER_WHOLE_DOCUMENT:Ljava/lang/String; = "Signature with name {0} is not the last. It doesn\'t cover the whole document."

.field public static final THERE_IS_NO_FIELD_IN_THE_DOCUMENT_WITH_SUCH_NAME:Ljava/lang/String; = "There is no field in the document with such name: {0}."

.field public static final THE_NAME_OF_THE_DIGEST_ALGORITHM_IS_NULL:Ljava/lang/String; = "The name of the digest algorithm is null."

.field public static final THIS_INSTANCE_OF_PDF_SIGNER_ALREADY_CLOSED:Ljava/lang/String; = "This instance of PdfSigner has been already closed."

.field public static final THIS_PKCS7_OBJECT_HAS_MULTIPLE_SIGNERINFOS_ONLY_ONE_IS_SUPPORTED_AT_THIS_TIME:Ljava/lang/String; = "This PKCS#7 object has multiple SignerInfos. Only one is supported at this time."

.field public static final THIS_TSA_FAILED_TO_RETURN_TIME_STAMP_TOKEN:Ljava/lang/String; = "TSA {0} failed to return time stamp token: {1}."

.field public static final TOO_BIG_KEY:Ljava/lang/String; = "The key is too big."

.field public static final UNEXPECTED_CLOSE_BRACKET:Ljava/lang/String; = "Unexpected close bracket."

.field public static final UNEXPECTED_GT_GT:Ljava/lang/String; = "unexpected >>."

.field public static final UNKNOWN_HASH_ALGORITHM:Ljava/lang/String; = "Unknown hash algorithm: {0}."

.field public static final UNKNOWN_KEY_ALGORITHM:Ljava/lang/String; = "Unknown key algorithm: {0}."

.field public static final VERIFICATION_ALREADY_OUTPUT:Ljava/lang/String; = "Verification already output."


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
