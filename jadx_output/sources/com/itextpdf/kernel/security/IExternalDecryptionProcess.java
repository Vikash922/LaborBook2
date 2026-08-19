package com.itextpdf.kernel.security;

import org.bouncycastle.cms.Recipient;
import org.bouncycastle.cms.RecipientId;

/* JADX INFO: loaded from: classes6.dex */
public interface IExternalDecryptionProcess {
    Recipient getCmsRecipient();

    RecipientId getCmsRecipientId();
}
