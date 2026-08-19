package com.itextpdf.commons.actions.data;

import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class ProductData {
    private final String minimalCompatibleLicenseKeyVersion;
    private final String productName;
    private final String publicProductName;
    private final int sinceCopyrightYear;
    private final int toCopyrightYear;
    private final String version;

    public ProductData(String str, String str2, String str3, int i, int i2) {
        this(str, str2, str3, null, i, i2);
    }

    public ProductData(String str, String str2, String str3, String str4, int i, int i2) {
        this.publicProductName = str;
        this.productName = str2;
        this.version = str3;
        this.minimalCompatibleLicenseKeyVersion = str4;
        this.sinceCopyrightYear = i;
        this.toCopyrightYear = i2;
    }

    public String getPublicProductName() {
        return this.publicProductName;
    }

    public String getProductName() {
        return this.productName;
    }

    public String getVersion() {
        return this.version;
    }

    public int getSinceCopyrightYear() {
        return this.sinceCopyrightYear;
    }

    public int getToCopyrightYear() {
        return this.toCopyrightYear;
    }

    public String getMinCompatibleLicensingModuleVersion() {
        return this.minimalCompatibleLicenseKeyVersion;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ProductData productData = (ProductData) obj;
        return Objects.equals(this.publicProductName, productData.publicProductName) && Objects.equals(this.productName, productData.productName) && Objects.equals(this.version, productData.version) && this.sinceCopyrightYear == productData.sinceCopyrightYear && this.toCopyrightYear == productData.toCopyrightYear;
    }

    public int hashCode() {
        String str = this.publicProductName;
        int iHashCode = str != null ? str.hashCode() : 0;
        int i = iHashCode * 31;
        String str2 = this.productName;
        int iHashCode2 = iHashCode + i + (str2 != null ? str2.hashCode() : 0);
        int i2 = iHashCode2 * 31;
        String str3 = this.version;
        int iHashCode3 = iHashCode2 + i2 + (str3 != null ? str3.hashCode() : 0);
        int i3 = iHashCode3 + (iHashCode3 * 31) + this.sinceCopyrightYear;
        return i3 + (i3 * 31) + this.toCopyrightYear;
    }
}
