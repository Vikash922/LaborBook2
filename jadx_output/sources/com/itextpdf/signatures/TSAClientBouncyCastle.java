package com.itextpdf.signatures;

import com.itextpdf.commons.utils.Base64;
import com.itextpdf.commons.utils.SystemUtil;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.signatures.SignUtils;
import com.itextpdf.signatures.exceptions.SignExceptionMessageConstant;
import com.itextpdf.styledxmlparser.resolver.resource.ResourceResolver;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.tsp.TSPException;
import org.bouncycastle.tsp.TimeStampRequest;
import org.bouncycastle.tsp.TimeStampRequestGenerator;
import org.bouncycastle.tsp.TimeStampResponse;
import org.bouncycastle.tsp.TimeStampToken;
import org.bouncycastle.tsp.TimeStampTokenInfo;
import org.shadow.apache.commons.lang3.CharEncoding;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class TSAClientBouncyCastle implements ITSAClient {
    public static final String DEFAULTHASHALGORITHM = "SHA-256";
    public static final int DEFAULTTOKENSIZE = 4096;
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) TSAClientBouncyCastle.class);
    protected String digestAlgorithm;
    protected int tokenSizeEstimate;
    protected ITSAInfoBouncyCastle tsaInfo;
    protected String tsaPassword;
    private String tsaReqPolicy;
    protected String tsaURL;
    protected String tsaUsername;

    public TSAClientBouncyCastle(String str) {
        this(str, null, null, 4096, "SHA-256");
    }

    public TSAClientBouncyCastle(String str, String str2, String str3) {
        this(str, str2, str3, 4096, "SHA-256");
    }

    public TSAClientBouncyCastle(String str, String str2, String str3, int i, String str4) {
        this.tsaURL = str;
        this.tsaUsername = str2;
        this.tsaPassword = str3;
        this.tokenSizeEstimate = i;
        this.digestAlgorithm = str4;
    }

    public void setTSAInfo(ITSAInfoBouncyCastle iTSAInfoBouncyCastle) {
        this.tsaInfo = iTSAInfoBouncyCastle;
    }

    @Override // com.itextpdf.signatures.ITSAClient
    public int getTokenSizeEstimate() {
        return this.tokenSizeEstimate;
    }

    public String getTSAReqPolicy() {
        return this.tsaReqPolicy;
    }

    public void setTSAReqPolicy(String str) {
        this.tsaReqPolicy = str;
    }

    @Override // com.itextpdf.signatures.ITSAClient
    public MessageDigest getMessageDigest() throws GeneralSecurityException {
        return SignUtils.getMessageDigest(this.digestAlgorithm);
    }

    @Override // com.itextpdf.signatures.ITSAClient
    public byte[] getTimeStampToken(byte[] bArr) throws TSPException, IOException {
        TimeStampRequestGenerator timeStampRequestGenerator = new TimeStampRequestGenerator();
        timeStampRequestGenerator.setCertReq(true);
        String str = this.tsaReqPolicy;
        if (str != null && str.length() > 0) {
            timeStampRequestGenerator.setReqPolicy(this.tsaReqPolicy);
        }
        TimeStampRequest timeStampRequestGenerate = timeStampRequestGenerator.generate(new ASN1ObjectIdentifier(DigestAlgorithms.getAllowedDigest(this.digestAlgorithm)), bArr, BigInteger.valueOf(SystemUtil.getTimeBasedSeed()));
        TimeStampResponse timeStampResponse = new TimeStampResponse(getTSAResponse(timeStampRequestGenerate.getEncoded()));
        timeStampResponse.validate(timeStampRequestGenerate);
        PKIFailureInfo failInfo = timeStampResponse.getFailInfo();
        int iIntValue = failInfo == null ? 0 : failInfo.intValue();
        if (iIntValue != 0) {
            throw new PdfException(SignExceptionMessageConstant.INVALID_TSA_RESPONSE).setMessageParams(this.tsaURL, String.valueOf(iIntValue));
        }
        TimeStampToken timeStampToken = timeStampResponse.getTimeStampToken();
        if (timeStampToken == null) {
            throw new PdfException(SignExceptionMessageConstant.THIS_TSA_FAILED_TO_RETURN_TIME_STAMP_TOKEN).setMessageParams(this.tsaURL, timeStampResponse.getStatusString());
        }
        TimeStampTokenInfo timeStampInfo = timeStampToken.getTimeStampInfo();
        byte[] encoded = timeStampToken.getEncoded();
        LOGGER.info("Timestamp generated: " + timeStampInfo.getGenTime());
        ITSAInfoBouncyCastle iTSAInfoBouncyCastle = this.tsaInfo;
        if (iTSAInfoBouncyCastle != null) {
            iTSAInfoBouncyCastle.inspectTimeStampTokenInfo(timeStampInfo);
        }
        this.tokenSizeEstimate = encoded.length + 32;
        return encoded;
    }

    protected byte[] getTSAResponse(byte[] bArr) throws IOException {
        SignUtils.TsaResponse tsaResponseForUserRequest = SignUtils.getTsaResponseForUserRequest(this.tsaURL, bArr, this.tsaUsername, this.tsaPassword);
        InputStream inputStream = tsaResponseForUserRequest.tsaResponseStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr2, 0, 1024);
            if (i < 0) {
                break;
            }
            byteArrayOutputStream.write(bArr2, 0, i);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        return (tsaResponseForUserRequest.encoding == null || !tsaResponseForUserRequest.encoding.toLowerCase().equals(ResourceResolver.BASE64_IDENTIFIER.toLowerCase())) ? byteArray : Base64.decode(new String(byteArray, CharEncoding.US_ASCII));
    }
}
