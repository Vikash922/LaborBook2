package com.itextpdf.kernel.pdf;

import androidx.exifinterface.media.ExifInterface;
import androidx.webkit.Profile;
import com.facebook.internal.ServerProtocol;
import com.google.common.net.HttpHeaders;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.itextpdf.kernel.pdf.tagging.StandardRoles;
import com.itextpdf.kernel.utils.ICopyFilter;
import com.itextpdf.kernel.xmp.PdfConst;
import com.itextpdf.p017io.font.PdfEncodings;
import com.itextpdf.p017io.font.constants.FontStretches;
import com.itextpdf.p017io.image.PngImageHelperConstants;
import com.itextpdf.p017io.source.ByteBuffer;
import com.itextpdf.p017io.source.ByteUtils;
import com.itextpdf.styledxmlparser.css.media.MediaRuleConstants;
import com.itextpdf.svg.SvgConstants;
import com.laborbook.keep.screen.calendar.utils.Constants;
import java.nio.charset.StandardCharsets;
import java.util.Map;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: loaded from: classes6.dex */
public class PdfName extends PdfPrimitiveObject implements Comparable<PdfName> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    protected String value;
    private static final byte[] space = ByteUtils.getIsoBytes("#20");
    private static final byte[] percent = ByteUtils.getIsoBytes("#25");
    private static final byte[] leftParenthesis = ByteUtils.getIsoBytes("#28");
    private static final byte[] rightParenthesis = ByteUtils.getIsoBytes("#29");
    private static final byte[] lessThan = ByteUtils.getIsoBytes("#3c");
    private static final byte[] greaterThan = ByteUtils.getIsoBytes("#3e");
    private static final byte[] leftSquare = ByteUtils.getIsoBytes("#5b");
    private static final byte[] rightSquare = ByteUtils.getIsoBytes("#5d");
    private static final byte[] leftCurlyBracket = ByteUtils.getIsoBytes("#7b");
    private static final byte[] rightCurlyBracket = ByteUtils.getIsoBytes("#7d");
    private static final byte[] solidus = ByteUtils.getIsoBytes("#2f");
    private static final byte[] numberSign = ByteUtils.getIsoBytes("#23");
    public static final PdfName _3D = createDirectName("3D");
    public static final PdfName _3DA = createDirectName("3DA");
    public static final PdfName _3DB = createDirectName("3DB");
    public static final PdfName _3DCrossSection = createDirectName("3DCrossSection");
    public static final PdfName _3DD = createDirectName("3DD");
    public static final PdfName _3DI = createDirectName("3DI");
    public static final PdfName _3DV = createDirectName("3DV");
    public static final PdfName _3DView = createDirectName("3DView");

    /* JADX INFO: renamed from: a */
    public static final PdfName f3096a = createDirectName("a");

    /* JADX INFO: renamed from: A */
    public static final PdfName f2967A = createDirectName("A");
    public static final PdfName A85 = createDirectName("A85");

    /* JADX INFO: renamed from: AA */
    public static final PdfName f2968AA = createDirectName("AA");
    public static final PdfName AbsoluteColorimetric = createDirectName("AbsoluteColorimetric");
    public static final PdfName AcroForm = createDirectName("AcroForm");
    public static final PdfName Action = createDirectName(XfdfConstants.ACTION);
    public static final PdfName ActualText = createDirectName("ActualText");
    public static final PdfName ADBE = createDirectName("ADBE");
    public static final PdfName Adbe_pkcs7_detached = createDirectName("adbe.pkcs7.detached");
    public static final PdfName Adbe_pkcs7_s4 = createDirectName("adbe.pkcs7.s4");
    public static final PdfName Adbe_pkcs7_s5 = createDirectName("adbe.pkcs7.s5");
    public static final PdfName Adbe_pkcs7_sha1 = createDirectName("adbe.pkcs7.sha1");
    public static final PdfName Adbe_x509_rsa_sha1 = createDirectName("adbe.x509.rsa_sha1");
    public static final PdfName Adobe_PPKLite = createDirectName("Adobe.PPKLite");
    public static final PdfName Adobe_PPKMS = createDirectName("Adobe.PPKMS");
    public static final PdfName Adobe_PubSec = createDirectName("Adobe.PubSec");
    public static final PdfName AESV2 = createDirectName("AESV2");
    public static final PdfName AESV3 = createDirectName("AESV3");

    /* JADX INFO: renamed from: AF */
    public static final PdfName f2969AF = createDirectName("AF");
    public static final PdfName AFRelationship = createDirectName("AFRelationship");
    public static final PdfName After = createDirectName("After");
    public static final PdfName AHx = createDirectName("AHx");
    public static final PdfName AIS = createDirectName("AIS");
    public static final PdfName Alaw = createDirectName("ALaw");
    public static final PdfName All = createDirectName("All");
    public static final PdfName AllOff = createDirectName("AllOff");
    public static final PdfName AllOn = createDirectName("AllOn");
    public static final PdfName Alt = createDirectName("Alt");
    public static final PdfName Alternate = createDirectName("Alternate");
    public static final PdfName Alternates = createDirectName("Alternates");
    public static final PdfName AlternatePresentations = createDirectName("AlternatePresentations");
    public static final PdfName Alternative = createDirectName("Alternative");

    /* JADX INFO: renamed from: AN */
    public static final PdfName f2970AN = createDirectName("AN");
    public static final PdfName And = createDirectName("And");
    public static final PdfName Annot = createDirectName(StandardRoles.ANNOT);
    public static final PdfName Annots = createDirectName("Annots");
    public static final PdfName Annotation = createDirectName("Annotation");
    public static final PdfName AnnotStates = createDirectName("AnnotStates");
    public static final PdfName AnyOff = createDirectName("AnyOff");
    public static final PdfName AnyOn = createDirectName("AnyOn");

    /* JADX INFO: renamed from: AP */
    public static final PdfName f2971AP = createDirectName("AP");
    public static final PdfName App = createDirectName("App");
    public static final PdfName AppDefault = createDirectName("AppDefault");
    public static final PdfName ApplicationOctetStream = createDirectName("application/octet-stream");
    public static final PdfName ApplicationPdf = createDirectName("application/pdf");
    public static final PdfName ApplicationXml = createDirectName("application/xml");
    public static final PdfName Approved = createDirectName("Approved");
    public static final PdfName Art = createDirectName(StandardRoles.ART);
    public static final PdfName ArtBox = createDirectName("ArtBox");
    public static final PdfName Artifact = createDirectName(StandardRoles.ARTIFACT);

    /* JADX INFO: renamed from: AS */
    public static final PdfName f2972AS = createDirectName("AS");
    public static final PdfName Ascent = createDirectName("Ascent");
    public static final PdfName ASCII85Decode = createDirectName("ASCII85Decode");
    public static final PdfName ASCIIHexDecode = createDirectName("ASCIIHexDecode");
    public static final PdfName Aside = createDirectName(StandardRoles.ASIDE);
    public static final PdfName AsIs = createDirectName("AsIs");
    public static final PdfName AuthEvent = createDirectName("AuthEvent");
    public static final PdfName Author = createDirectName("Author");

    /* JADX INFO: renamed from: B */
    public static final PdfName f2973B = createDirectName(SvgConstants.Attributes.PATH_DATA_BEARING);
    public static final PdfName BackgroundColor = createDirectName("BackgroundColor");
    public static final PdfName BaseFont = createDirectName("BaseFont");
    public static final PdfName BaseEncoding = createDirectName("BaseEncoding");
    public static final PdfName BaselineShift = createDirectName("BaselineShift");
    public static final PdfName BaseState = createDirectName("BaseState");
    public static final PdfName BaseVersion = createDirectName("BaseVersion");
    public static final PdfName Bates = createDirectName("Bates");
    public static final PdfName BBox = createDirectName("BBox");

    /* JADX INFO: renamed from: BE */
    public static final PdfName f2975BE = createDirectName("BE");
    public static final PdfName Before = createDirectName("Before");

    /* JADX INFO: renamed from: BC */
    public static final PdfName f2974BC = createDirectName(BouncyCastleProvider.PROVIDER_NAME);

    /* JADX INFO: renamed from: BG */
    public static final PdfName f2976BG = createDirectName("BG");
    public static final PdfName BG2 = createDirectName("BG2");
    public static final PdfName BibEntry = createDirectName(StandardRoles.BIBENTRY);
    public static final PdfName BitsPerComponent = createDirectName(PngImageHelperConstants.BITS_PER_COMPONENT);
    public static final PdfName BitsPerCoordinate = createDirectName("BitsPerCoordinate");
    public static final PdfName BitsPerFlag = createDirectName("BitsPerFlag");
    public static final PdfName BitsPerSample = createDirectName(ExifInterface.TAG_BITS_PER_SAMPLE);

    /* JADX INFO: renamed from: Bl */
    public static final PdfName f2979Bl = createDirectName("Bl");
    public static final PdfName BlackIs1 = createDirectName("BlackIs1");
    public static final PdfName BlackPoint = createDirectName("BlackPoint");
    public static final PdfName BleedBox = createDirectName("BleedBox");
    public static final PdfName Block = createDirectName("Block");
    public static final PdfName BlockAlign = createDirectName("BlockAlign");
    public static final PdfName BlockQuote = createDirectName(StandardRoles.BLOCKQUOTE);

    /* JADX INFO: renamed from: BM */
    public static final PdfName f2977BM = createDirectName("BM");
    public static final PdfName Book = createDirectName("Book");
    public static final PdfName Border = createDirectName("Border");
    public static final PdfName BorderColor = createDirectName("BorderColor");
    public static final PdfName BorderStyle = createDirectName("BorderStyle");
    public static final PdfName BorderThickness = createDirectName("BorderThickness");
    public static final PdfName Both = createDirectName("Both");
    public static final PdfName Bounds = createDirectName("Bounds");

    /* JADX INFO: renamed from: BS */
    public static final PdfName f2978BS = createDirectName("BS");
    public static final PdfName Btn = createDirectName("Btn");
    public static final PdfName Butt = createDirectName("Butt");
    public static final PdfName ByteRange = createDirectName("ByteRange");

    /* JADX INFO: renamed from: C */
    public static final PdfName f2980C = createDirectName(SvgConstants.Attributes.PATH_DATA_CURVE_TO);

    /* JADX INFO: renamed from: C0 */
    public static final PdfName f2981C0 = createDirectName("C0");

    /* JADX INFO: renamed from: C1 */
    public static final PdfName f2982C1 = createDirectName("C1");

    /* JADX INFO: renamed from: CA */
    public static final PdfName f2983CA = createDirectName("CA");

    /* JADX INFO: renamed from: ca */
    public static final PdfName f3097ca = createDirectName("ca");
    public static final PdfName CalGray = createDirectName("CalGray");
    public static final PdfName CalRGB = createDirectName("CalRGB");
    public static final PdfName CapHeight = createDirectName("CapHeight");
    public static final PdfName Cap = createDirectName("Cap");
    public static final PdfName Caption = createDirectName(StandardRoles.CAPTION);
    public static final PdfName Caret = createDirectName("Caret");
    public static final PdfName Catalog = createDirectName("Catalog");
    public static final PdfName Category = createDirectName("Category");
    public static final PdfName CCITTFaxDecode = createDirectName("CCITTFaxDecode");
    public static final PdfName Center = createDirectName("Center");
    public static final PdfName CenterWindow = createDirectName("CenterWindow");
    public static final PdfName Cert = createDirectName("Cert");
    public static final PdfName Certs = createDirectName("Certs");

    /* JADX INFO: renamed from: CF */
    public static final PdfName f2984CF = createDirectName("CF");
    public static final PdfName CFM = createDirectName("CFM");

    /* JADX INFO: renamed from: Ch */
    public static final PdfName f2991Ch = createDirectName("Ch");

    /* JADX INFO: renamed from: CI */
    public static final PdfName f2985CI = createDirectName("CI");
    public static final PdfName CIDFontType0 = createDirectName("CIDFontType0");
    public static final PdfName CIDFontType2 = createDirectName("CIDFontType2");
    public static final PdfName CIDSet = createDirectName("CIDSet");
    public static final PdfName CIDSystemInfo = createDirectName("CIDSystemInfo");
    public static final PdfName CIDToGIDMap = createDirectName("CIDToGIDMap");
    public static final PdfName Circle = createDirectName("Circle");

    /* JADX INFO: renamed from: CL */
    public static final PdfName f2986CL = createDirectName("CL");
    public static final PdfName ClosedArrow = createDirectName("ClosedArrow");
    public static final PdfName CMapName = createDirectName("CMapName");

    /* JADX INFO: renamed from: CO */
    public static final PdfName f2987CO = createDirectName("CO");
    public static final PdfName Code = createDirectName(StandardRoles.CODE);
    public static final PdfName Collection = createDirectName("Collection");
    public static final PdfName ColSpan = createDirectName("ColSpan");
    public static final PdfName ColumnCount = createDirectName("ColumnCount");
    public static final PdfName ColumnGap = createDirectName("ColumnGap");
    public static final PdfName ColumnWidths = createDirectName("ColumnWidths");
    public static final PdfName ContactInfo = createDirectName("ContactInfo");
    public static final PdfName CharProcs = createDirectName("CharProcs");
    public static final PdfName Color = createDirectName("Color");
    public static final PdfName ColorBurn = createDirectName("ColorBurn");
    public static final PdfName ColorDodge = createDirectName("ColorDodge");
    public static final PdfName Colorants = createDirectName("Colorants");
    public static final PdfName Colors = createDirectName(PngImageHelperConstants.COLORS);
    public static final PdfName ColorSpace = createDirectName(ExifInterface.TAG_COLOR_SPACE);
    public static final PdfName ColorTransform = createDirectName("ColorTransform");
    public static final PdfName Column = createDirectName("Column");
    public static final PdfName Columns = createDirectName(PngImageHelperConstants.COLUMNS);
    public static final PdfName Compatible = createDirectName("Compatible");
    public static final PdfName Confidential = createDirectName("Confidential");
    public static final PdfName Configs = createDirectName("Configs");
    public static final PdfName Contents = createDirectName("Contents");
    public static final PdfName Coords = createDirectName("Coords");
    public static final PdfName Count = createDirectName("Count");

    /* JADX INFO: renamed from: CP */
    public static final PdfName f2988CP = createDirectName("CP");
    public static final PdfName CRL = createDirectName("CRL");
    public static final PdfName CRLs = createDirectName("CRLs");
    public static final PdfName CreationDate = createDirectName("CreationDate");
    public static final PdfName Creator = createDirectName("Creator");
    public static final PdfName CreatorInfo = createDirectName("CreatorInfo");
    public static final PdfName CropBox = createDirectName("CropBox");
    public static final PdfName Crypt = createDirectName("Crypt");

    /* JADX INFO: renamed from: CS */
    public static final PdfName f2989CS = createDirectName("CS");

    /* JADX INFO: renamed from: CT */
    public static final PdfName f2990CT = createDirectName("CT");

    /* JADX INFO: renamed from: D */
    public static final PdfName f2992D = createDirectName("D");

    /* JADX INFO: renamed from: DA */
    public static final PdfName f2993DA = createDirectName("DA");
    public static final PdfName Darken = createDirectName("Darken");
    public static final PdfName Dashed = createDirectName("Dashed");
    public static final PdfName Data = createDirectName("Data");
    public static final PdfName DCTDecode = createDirectName("DCTDecode");
    public static final PdfName Decimal = createDirectName("Decimal");
    public static final PdfName Decode = createDirectName("Decode");
    public static final PdfName DecodeParms = createDirectName("DecodeParms");
    public static final PdfName Default = createDirectName(Profile.DEFAULT_PROFILE_NAME);
    public static final PdfName DefaultCMYK = createDirectName("DefaultCMYK");
    public static final PdfName DefaultCryptFilter = createDirectName("DefaultCryptFilter");
    public static final PdfName DefaultGray = createDirectName("DefaultGray");
    public static final PdfName DefaultRGB = createDirectName("DefaultRGB");
    public static final PdfName Departmental = createDirectName("Departmental");
    public static final PdfName DescendantFonts = createDirectName("DescendantFonts");
    public static final PdfName Desc = createDirectName("Desc");
    public static final PdfName Descent = createDirectName("Descent");
    public static final PdfName Design = createDirectName("Design");
    public static final PdfName Dest = createDirectName(XfdfConstants.DEST);
    public static final PdfName DestOutputProfile = createDirectName("DestOutputProfile");
    public static final PdfName Dests = createDirectName("Dests");
    public static final PdfName DeviceCMY = createDirectName("DeviceCMY");
    public static final PdfName DeviceCMYK = createDirectName("DeviceCMYK");
    public static final PdfName DeviceGray = createDirectName("DeviceGray");
    public static final PdfName DeviceN = createDirectName("DeviceN");
    public static final PdfName DeviceRGB = createDirectName("DeviceRGB");
    public static final PdfName DeviceRGBK = createDirectName("DeviceRGBK");
    public static final PdfName Diamond = createDirectName("Diamond");
    public static final PdfName Difference = createDirectName("Difference");
    public static final PdfName Differences = createDirectName("Differences");
    public static final PdfName Div = createDirectName(StandardRoles.DIV);
    public static final PdfName DigestLocation = createDirectName("DigestLocation");
    public static final PdfName DigestMethod = createDirectName("DigestMethod");
    public static final PdfName DigestValue = createDirectName("DigestValue");
    public static final PdfName Direction = createDirectName("Direction");
    public static final PdfName Disc = createDirectName("Disc");
    public static final PdfName DisplayDocTitle = createDirectName("DisplayDocTitle");
    public static final PdfName DocMDP = createDirectName("DocMDP");
    public static final PdfName DocOpen = createDirectName("DocOpen");
    public static final PdfName DocTimeStamp = createDirectName("DocTimeStamp");
    public static final PdfName Document = createDirectName(StandardRoles.DOCUMENT);
    public static final PdfName DocumentFragment = createDirectName(StandardRoles.DOCUMENTFRAGMENT);
    public static final PdfName Domain = createDirectName("Domain");
    public static final PdfName Dotted = createDirectName("Dotted");
    public static final PdfName Double = createDirectName("Double");

    /* JADX INFO: renamed from: DP */
    public static final PdfName f2994DP = createDirectName("DP");

    /* JADX INFO: renamed from: Dp */
    public static final PdfName f2999Dp = createDirectName("Dp");
    public static final PdfName DPart = createDirectName("DPart");

    /* JADX INFO: renamed from: DR */
    public static final PdfName f2995DR = createDirectName("DR");
    public static final PdfName Draft = createDirectName("Draft");

    /* JADX INFO: renamed from: DS */
    public static final PdfName f2996DS = createDirectName("DS");
    public static final PdfName DSS = createDirectName("DSS");
    public static final PdfName Duplex = createDirectName("Duplex");
    public static final PdfName DuplexFlipShortEdge = createDirectName("DuplexFlipShortEdge");
    public static final PdfName DuplexFlipLongEdge = createDirectName("DuplexFlipLongEdge");

    /* JADX INFO: renamed from: DV */
    public static final PdfName f2997DV = createDirectName("DV");

    /* JADX INFO: renamed from: DW */
    public static final PdfName f2998DW = createDirectName("DW");

    /* JADX INFO: renamed from: E */
    public static final PdfName f3000E = createDirectName(ExifInterface.LONGITUDE_EAST);

    /* JADX INFO: renamed from: EF */
    public static final PdfName f3001EF = createDirectName("EF");
    public static final PdfName EFF = createDirectName("EFF");
    public static final PdfName EFOpen = createDirectName("EFOpen");

    /* JADX INFO: renamed from: Em */
    public static final PdfName f3003Em = createDirectName(StandardRoles.f3184EM);
    public static final PdfName EmbeddedFile = createDirectName("EmbeddedFile");
    public static final PdfName EmbeddedFiles = createDirectName("EmbeddedFiles");
    public static final PdfName Encode = createDirectName("Encode");
    public static final PdfName EncodedByteAlign = createDirectName("EncodedByteAlign");
    public static final PdfName Encoding = createDirectName("Encoding");
    public static final PdfName Encrypt = createDirectName("Encrypt");
    public static final PdfName EncryptMetadata = createDirectName("EncryptMetadata");
    public static final PdfName EncryptedPayload = createDirectName("EncryptedPayload");
    public static final PdfName End = createDirectName("End");
    public static final PdfName EndIndent = createDirectName("EndIndent");
    public static final PdfName EndOfBlock = createDirectName("EndOfBlock");
    public static final PdfName EndOfLine = createDirectName("EndOfLine");
    public static final PdfName Enforce = createDirectName("Enforce");

    /* JADX INFO: renamed from: EP */
    public static final PdfName f3002EP = createDirectName("EP");
    public static final PdfName ESIC = createDirectName("ESIC");
    public static final PdfName ETSI_CAdES_DETACHED = createDirectName("ETSI.CAdES.detached");
    public static final PdfName ETSI_RFC3161 = createDirectName("ETSI.RFC3161");
    public static final PdfName Event = createDirectName("Event");
    public static final PdfName Exclude = createDirectName("Exclude");
    public static final PdfName Exclusion = createDirectName("Exclusion");
    public static final PdfName ExData = createDirectName("ExData");
    public static final PdfName Experimental = createDirectName("Experimental");
    public static final PdfName Expired = createDirectName("Expired");
    public static final PdfName Export = createDirectName("Export");
    public static final PdfName ExportState = createDirectName("ExportState");
    public static final PdfName Extend = createDirectName("Extend");
    public static final PdfName Extends = createDirectName("Extends");
    public static final PdfName Extensions = createDirectName("Extensions");
    public static final PdfName ExtensionLevel = createDirectName("ExtensionLevel");
    public static final PdfName ExtGState = createDirectName("ExtGState");

    /* JADX INFO: renamed from: F */
    public static final PdfName f3004F = createDirectName("F");
    public static final PdfName False = createDirectName("false");

    /* JADX INFO: renamed from: Ff */
    public static final PdfName f3008Ff = createDirectName("Ff");
    public static final PdfName FieldMDP = createDirectName("FieldMDP");
    public static final PdfName Fields = createDirectName("Fields");
    public static final PdfName Figure = createDirectName(StandardRoles.FIGURE);
    public static final PdfName FileAttachment = createDirectName("FileAttachment");
    public static final PdfName Filespec = createDirectName("Filespec");
    public static final PdfName Filter = createDirectName("Filter");
    public static final PdfName FFilter = createDirectName("FFilter");
    public static final PdfName FDecodeParams = createDirectName("FDecodeParams");
    public static final PdfName FENote = createDirectName(StandardRoles.FENOTE);
    public static final PdfName Final = createDirectName("Final");
    public static final PdfName First = createDirectName("First");
    public static final PdfName FirstChar = createDirectName("FirstChar");
    public static final PdfName FirstPage = createDirectName("FirstPage");
    public static final PdfName Fit = createDirectName(XfdfConstants.FIT);
    public static final PdfName FitB = createDirectName(XfdfConstants.FIT_B);
    public static final PdfName FitBH = createDirectName(XfdfConstants.FIT_BH);
    public static final PdfName FitBV = createDirectName(XfdfConstants.FIT_BV);
    public static final PdfName FitH = createDirectName(XfdfConstants.FIT_H);
    public static final PdfName FitR = createDirectName(XfdfConstants.FIT_R);
    public static final PdfName FitV = createDirectName(XfdfConstants.FIT_V);
    public static final PdfName FitWindow = createDirectName("FitWindow");
    public static final PdfName FixedPrint = createDirectName("FixedPrint");

    /* JADX INFO: renamed from: Fl */
    public static final PdfName f3009Fl = createDirectName("Fl");

    /* JADX INFO: renamed from: FL */
    public static final PdfName f3005FL = createDirectName("FL");
    public static final PdfName Flags = createDirectName("Flags");
    public static final PdfName FlateDecode = createDirectName("FlateDecode");

    /* JADX INFO: renamed from: Fo */
    public static final PdfName f3010Fo = createDirectName("Fo");
    public static final PdfName Font = createDirectName("Font");
    public static final PdfName FontBBox = createDirectName("FontBBox");
    public static final PdfName FontDescriptor = createDirectName("FontDescriptor");
    public static final PdfName FontFamily = createDirectName("FontFamily");
    public static final PdfName FontFauxing = createDirectName("FontFauxing");
    public static final PdfName FontFile = createDirectName("FontFile");
    public static final PdfName FontFile2 = createDirectName("FontFile2");
    public static final PdfName FontFile3 = createDirectName("FontFile3");
    public static final PdfName FontMatrix = createDirectName("FontMatrix");
    public static final PdfName FontName = createDirectName("FontName");
    public static final PdfName FontWeight = createDirectName("FontWeight");
    public static final PdfName FontStretch = createDirectName("FontStretch");
    public static final PdfName Footer = createDirectName("Footer");
    public static final PdfName ForComment = createDirectName("ForComment");
    public static final PdfName Form = createDirectName(StandardRoles.FORM);
    public static final PdfName FormData = createDirectName("FormData");
    public static final PdfName ForPublicRelease = createDirectName("ForPublicRelease");
    public static final PdfName FormType = createDirectName("FormType");
    public static final PdfName FreeText = createDirectName("FreeText");
    public static final PdfName FreeTextCallout = createDirectName("FreeTextCallout");
    public static final PdfName FreeTextTypeWriter = createDirectName("FreeTextTypeWriter");

    /* JADX INFO: renamed from: FS */
    public static final PdfName f3006FS = createDirectName("FS");
    public static final PdfName Formula = createDirectName(StandardRoles.FORMULA);

    /* JADX INFO: renamed from: FT */
    public static final PdfName f3007FT = createDirectName("FT");
    public static final PdfName FullScreen = createDirectName("FullScreen");
    public static final PdfName Function = createDirectName("Function");
    public static final PdfName Functions = createDirectName("Functions");
    public static final PdfName FunctionType = createDirectName("FunctionType");
    public static final PdfName Gamma = createDirectName(ExifInterface.TAG_GAMMA);
    public static final PdfName GlyphOrientationVertical = createDirectName("GlyphOrientationVertical");
    public static final PdfName GoTo = createDirectName(XfdfConstants.GO_TO);
    public static final PdfName GoTo3DView = createDirectName("GoTo3DView");
    public static final PdfName GoToDp = createDirectName("GoToDp");
    public static final PdfName GoToE = createDirectName("GoToE");
    public static final PdfName GoToR = createDirectName(XfdfConstants.GO_TO_R);
    public static final PdfName Graph = createDirectName("Graph");
    public static final PdfName Group = createDirectName("Group");
    public static final PdfName Groove = createDirectName("Groove");
    public static final PdfName GTS_PDFA1 = createDirectName("GTS_PDFA1");

    /* JADX INFO: renamed from: H */
    public static final PdfName f3011H = createDirectName("H");

    /* JADX INFO: renamed from: H1 */
    public static final PdfName f3012H1 = createDirectName(StandardRoles.f3186H1);

    /* JADX INFO: renamed from: H2 */
    public static final PdfName f3013H2 = createDirectName(StandardRoles.f3187H2);

    /* JADX INFO: renamed from: H3 */
    public static final PdfName f3014H3 = createDirectName(StandardRoles.f3188H3);

    /* JADX INFO: renamed from: H4 */
    public static final PdfName f3015H4 = createDirectName(StandardRoles.f3189H4);

    /* JADX INFO: renamed from: H5 */
    public static final PdfName f3016H5 = createDirectName(StandardRoles.f3190H5);

    /* JADX INFO: renamed from: H6 */
    public static final PdfName f3017H6 = createDirectName(StandardRoles.f3191H6);
    public static final PdfName HalftoneType = createDirectName("HalftoneType");
    public static final PdfName HalftoneName = createDirectName("HalftoneName");
    public static final PdfName HardLight = createDirectName("HardLight");
    public static final PdfName Header = createDirectName("Header");
    public static final PdfName Headers = createDirectName("Headers");
    public static final PdfName Height = createDirectName("Height");
    public static final PdfName Hide = createDirectName("Hide");
    public static final PdfName Hidden = createDirectName("Hidden");
    public static final PdfName HideMenubar = createDirectName("HideMenubar");
    public static final PdfName HideToolbar = createDirectName("HideToolbar");
    public static final PdfName HideWindowUI = createDirectName("HideWindowUI");
    public static final PdfName Highlight = createDirectName("Highlight");

    /* JADX INFO: renamed from: HT */
    public static final PdfName f3018HT = createDirectName("HT");
    public static final PdfName HTO = createDirectName("HTO");
    public static final PdfName HTP = createDirectName("HTP");
    public static final PdfName Hue = createDirectName("Hue");

    /* JADX INFO: renamed from: I */
    public static final PdfName f3019I = createDirectName("I");

    /* JADX INFO: renamed from: IC */
    public static final PdfName f3020IC = createDirectName("IC");
    public static final PdfName ICCBased = createDirectName("ICCBased");

    /* JADX INFO: renamed from: ID */
    public static final PdfName f3021ID = createDirectName("ID");
    public static final PdfName IDS = createDirectName("IDS");
    public static final PdfName Identity = createDirectName("Identity");
    public static final PdfName IdentityH = createDirectName(PdfEncodings.IDENTITY_H);
    public static final PdfName Inset = createDirectName("Inset");
    public static final PdfName Image = createDirectName("Image");
    public static final PdfName ImageMask = createDirectName("ImageMask");
    public static final PdfName ImportData = createDirectName("ImportData");
    public static final PdfName ipa = createDirectName("ipa");
    public static final PdfName Include = createDirectName("Include");
    public static final PdfName Index = createDirectName(StandardRoles.INDEX);
    public static final PdfName Indexed = createDirectName("Indexed");
    public static final PdfName Info = createDirectName("Info");
    public static final PdfName Inline = createDirectName("Inline");
    public static final PdfName InlineAlign = createDirectName("InlineAlign");
    public static final PdfName Ink = createDirectName("Ink");
    public static final PdfName InkList = createDirectName("InkList");
    public static final PdfName Intent = createDirectName(PngImageHelperConstants.INTENT);
    public static final PdfName Interpolate = createDirectName("Interpolate");
    public static final PdfName IRT = createDirectName("IRT");
    public static final PdfName IsMap = createDirectName(XfdfConstants.IS_MAP);
    public static final PdfName ItalicAngle = createDirectName("ItalicAngle");

    /* JADX INFO: renamed from: IT */
    public static final PdfName f3022IT = createDirectName("IT");
    public static final PdfName JavaScript = createDirectName("JavaScript");
    public static final PdfName JBIG2Decode = createDirectName("JBIG2Decode");
    public static final PdfName JBIG2Globals = createDirectName("JBIG2Globals");
    public static final PdfName JPXDecode = createDirectName("JPXDecode");

    /* JADX INFO: renamed from: JS */
    public static final PdfName f3023JS = createDirectName("JS");
    public static final PdfName Justify = createDirectName("Justify");

    /* JADX INFO: renamed from: K */
    public static final PdfName f3024K = createDirectName("K");
    public static final PdfName Keywords = createDirectName(PdfConst.Keywords);
    public static final PdfName Kids = createDirectName("Kids");
    public static final PdfName L2R = createDirectName("L2R");

    /* JADX INFO: renamed from: L */
    public static final PdfName f3025L = createDirectName("L");
    public static final PdfName Lab = createDirectName("Lab");
    public static final PdfName Lang = createDirectName("Lang");
    public static final PdfName Language = createDirectName("Language");
    public static final PdfName Last = createDirectName("Last");
    public static final PdfName LastChar = createDirectName("LastChar");
    public static final PdfName LastModified = createDirectName("LastModified");
    public static final PdfName LastPage = createDirectName("LastPage");
    public static final PdfName Launch = createDirectName(XfdfConstants.LAUNCH);
    public static final PdfName Layout = createDirectName("Layout");
    public static final PdfName Lbl = createDirectName(StandardRoles.LBL);
    public static final PdfName LBody = createDirectName(StandardRoles.LBODY);

    /* JADX INFO: renamed from: LC */
    public static final PdfName f3026LC = createDirectName("LC");
    public static final PdfName Leading = createDirectName("Leading");

    /* JADX INFO: renamed from: LE */
    public static final PdfName f3027LE = createDirectName("LE");
    public static final PdfName Length = createDirectName("Length");
    public static final PdfName Length1 = createDirectName("Length1");

    /* JADX INFO: renamed from: LI */
    public static final PdfName f3028LI = createDirectName(StandardRoles.f3193LI);
    public static final PdfName Lighten = createDirectName("Lighten");
    public static final PdfName Limits = createDirectName("Limits");
    public static final PdfName Line = createDirectName("Line");
    public static final PdfName LineArrow = createDirectName("LineArrow");
    public static final PdfName LineHeight = createDirectName("LineHeight");
    public static final PdfName LineNum = createDirectName("LineNum");
    public static final PdfName LineThrough = createDirectName("LineThrough");
    public static final PdfName Link = createDirectName("Link");
    public static final PdfName List = createDirectName("List");
    public static final PdfName ListMode = createDirectName("ListMode");
    public static final PdfName ListNumbering = createDirectName("ListNumbering");

    /* JADX INFO: renamed from: LJ */
    public static final PdfName f3029LJ = createDirectName("LJ");

    /* JADX INFO: renamed from: LL */
    public static final PdfName f3030LL = createDirectName("LL");
    public static final PdfName LLE = createDirectName("LLE");
    public static final PdfName LLO = createDirectName("LLO");
    public static final PdfName Lock = createDirectName("Lock");
    public static final PdfName Locked = createDirectName("Locked");
    public static final PdfName Location = createDirectName(HttpHeaders.LOCATION);
    public static final PdfName LowerAlpha = createDirectName("LowerAlpha");
    public static final PdfName LowerRoman = createDirectName("LowerRoman");
    public static final PdfName Luminosity = createDirectName("Luminosity");

    /* JADX INFO: renamed from: LW */
    public static final PdfName f3031LW = createDirectName("LW");
    public static final PdfName LZWDecode = createDirectName("LZWDecode");

    /* JADX INFO: renamed from: M */
    public static final PdfName f3032M = createDirectName("M");
    public static final PdfName MacExpertEncoding = createDirectName("MacExpertEncoding");
    public static final PdfName MacRomanEncoding = createDirectName("MacRomanEncoding");
    public static final PdfName Marked = createDirectName("Marked");
    public static final PdfName MarkInfo = createDirectName("MarkInfo");
    public static final PdfName Markup = createDirectName("Markup");
    public static final PdfName Markup3D = createDirectName("Markup3D");
    public static final PdfName MarkStyle = createDirectName("MarkStyle");
    public static final PdfName Mask = createDirectName(PngImageHelperConstants.MASK);
    public static final PdfName Matrix = createDirectName("Matrix");
    public static final PdfName max = createDirectName(MediaRuleConstants.MAX);
    public static final PdfName MaxLen = createDirectName("MaxLen");
    public static final PdfName MCD = createDirectName("MCD");
    public static final PdfName MCID = createDirectName("MCID");
    public static final PdfName MCR = createDirectName("MCR");
    public static final PdfName MD5 = createDirectName("MD5");
    public static final PdfName Measure = createDirectName("Measure");
    public static final PdfName MediaBox = createDirectName("MediaBox");
    public static final PdfName MediaClip = createDirectName("MediaClip");
    public static final PdfName Metadata = createDirectName("Metadata");
    public static final PdfName Middle = createDirectName("Middle");
    public static final PdfName min = createDirectName(MediaRuleConstants.MIN);
    public static final PdfName Mix = createDirectName("Mix");
    public static final PdfName MissingWidth = createDirectName("MissingWidth");

    /* JADX INFO: renamed from: MK */
    public static final PdfName f3033MK = createDirectName("MK");

    /* JADX INFO: renamed from: ML */
    public static final PdfName f3034ML = createDirectName("ML");
    public static final PdfName MMType1 = createDirectName("MMType1");

    /* JADX INFO: renamed from: MN */
    public static final PdfName f3035MN = createDirectName("ML");
    public static final PdfName ModDate = createDirectName("ModDate");
    public static final PdfName Movie = createDirectName("Movie");

    /* JADX INFO: renamed from: MR */
    public static final PdfName f3036MR = createDirectName("MR");
    public static final PdfName MuLaw = createDirectName("muLaw");
    public static final PdfName Multiply = createDirectName("Multiply");

    /* JADX INFO: renamed from: N */
    public static final PdfName f3037N = createDirectName("N");

    /* JADX INFO: renamed from: NA */
    public static final PdfName f3038NA = createDirectName("NA");
    public static final PdfName Name = createDirectName(XfdfConstants.NAME_CAPITAL);
    public static final PdfName Named = createDirectName(XfdfConstants.NAMED);
    public static final PdfName Names = createDirectName("Names");
    public static final PdfName Namespace = createDirectName("Namespace");
    public static final PdfName Namespaces = createDirectName("Namespaces");
    public static final PdfName NeedAppearances = createDirectName("NeedAppearances");
    public static final PdfName NeedsRendering = createDirectName("NeedsRendering");
    public static final PdfName NewWindow = createDirectName(XfdfConstants.NEW_WINDOW);
    public static final PdfName Next = createDirectName("Next");
    public static final PdfName NextPage = createDirectName("NextPage");

    /* JADX INFO: renamed from: NM */
    public static final PdfName f3039NM = createDirectName("NM");
    public static final PdfName NonFullScreenPageMode = createDirectName("NonFullScreenPageMode");
    public static final PdfName None = createDirectName("None");
    public static final PdfName NonStruct = createDirectName(StandardRoles.NONSTRUCT);
    public static final PdfName NoOp = createDirectName("NoOp");
    public static final PdfName Normal = createDirectName(FontStretches.NORMAL);
    public static final PdfName Not = createDirectName("Not");
    public static final PdfName NotApproved = createDirectName("NotApproved");
    public static final PdfName Note = createDirectName(StandardRoles.NOTE);
    public static final PdfName NotForPublicRelease = createDirectName("NotForPublicRelease");

    /* JADX INFO: renamed from: NS */
    public static final PdfName f3040NS = createDirectName("NS");
    public static final PdfName NSO = createDirectName("NSO");
    public static final PdfName NumCopies = createDirectName("NumCopies");
    public static final PdfName Nums = createDirectName("Nums");

    /* JADX INFO: renamed from: O */
    public static final PdfName f3041O = createDirectName("O");
    public static final PdfName Obj = createDirectName("Obj");
    public static final PdfName OBJR = createDirectName("OBJR");
    public static final PdfName ObjStm = createDirectName("ObjStm");

    /* JADX INFO: renamed from: OC */
    public static final PdfName f3042OC = createDirectName("OC");
    public static final PdfName OCG = createDirectName("OCG");
    public static final PdfName OCGs = createDirectName("OCGs");
    public static final PdfName OCMD = createDirectName("OCMD");
    public static final PdfName OCProperties = createDirectName("OCProperties");
    public static final PdfName OCSP = createDirectName("OCSP");
    public static final PdfName OCSPs = createDirectName("OCSPs");

    /* JADX INFO: renamed from: OE */
    public static final PdfName f3043OE = createDirectName("OE");
    public static final PdfName OFF = createDirectName("OFF");

    /* JADX INFO: renamed from: ON */
    public static final PdfName f3044ON = createDirectName("ON");
    public static final PdfName OneColumn = createDirectName("OneColumn");

    /* JADX INFO: renamed from: OP */
    public static final PdfName f3045OP = createDirectName("OP");

    /* JADX INFO: renamed from: op */
    public static final PdfName f3098op = createDirectName("op");
    public static final PdfName Open = createDirectName("Open");
    public static final PdfName OpenAction = createDirectName("OpenAction");
    public static final PdfName OpenArrow = createDirectName("OpenArrow");
    public static final PdfName Operation = createDirectName("Operation");
    public static final PdfName OPI = createDirectName("OPI");
    public static final PdfName OPM = createDirectName("OPM");
    public static final PdfName Opt = createDirectName("Opt");

    /* JADX INFO: renamed from: Or */
    public static final PdfName f3046Or = createDirectName("Or");
    public static final PdfName Order = createDirectName("Order");
    public static final PdfName Ordered = createDirectName("Ordered");
    public static final PdfName Ordering = createDirectName("Ordering");
    public static final PdfName Outlines = createDirectName("Outlines");
    public static final PdfName OutputCondition = createDirectName("OutputCondition");
    public static final PdfName OutputConditionIdentifier = createDirectName("OutputConditionIdentifier");
    public static final PdfName OutputIntent = createDirectName("OutputIntent");
    public static final PdfName OutputIntents = createDirectName("OutputIntents");
    public static final PdfName Outset = createDirectName("Outset");
    public static final PdfName Overlay = createDirectName("Overlay");
    public static final PdfName OverlayText = createDirectName("OverlayText");

    /* JADX INFO: renamed from: P */
    public static final PdfName f3047P = createDirectName("P");

    /* JADX INFO: renamed from: PA */
    public static final PdfName f3048PA = createDirectName(Constants.ATTENDANCE_STATUS_PAID_LEAVE);
    public static final PdfName Padding = createDirectName("Padding");
    public static final PdfName Page = createDirectName(XfdfConstants.PAGE_CAPITAL);
    public static final PdfName PageElement = createDirectName("PageElement");
    public static final PdfName PageLabels = createDirectName("PageLabels");
    public static final PdfName PageLayout = createDirectName("PageLayout");
    public static final PdfName PageMode = createDirectName("PageMode");
    public static final PdfName PageNum = createDirectName("PageNum");
    public static final PdfName Pages = createDirectName("Pages");
    public static final PdfName Pagination = createDirectName("Pagination");
    public static final PdfName PaintType = createDirectName("PaintType");
    public static final PdfName Panose = createDirectName("Panose");
    public static final PdfName Paperclip = createDirectName("Paperclip");
    public static final PdfName Params = createDirectName("Params");
    public static final PdfName Parent = createDirectName("Parent");
    public static final PdfName ParentTree = createDirectName("ParentTree");
    public static final PdfName ParentTreeNextKey = createDirectName("ParentTreeNextKey");
    public static final PdfName Part = createDirectName(StandardRoles.PART);
    public static final PdfName Path = createDirectName("Path");
    public static final PdfName Pattern = createDirectName("Pattern");
    public static final PdfName PatternType = createDirectName("PatternType");
    public static final PdfName Pause = createDirectName("Pause");
    public static final PdfName Perceptual = createDirectName("Perceptual");
    public static final PdfName Perms = createDirectName("Perms");

    /* JADX INFO: renamed from: PC */
    public static final PdfName f3049PC = createDirectName("PC");
    public static final PdfName PCM = createDirectName("PCM");
    public static final PdfName Pdf_Version_1_2 = createDirectName("1.2");
    public static final PdfName Pdf_Version_1_3 = createDirectName("1.3");
    public static final PdfName Pdf_Version_1_4 = createDirectName("1.4");
    public static final PdfName Pdf_Version_1_5 = createDirectName("1.5");
    public static final PdfName Pdf_Version_1_6 = createDirectName("1.6");
    public static final PdfName Pdf_Version_1_7 = createDirectName("1.7");

    /* JADX INFO: renamed from: Pg */
    public static final PdfName f3054Pg = createDirectName("Pg");

    /* JADX INFO: renamed from: PI */
    public static final PdfName f3050PI = createDirectName("PI");
    public static final PdfName PickTrayByPDFSize = createDirectName("PickTrayByPDFSize");
    public static final PdfName Placement = createDirectName("Placement");
    public static final PdfName Play = createDirectName("Play");

    /* JADX INFO: renamed from: PO */
    public static final PdfName f3051PO = createDirectName("PO");
    public static final PdfName Polygon = createDirectName("Polygon");
    public static final PdfName PolyLine = createDirectName("PolyLine");
    public static final PdfName Popup = createDirectName("Popup");
    public static final PdfName Predictor = createDirectName(PngImageHelperConstants.PREDICTOR);
    public static final PdfName Preferred = createDirectName("Preferred");
    public static final PdfName PreserveRB = createDirectName("PreserveRB");
    public static final PdfName PresSteps = createDirectName("PresSteps");
    public static final PdfName Prev = createDirectName("Prev");
    public static final PdfName PrevPage = createDirectName("PrevPage");
    public static final PdfName Print = createDirectName("Print");
    public static final PdfName PrintArea = createDirectName("PrintArea");
    public static final PdfName PrintClip = createDirectName("PrintClip");
    public static final PdfName PrinterMark = createDirectName("PrinterMark");
    public static final PdfName PrintPageRange = createDirectName("PrintPageRange");
    public static final PdfName PrintScaling = createDirectName("PrintScaling");
    public static final PdfName PrintState = createDirectName("PrintState");
    public static final PdfName Private = createDirectName(StandardRoles.PRIVATE);
    public static final PdfName ProcSet = createDirectName("ProcSet");
    public static final PdfName Producer = createDirectName(PdfConst.Producer);
    public static final PdfName PronunciationLexicon = createDirectName("PronunciationLexicon");
    public static final PdfName Prop_Build = createDirectName("Prop_Build");
    public static final PdfName Properties = createDirectName("Properties");

    /* JADX INFO: renamed from: PS */
    public static final PdfName f3052PS = createDirectName("PS");
    public static final PdfName Pushpin = createDirectName("PushPin");

    /* JADX INFO: renamed from: PV */
    public static final PdfName f3053PV = createDirectName("PV");

    /* JADX INFO: renamed from: Q */
    public static final PdfName f3055Q = createDirectName(SvgConstants.Attributes.PATH_DATA_QUAD_CURVE_TO);
    public static final PdfName Quote = createDirectName(StandardRoles.QUOTE);
    public static final PdfName QuadPoints = createDirectName("QuadPoints");

    /* JADX INFO: renamed from: r */
    public static final PdfName f3099r = createDirectName("r");

    /* JADX INFO: renamed from: R */
    public static final PdfName f3056R = createDirectName(SvgConstants.Attributes.PATH_DATA_CATMULL_CURVE);
    public static final PdfName R2L = createDirectName("R2L");
    public static final PdfName Range = createDirectName(HttpHeaders.RANGE);
    public static final PdfName Raw = createDirectName("Raw");

    /* JADX INFO: renamed from: RB */
    public static final PdfName f3057RB = createDirectName(StandardRoles.f3195RB);
    public static final PdfName RBGroups = createDirectName("RBGroups");

    /* JADX INFO: renamed from: RC */
    public static final PdfName f3058RC = createDirectName("RC");
    public static final PdfName RClosedArrow = createDirectName("RClosedArrow");

    /* JADX INFO: renamed from: RD */
    public static final PdfName f3059RD = createDirectName("RD");
    public static final PdfName Reason = createDirectName("Reason");
    public static final PdfName Recipients = createDirectName("Recipients");
    public static final PdfName Rect = createDirectName("Rect");
    public static final PdfName Redact = createDirectName("Redact");
    public static final PdfName Redaction = createDirectName("Redaction");
    public static final PdfName Reference = createDirectName(StandardRoles.REFERENCE);
    public static final PdfName Registry = createDirectName("Registry");
    public static final PdfName RegistryName = createDirectName("RegistryName");
    public static final PdfName RelativeColorimetric = createDirectName("RelativeColorimetric");
    public static final PdfName Rendition = createDirectName("Rendition");
    public static final PdfName Renditions = createDirectName("Renditions");
    public static final PdfName Repeat = createDirectName("Repeat");
    public static final PdfName ResetForm = createDirectName("ResetForm");
    public static final PdfName Resume = createDirectName("Resume");
    public static final PdfName Requirement = createDirectName("Requirement");
    public static final PdfName Requirements = createDirectName("Requirements");
    public static final PdfName Resources = createDirectName("Resources");
    public static final PdfName ReversedChars = createDirectName("ReversedChars");
    public static final PdfName Phoneme = createDirectName("Phoneme");
    public static final PdfName PhoneticAlphabet = createDirectName("PhoneticAlphabet");
    public static final PdfName Ref = createDirectName("Ref");

    /* JADX INFO: renamed from: RI */
    public static final PdfName f3060RI = createDirectName("RI");
    public static final PdfName RichMedia = createDirectName("RichMedia");
    public static final PdfName Ridge = createDirectName("Ridge");

    /* JADX INFO: renamed from: RO */
    public static final PdfName f3061RO = createDirectName("RO");
    public static final PdfName RoleMap = createDirectName("RoleMap");
    public static final PdfName RoleMapNS = createDirectName("RoleMapNS");
    public static final PdfName ROpenArrow = createDirectName("ROpenArrow");
    public static final PdfName Root = createDirectName("Root");
    public static final PdfName Rotate = createDirectName("Rotate");
    public static final PdfName Row = createDirectName("Row");
    public static final PdfName Rows = createDirectName("Rows");
    public static final PdfName RowSpan = createDirectName("RowSpan");

    /* JADX INFO: renamed from: RP */
    public static final PdfName f3062RP = createDirectName(StandardRoles.f3196RP);

    /* JADX INFO: renamed from: RT */
    public static final PdfName f3063RT = createDirectName(StandardRoles.f3197RT);
    public static final PdfName Ruby = createDirectName(StandardRoles.RUBY);
    public static final PdfName RubyAlign = createDirectName("RubyAlign");
    public static final PdfName RubyPosition = createDirectName("RubyPosition");
    public static final PdfName RunLengthDecode = createDirectName("RunLengthDecode");

    /* JADX INFO: renamed from: RV */
    public static final PdfName f3064RV = createDirectName("RV");
    public static final PdfName Stream = createDirectName("Stream");

    /* JADX INFO: renamed from: S */
    public static final PdfName f3065S = createDirectName("S");

    /* JADX INFO: renamed from: SA */
    public static final PdfName f3066SA = createDirectName("SA");
    public static final PdfName Saturation = createDirectName(ExifInterface.TAG_SATURATION);
    public static final PdfName Schema = createDirectName("Schema");
    public static final PdfName Scope = createDirectName("Scope");
    public static final PdfName Screen = createDirectName("Screen");

    /* JADX INFO: renamed from: SD */
    public static final PdfName f3067SD = createDirectName("SD");
    public static final PdfName Sect = createDirectName(StandardRoles.SECT);
    public static final PdfName Separation = createDirectName("Separation");
    public static final PdfName SeparationColorNames = createDirectName("SeparationColorNames");
    public static final PdfName SeparationInfo = createDirectName("SeparationInfo");
    public static final PdfName Shading = createDirectName("Shading");
    public static final PdfName ShadingType = createDirectName("ShadingType");
    public static final PdfName SetOCGState = createDirectName("SetOCGState");
    public static final PdfName SetState = createDirectName("SetState");
    public static final PdfName Short = createDirectName("Short");
    public static final PdfName Sig = createDirectName("Sig");
    public static final PdfName SigFieldLock = createDirectName("SigFieldLock");
    public static final PdfName SigFlags = createDirectName("SigFlags");
    public static final PdfName Signed = createDirectName("Signed");
    public static final PdfName SigRef = createDirectName("SigRef");
    public static final PdfName Simplex = createDirectName("Simplex");
    public static final PdfName SinglePage = createDirectName("SinglePage");
    public static final PdfName Size = createDirectName("Size");
    public static final PdfName Slash = createDirectName("Slash");

    /* JADX INFO: renamed from: SM */
    public static final PdfName f3068SM = createDirectName("SM");
    public static final PdfName SMask = createDirectName("SMask");
    public static final PdfName SMaskInData = createDirectName("SMaskInData");
    public static final PdfName SoftLight = createDirectName("SoftLight");
    public static final PdfName Sold = createDirectName("Sold");
    public static final PdfName Solid = createDirectName("Solid");
    public static final PdfName Sort = createDirectName("Sort");
    public static final PdfName Sound = createDirectName("Sound");
    public static final PdfName Source = createDirectName("Source");
    public static final PdfName Span = createDirectName(StandardRoles.SPAN);
    public static final PdfName SpaceBefore = createDirectName("SpaceBefore");
    public static final PdfName SpaceAfter = createDirectName("SpaceAfter");
    public static final PdfName Square = createDirectName("Square");
    public static final PdfName Squiggly = createDirectName("Squiggly");

    /* JADX INFO: renamed from: St */
    public static final PdfName f3069St = createDirectName("St");
    public static final PdfName Stamp = createDirectName("Stamp");
    public static final PdfName StampImage = createDirectName("StampImage");
    public static final PdfName StampSnapshot = createDirectName("StampSnapshot");
    public static final PdfName Standard = createDirectName("Standard");
    public static final PdfName Start = createDirectName("Start");
    public static final PdfName StartIndent = createDirectName("StartIndent");
    public static final PdfName State = createDirectName("State");
    public static final PdfName StateModel = createDirectName("StateModel");
    public static final PdfName StdCF = createDirectName("StdCF");
    public static final PdfName StemV = createDirectName("StemV");
    public static final PdfName StemH = createDirectName("StemH");
    public static final PdfName Stop = createDirectName("Stop");
    public static final PdfName Stm = createDirectName("Stm");
    public static final PdfName StmF = createDirectName("StmF");
    public static final PdfName StrF = createDirectName("StrF");
    public static final PdfName StrikeOut = createDirectName("StrikeOut");
    public static final PdfName Strong = createDirectName(StandardRoles.STRONG);
    public static final PdfName StructElem = createDirectName("StructElem");
    public static final PdfName StructParent = createDirectName("StructParent");
    public static final PdfName StructParents = createDirectName("StructParents");
    public static final PdfName StructTreeRoot = createDirectName("StructTreeRoot");
    public static final PdfName Style = createDirectName("Style");
    public static final PdfName Sub = createDirectName(StandardRoles.SUB);
    public static final PdfName SubFilter = createDirectName("SubFilter");
    public static final PdfName Subj = createDirectName("Subj");
    public static final PdfName Subject = createDirectName("Subject");
    public static final PdfName SubmitForm = createDirectName("SubmitForm");
    public static final PdfName Subtype = createDirectName("Subtype");
    public static final PdfName Subtype2 = createDirectName("Subtype2");
    public static final PdfName Supplement = createDirectName("Supplement");

    /* JADX INFO: renamed from: Sy */
    public static final PdfName f3070Sy = createDirectName("Sy");
    public static final PdfName Symbol = createDirectName("Symbol");
    public static final PdfName Synchronous = createDirectName("Synchronous");

    /* JADX INFO: renamed from: T */
    public static final PdfName f3071T = createDirectName("T");
    public static final PdfName Tag = createDirectName("Tag");
    public static final PdfName TBorderStyle = createDirectName("TBorderStyle");

    /* JADX INFO: renamed from: TA */
    public static final PdfName f3072TA = createDirectName("TA");
    public static final PdfName Table = createDirectName(StandardRoles.TABLE);
    public static final PdfName Tabs = createDirectName("Tabs");
    public static final PdfName TBody = createDirectName(StandardRoles.TBODY);

    /* JADX INFO: renamed from: TD */
    public static final PdfName f3073TD = createDirectName(StandardRoles.f3198TD);
    public static final PdfName Templates = createDirectName("Templates");
    public static final PdfName Text = createDirectName("Text");
    public static final PdfName TextAlign = createDirectName("TextAlign");
    public static final PdfName TextDecorationColor = createDirectName("TextDecorationColor");
    public static final PdfName TextDecorationThickness = createDirectName("TextDecorationThickness");
    public static final PdfName TextDecorationType = createDirectName("TextDecorationType");
    public static final PdfName TextIndent = createDirectName("TextIndent");

    /* JADX INFO: renamed from: TF */
    public static final PdfName f3074TF = createDirectName("TF");
    public static final PdfName TFoot = createDirectName(StandardRoles.TFOOT);

    /* JADX INFO: renamed from: TH */
    public static final PdfName f3075TH = createDirectName(StandardRoles.f3199TH);
    public static final PdfName THead = createDirectName(StandardRoles.THEAD);
    public static final PdfName Thumb = createDirectName("Thumb");

    /* JADX INFO: renamed from: TI */
    public static final PdfName f3076TI = createDirectName("TI");
    public static final PdfName TilingType = createDirectName("TilingType");
    public static final PdfName Title = createDirectName(StandardRoles.TITLE);
    public static final PdfName TPadding = createDirectName("TPadding");
    public static final PdfName TrimBox = createDirectName("TrimBox");

    /* JADX INFO: renamed from: TK */
    public static final PdfName f3077TK = createDirectName("TK");

    /* JADX INFO: renamed from: TM */
    public static final PdfName f3078TM = createDirectName("TM");
    public static final PdfName TOC = createDirectName(StandardRoles.TOC);
    public static final PdfName TOCI = createDirectName(StandardRoles.TOCI);

    /* JADX INFO: renamed from: TP */
    public static final PdfName f3079TP = createDirectName("TP");
    public static final PdfName Toggle = createDirectName("Toggle");
    public static final PdfName Top = createDirectName(XfdfConstants.TOP);
    public static final PdfName TopSecret = createDirectName("TopSecret");
    public static final PdfName ToUnicode = createDirectName("ToUnicode");

    /* JADX INFO: renamed from: TR */
    public static final PdfName f3080TR = createDirectName(StandardRoles.f3200TR);
    public static final PdfName TR2 = createDirectName("TR2");
    public static final PdfName Trans = createDirectName("Trans");
    public static final PdfName TransformMethod = createDirectName("TransformMethod");
    public static final PdfName TransformParams = createDirectName("TransformParams");
    public static final PdfName Transparency = createDirectName("Transparency");
    public static final PdfName TrapNet = createDirectName("TrapNet");
    public static final PdfName Trapped = createDirectName(PdfConst.Trapped);
    public static final PdfName TrapRegions = createDirectName("TrapRegions");
    public static final PdfName TrapStyles = createDirectName("TrapStyles");
    public static final PdfName True = createDirectName(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
    public static final PdfName TrueType = createDirectName("TrueType");

    /* JADX INFO: renamed from: TU */
    public static final PdfName f3081TU = createDirectName("TU");
    public static final PdfName TwoColumnLeft = createDirectName("TwoColumnLeft");
    public static final PdfName TwoColumnRight = createDirectName("TwoColumnRight");
    public static final PdfName TwoPageLeft = createDirectName("TwoPageLeft");
    public static final PdfName TwoPageRight = createDirectName("TwoPageRight");

    /* JADX INFO: renamed from: Tx */
    public static final PdfName f3082Tx = createDirectName("Tx");
    public static final PdfName Type = createDirectName("Type");
    public static final PdfName Type0 = createDirectName("Type0");
    public static final PdfName Type1 = createDirectName("Type1");
    public static final PdfName Type3 = createDirectName("Type3");

    /* JADX INFO: renamed from: U */
    public static final PdfName f3083U = createDirectName("U");
    public static final PdfName UCR = createDirectName("UCR");
    public static final PdfName UR3 = createDirectName("UR3");
    public static final PdfName UCR2 = createDirectName("UCR2");

    /* JADX INFO: renamed from: UE */
    public static final PdfName f3084UE = createDirectName("UE");

    /* JADX INFO: renamed from: UF */
    public static final PdfName f3085UF = createDirectName("UF");
    public static final PdfName Underline = createDirectName("Underline");
    public static final PdfName Unordered = createDirectName("Unordered");
    public static final PdfName Unspecified = createDirectName("Unspecified");
    public static final PdfName UpperAlpha = createDirectName("UpperAlpha");
    public static final PdfName UpperRoman = createDirectName("UpperRoman");
    public static final PdfName URI = createDirectName(XfdfConstants.URI);
    public static final PdfName URL = createDirectName("URL");
    public static final PdfName URLS = createDirectName("URLS");
    public static final PdfName Usage = createDirectName("Usage");
    public static final PdfName UseAttachments = createDirectName("UseAttachments");
    public static final PdfName UseBlackPtComp = createDirectName("UseBlackPtComp");
    public static final PdfName UseNone = createDirectName("UseNone");
    public static final PdfName UseOC = createDirectName("UseOC");
    public static final PdfName UseOutlines = createDirectName("UseOutlines");
    public static final PdfName UseThumbs = createDirectName("UseThumbs");
    public static final PdfName User = createDirectName("User");
    public static final PdfName UserProperties = createDirectName("UserProperties");
    public static final PdfName UserUnit = createDirectName("UserUnit");

    /* JADX INFO: renamed from: V */
    public static final PdfName f3086V = createDirectName("V");

    /* JADX INFO: renamed from: V2 */
    public static final PdfName f3087V2 = createDirectName("V2");

    /* JADX INFO: renamed from: VE */
    public static final PdfName f3088VE = createDirectName("VE");
    public static final PdfName Version = createDirectName("Version");
    public static final PdfName Vertices = createDirectName("Vertices");
    public static final PdfName VerticesPerRow = createDirectName("VerticesPerRow");
    public static final PdfName View = createDirectName("View");
    public static final PdfName ViewArea = createDirectName("ViewArea");
    public static final PdfName ViewerPreferences = createDirectName("ViewerPreferences");
    public static final PdfName ViewClip = createDirectName("ViewClip");
    public static final PdfName ViewState = createDirectName("ViewState");
    public static final PdfName VisiblePages = createDirectName("VisiblePages");
    public static final PdfName Volatile = createDirectName("Volatile");
    public static final PdfName Volume = createDirectName("Volume");
    public static final PdfName VRI = createDirectName("VRI");

    /* JADX INFO: renamed from: W */
    public static final PdfName f3089W = createDirectName(ExifInterface.LONGITUDE_WEST);

    /* JADX INFO: renamed from: W2 */
    public static final PdfName f3090W2 = createDirectName("W2");
    public static final PdfName Warichu = createDirectName(StandardRoles.WARICHU);
    public static final PdfName Watermark = createDirectName("Watermark");

    /* JADX INFO: renamed from: WC */
    public static final PdfName f3091WC = createDirectName("WC");
    public static final PdfName WhitePoint = createDirectName(ExifInterface.TAG_WHITE_POINT);
    public static final PdfName Width = createDirectName("Width");
    public static final PdfName Widths = createDirectName("Widths");
    public static final PdfName Widget = createDirectName("Widget");
    public static final PdfName Win = createDirectName("Win");
    public static final PdfName WinAnsiEncoding = createDirectName("WinAnsiEncoding");
    public static final PdfName WritingMode = createDirectName("WritingMode");

    /* JADX INFO: renamed from: WP */
    public static final PdfName f3092WP = createDirectName(StandardRoles.f3201WP);

    /* JADX INFO: renamed from: WS */
    public static final PdfName f3093WS = createDirectName("WS");

    /* JADX INFO: renamed from: WT */
    public static final PdfName f3094WT = createDirectName(StandardRoles.f3202WT);

    /* JADX INFO: renamed from: X */
    public static final PdfName f3095X = createDirectName("X");
    public static final PdfName x_sampa = createDirectName("x-sampa");
    public static final PdfName XFA = createDirectName("XFA");
    public static final PdfName XML = createDirectName("XML");
    public static final PdfName XObject = createDirectName("XObject");
    public static final PdfName XHeight = createDirectName("XHeight");
    public static final PdfName XRef = createDirectName("XRef");
    public static final PdfName XRefStm = createDirectName("XRefStm");
    public static final PdfName XStep = createDirectName("XStep");
    public static final PdfName XYZ = createDirectName(XfdfConstants.XYZ_CAPITAL);
    public static final PdfName YStep = createDirectName("YStep");
    public static final PdfName ZapfDingbats = createDirectName("ZapfDingbats");
    public static final PdfName zh_Latn_pinyin = createDirectName("zh-Latn-pinyin");
    public static final PdfName zh_Latn_wadegile = createDirectName("zh-Latn-wadegile");
    public static final PdfName Zoom = createDirectName("Zoom");
    public static Map<String, PdfName> staticNames = PdfNameLoader.loadNames();

    @Override // com.itextpdf.kernel.pdf.PdfObject
    public byte getType() {
        return (byte) 6;
    }

    private static PdfName createDirectName(String str) {
        return new PdfName(str, true);
    }

    public PdfName(String str) {
        this.value = str;
    }

    private PdfName(String str, boolean z) {
        super(z);
        this.value = str;
    }

    public PdfName(byte[] bArr) {
        super(bArr);
        this.value = null;
    }

    private PdfName() {
        this.value = null;
    }

    public String getValue() {
        if (this.value == null) {
            generateValue();
        }
        return this.value;
    }

    @Override // java.lang.Comparable
    public int compareTo(PdfName pdfName) {
        return getValue().compareTo(pdfName.getValue());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && compareTo((PdfName) obj) == 0;
    }

    public int hashCode() {
        return getValue().hashCode();
    }

    protected void generateValue() {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < this.content.length) {
            try {
                char hex = (char) this.content[i];
                if (hex == '#') {
                    byte b = this.content[i + 1];
                    i += 2;
                    hex = (char) ((ByteBuffer.getHex(b) << 4) + ByteBuffer.getHex(this.content[i]));
                }
                sb.append(hex);
                i++;
            } catch (IndexOutOfBoundsException unused) {
            }
        }
        this.value = sb.toString();
    }

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject
    protected void generateContent() {
        int length = this.value.length();
        ByteBuffer byteBuffer = new ByteBuffer(length + 20);
        char[] charArray = this.value.toCharArray();
        for (int i = 0; i < length; i++) {
            char c = (char) (charArray[i] & 255);
            if (c == ' ') {
                byteBuffer.append(space);
            } else if (c == '#') {
                byteBuffer.append(numberSign);
            } else if (c == '%') {
                byteBuffer.append(percent);
            } else if (c == '/') {
                byteBuffer.append(solidus);
            } else if (c == '<') {
                byteBuffer.append(lessThan);
            } else if (c == '>') {
                byteBuffer.append(greaterThan);
            } else if (c == '[') {
                byteBuffer.append(leftSquare);
            } else if (c == ']') {
                byteBuffer.append(rightSquare);
            } else if (c == '{') {
                byteBuffer.append(leftCurlyBracket);
            } else if (c == '}') {
                byteBuffer.append(rightCurlyBracket);
            } else if (c == '(') {
                byteBuffer.append(leftParenthesis);
            } else if (c == ')') {
                byteBuffer.append(rightParenthesis);
            } else if (c >= ' ' && c <= '~') {
                byteBuffer.append(c);
            } else {
                byteBuffer.append(35);
                if (c < 16) {
                    byteBuffer.append(48);
                }
                byteBuffer.append(Integer.toHexString(c));
            }
        }
        this.content = byteBuffer.toByteArray();
    }

    public String toString() {
        if (this.content != null) {
            return RemoteSettings.FORWARD_SLASH_STRING.concat(new String(this.content, StandardCharsets.ISO_8859_1));
        }
        return RemoteSettings.FORWARD_SLASH_STRING + getValue();
    }

    @Override // com.itextpdf.kernel.pdf.PdfObject
    protected PdfObject newInstance() {
        return new PdfName();
    }

    @Override // com.itextpdf.kernel.pdf.PdfPrimitiveObject, com.itextpdf.kernel.pdf.PdfObject
    protected void copyContent(PdfObject pdfObject, PdfDocument pdfDocument, ICopyFilter iCopyFilter) {
        super.copyContent(pdfObject, pdfDocument, iCopyFilter);
        this.value = ((PdfName) pdfObject).value;
    }
}
