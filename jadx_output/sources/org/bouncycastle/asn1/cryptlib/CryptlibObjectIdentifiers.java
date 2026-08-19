package org.bouncycastle.asn1.cryptlib;

import com.facebook.appevents.AppEventsConstants;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;

/* JADX INFO: loaded from: classes5.dex */
public class CryptlibObjectIdentifiers {
    public static final ASN1ObjectIdentifier cryptlib;
    public static final ASN1ObjectIdentifier curvey25519;
    public static final ASN1ObjectIdentifier ecc;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("1.3.6.1.4.1.3029");
        cryptlib = aSN1ObjectIdentifier;
        ASN1ObjectIdentifier aSN1ObjectIdentifierBranch = aSN1ObjectIdentifier.branch(AppEventsConstants.EVENT_PARAM_VALUE_YES).branch("5");
        ecc = aSN1ObjectIdentifierBranch;
        curvey25519 = aSN1ObjectIdentifierBranch.branch(AppEventsConstants.EVENT_PARAM_VALUE_YES);
    }
}
