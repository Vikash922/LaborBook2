package com.amplitude.core.events;

import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Revenue.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 .2\u00020\u0001:\u0001.B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010)\u001a\u00020*J\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u000bJ\u0006\u0010,\u001a\u00020-R*\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR(\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R*\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0017@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u000e\"\u0004\b\u001f\u0010\u0010R\u001c\u0010 \u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u000e\"\u0004\b\"\u0010\u0010R*\u0010#\u001a\u0004\u0018\u00010\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\n\u001a\u0004\b$\u0010\u0007\"\u0004\b%\u0010\tR\u001c\u0010&\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u000e\"\u0004\b(\u0010\u0010¨\u0006/"}, m2722d2 = {"Lcom/amplitude/core/events/Revenue;", "", "()V", "value", "", "price", "getPrice", "()Ljava/lang/Double;", "setPrice", "(Ljava/lang/Double;)V", "Ljava/lang/Double;", "", "productId", "getProductId", "()Ljava/lang/String;", InAppPurchaseConstants.METHOD_SET_PRODUCT_ID, "(Ljava/lang/String;)V", "properties", "", "getProperties", "()Ljava/util/Map;", "setProperties", "(Ljava/util/Map;)V", "", FirebaseAnalytics.Param.QUANTITY, "getQuantity", "()I", "setQuantity", "(I)V", "receipt", "getReceipt", "setReceipt", "receiptSig", "getReceiptSig", "setReceiptSig", "revenue", "getRevenue", "setRevenue", "revenueType", "getRevenueType", "setRevenueType", "isValid", "", "receiptSignature", "toRevenueEvent", "Lcom/amplitude/core/events/RevenueEvent;", "Companion", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public class Revenue {
    public static final String REVENUE = "$revenue";
    public static final String REVENUE_PRICE = "$price";
    public static final String REVENUE_PRODUCT_ID = "$productId";
    public static final String REVENUE_QUANTITY = "$quantity";
    public static final String REVENUE_RECEIPT = "$receipt";
    public static final String REVENUE_RECEIPT_SIG = "$receiptSig";
    public static final String REVENUE_TYPE = "$revenueType";
    private Double price;
    private String productId;
    private Map<String, Object> properties;
    private int quantity = 1;
    private String receipt;
    private String receiptSig;
    private Double revenue;
    private String revenueType;

    public final String getProductId() {
        return this.productId;
    }

    public final void setProductId(String str) {
        String str2 = str;
        if (str2 == null || str2.length() == 0) {
            return;
        }
        this.productId = str;
    }

    public final int getQuantity() {
        return this.quantity;
    }

    public final void setQuantity(int i) {
        if (i > 0) {
            this.quantity = i;
        }
    }

    public final Double getPrice() {
        return this.price;
    }

    public final void setPrice(Double d) {
        if (d == null) {
            return;
        }
        d.doubleValue();
        this.price = d;
    }

    public final String getRevenueType() {
        return this.revenueType;
    }

    public final void setRevenueType(String str) {
        this.revenueType = str;
    }

    public final String getReceipt() {
        return this.receipt;
    }

    public final void setReceipt(String str) {
        this.receipt = str;
    }

    public final String getReceiptSig() {
        return this.receiptSig;
    }

    public final void setReceiptSig(String str) {
        this.receiptSig = str;
    }

    public final Map<String, Object> getProperties() {
        return this.properties;
    }

    public final void setProperties(Map<String, Object> map) {
        this.properties = map;
    }

    public final Double getRevenue() {
        return this.revenue;
    }

    public final void setRevenue(Double d) {
        if (d == null) {
            return;
        }
        d.doubleValue();
        this.revenue = d;
    }

    public final Revenue setReceipt(String receipt, String receiptSignature) {
        Intrinsics.checkNotNullParameter(receipt, "receipt");
        Intrinsics.checkNotNullParameter(receiptSignature, "receiptSignature");
        this.receipt = receipt;
        this.receiptSig = receiptSignature;
        return this;
    }

    public final boolean isValid() {
        return this.price != null;
    }

    public final RevenueEvent toRevenueEvent() {
        RevenueEvent revenueEvent = new RevenueEvent();
        LinkedHashMap linkedHashMap = this.properties;
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        String str = this.productId;
        if (str != null) {
            linkedHashMap.put(REVENUE_PRODUCT_ID, str);
        }
        linkedHashMap.put(REVENUE_QUANTITY, Integer.valueOf(this.quantity));
        Double d = this.price;
        if (d != null) {
            linkedHashMap.put(REVENUE_PRICE, Double.valueOf(d.doubleValue()));
        }
        String str2 = this.revenueType;
        if (str2 != null) {
            linkedHashMap.put(REVENUE_TYPE, str2);
        }
        String str3 = this.receipt;
        if (str3 != null) {
            linkedHashMap.put(REVENUE_RECEIPT, str3);
        }
        String str4 = this.receiptSig;
        if (str4 != null) {
            linkedHashMap.put(REVENUE_RECEIPT_SIG, str4);
        }
        Double d2 = this.revenue;
        if (d2 != null) {
            linkedHashMap.put(REVENUE, Double.valueOf(d2.doubleValue()));
        }
        revenueEvent.setEventProperties(linkedHashMap);
        return revenueEvent;
    }
}
