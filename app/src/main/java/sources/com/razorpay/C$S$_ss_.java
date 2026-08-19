package com.razorpay;

import com.facebook.appevents.AppEventsConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itextpdf.forms.xfdf.XfdfConstants;
import com.laborbook.base.analytics.ConstantEventAttributes;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.razorpay.$S$_ss_, reason: invalid class name */
/* JADX INFO: compiled from: Validation.java */
/* JADX INFO: loaded from: classes5.dex */
class C$S$_ss_ {
    C$S$_ss_() {
    }

    static final Map<String, String> validateFields(JSONObject jSONObject) {
        new HashMap();
        Map<String, String> mapValidateCurrency = validateCurrency(jSONObject);
        if (mapValidateCurrency != null) {
            return mapValidateCurrency;
        }
        Map<String, String> mapValidateAmount = validateAmount(jSONObject);
        if (mapValidateAmount != null) {
            return mapValidateAmount;
        }
        Map<String, String> mapValidateContact = validateContact(jSONObject);
        if (mapValidateContact != null) {
            return mapValidateContact;
        }
        Map<String, String> mapValidateEmail = validateEmail(jSONObject);
        if (mapValidateEmail != null) {
            return mapValidateEmail;
        }
        Map<String, String> mapValidatePaymentMethod = validatePaymentMethod(jSONObject);
        if (mapValidatePaymentMethod != null) {
            return mapValidatePaymentMethod;
        }
        return null;
    }

    static Map<String, String> validateCurrency(JSONObject jSONObject) {
        String strOptString = jSONObject.optString(FirebaseAnalytics.Param.CURRENCY);
        if (strOptString.isEmpty() || strOptString.matches("^[A-Z]{3}$")) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(XfdfConstants.FIELD, FirebaseAnalytics.Param.CURRENCY);
        map.put("description", "Currency should be 3 characters. Default value is INR");
        return map;
    }

    static Map<String, String> validateAmount(JSONObject jSONObject) {
        String strOptString = jSONObject.optString(ConstantEventAttributes.AMOUNT);
        if (jSONObject.has(FirebaseAnalytics.Param.METHOD) && jSONObject.optString(FirebaseAnalytics.Param.METHOD).equalsIgnoreCase("emandate")) {
            if (strOptString.isEmpty() || strOptString.equalsIgnoreCase(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                return null;
            }
            HashMap map = new HashMap();
            map.put(XfdfConstants.FIELD, ConstantEventAttributes.AMOUNT);
            map.put("description", "Amount should be 0 in case of Emandate.");
            return map;
        }
        if (strOptString.isEmpty() || strOptString.matches("^[1-9][0-9]*[0-9]{2}$")) {
            return null;
        }
        HashMap map2 = new HashMap();
        map2.put(XfdfConstants.FIELD, ConstantEventAttributes.AMOUNT);
        map2.put("description", "Amount should be in paise. Minimum value is 100, which is equal to Re.1");
        return map2;
    }

    static Map<String, String> validateContact(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("contact");
        HashMap map = new HashMap();
        if (strOptString.isEmpty()) {
            return null;
        }
        if (strOptString.length() < 10 || strOptString.length() > 15) {
            map.put(XfdfConstants.FIELD, "contact");
            map.put("description", "Contact length should be between [10-15]");
            return map;
        }
        if (strOptString.matches("^[0-9()\\+]?[0-9()\\- ]*$")) {
            return null;
        }
        map.put(XfdfConstants.FIELD, "contact");
        map.put("description", "Contact can only include + in the start and following characters: + - ( ) 0-9 space");
        return map;
    }

    static Map<String, String> validateEmail(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("email");
        HashMap map = new HashMap();
        if (strOptString.isEmpty()) {
            return null;
        }
        if (strOptString.length() > 255) {
            map.put(XfdfConstants.FIELD, "email");
            map.put("description", "e-Mail cannot be longer than 255 characters");
            return map;
        }
        if (strOptString.matches("^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(\\.[a-zA-Z0-9-]+)+$")) {
            return null;
        }
        map.put(XfdfConstants.FIELD, "email");
        map.put("description", "e-Mail validation failed");
        return map;
    }

    static Map<String, String> validatePaymentMethod(JSONObject jSONObject) {
        Map<String, String> mapValidateCardInfo;
        String strOptString = jSONObject.optString(FirebaseAnalytics.Param.METHOD);
        String strOptString2 = jSONObject.optString("provider");
        Map map = new HashMap();
        if (strOptString.isEmpty() && !strOptString2.isEmpty() && strOptString2.equalsIgnoreCase("google_pay")) {
            return null;
        }
        if (strOptString.isEmpty()) {
            map.put(XfdfConstants.FIELD, FirebaseAnalytics.Param.METHOD);
            map.put("description", "method is a required field");
            return map;
        }
        if (strOptString.equalsIgnoreCase("app") && !strOptString2.isEmpty() && strOptString2.equalsIgnoreCase("cred") && (map = $sS$$__s$S$(jSONObject)) != null) {
            return map;
        }
        if (!strOptString.equals("card") || (mapValidateCardInfo = validateCardInfo(map, jSONObject)) == null) {
            return null;
        }
        return mapValidateCardInfo;
    }

    private static Map<String, String> $sS$$__s$S$(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("contact");
        HashMap map = new HashMap();
        if (!strOptString.isEmpty()) {
            if (strOptString.length() < 10 || strOptString.length() > 15) {
                map.put(XfdfConstants.FIELD, "contact");
                map.put("description", "Contact length should be between [10-15]");
                return map;
            }
            if (strOptString.matches("^[0-9()\\+]?[0-9()\\- ]*$")) {
                return null;
            }
            map.put(XfdfConstants.FIELD, "contact");
            map.put("description", "Contact can only include + in the start and following characters: + - ( ) 0-9 space");
            return map;
        }
        map.put(XfdfConstants.FIELD, "contact");
        map.put("description", "Please add contact element for this payment method");
        return map;
    }

    static Map<String, String> validateCardInfo(Map<String, String> map, JSONObject jSONObject) {
        Map<String, String> mapValidateCardName = validateCardName(jSONObject);
        if (mapValidateCardName != null) {
            return mapValidateCardName;
        }
        Map<String, String> mapValidateCardNumber = validateCardNumber(jSONObject);
        if (mapValidateCardNumber != null) {
            return mapValidateCardNumber;
        }
        Map<String, String> mapValidateCardExpiry = validateCardExpiry(jSONObject);
        if (mapValidateCardExpiry != null) {
            return mapValidateCardExpiry;
        }
        Map<String, String> mapValidateCardCvv = validateCardCvv(jSONObject);
        if (mapValidateCardCvv != null) {
            return mapValidateCardCvv;
        }
        return null;
    }

    static Map<String, String> validateCardName(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("card[name]");
        HashMap map = new HashMap();
        map.put(XfdfConstants.FIELD, "card[name]");
        if (strOptString.isEmpty() || strOptString.matches("^[a-zA-Z. ]*$")) {
            return null;
        }
        map.put(XfdfConstants.FIELD, "name");
        map.put("description", "");
        return map;
    }

    static Map<String, String> validateCardNumber(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("card[number]");
        HashMap map = new HashMap();
        map.put(XfdfConstants.FIELD, "card_number");
        if (strOptString.isEmpty()) {
            return null;
        }
        if (strOptString.length() < 13 || strOptString.length() > 19) {
            map.put("description", "Card number cannot have lesser than 13 digits or more than 19 digits");
            return map;
        }
        if (strOptString.matches("^[0-9]*")) {
            return null;
        }
        map.put("description", "Card number can only have digits 0-9");
        return map;
    }

    static Map<String, String> validateCardExpiry(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("card[expiry_month]");
        HashMap map = new HashMap();
        map.put(XfdfConstants.FIELD, "card[expiry_month]");
        if (!strOptString.isEmpty()) {
            if (strOptString.length() == 1) {
                strOptString = AppEventsConstants.EVENT_PARAM_VALUE_NO + strOptString;
            }
            if (strOptString.length() > 2) {
                map.put("description", "Card expiry month needs to be between 01-12");
                return map;
            }
            if (!strOptString.matches("^(0[1-9]|1[0-2])$")) {
                map.put("description", "Card expiry month can only have digits 0-9");
                return map;
            }
        }
        String strOptString2 = jSONObject.optString("card[expiry_year]");
        map.put(XfdfConstants.FIELD, "card[expiry_year]");
        if (strOptString2.isEmpty()) {
            return null;
        }
        if (strOptString2.length() == 1) {
            strOptString2 = AppEventsConstants.EVENT_PARAM_VALUE_NO + strOptString2;
        }
        if (strOptString2.length() > 2) {
            map.put("description", "Card expiry year needs to be two digits");
            return map;
        }
        if (strOptString2.matches("^[1-9][0-9]$")) {
            return null;
        }
        map.put("description", "Card expiry month can only have digits 0-9");
        return map;
    }

    static Map<String, String> validateCardCvv(JSONObject jSONObject) {
        HashMap map = new HashMap();
        String strOptString = jSONObject.optString("card[cvv]");
        map.put(XfdfConstants.FIELD, "card[cvv]");
        if (strOptString.isEmpty()) {
            return null;
        }
        if (strOptString.length() == 1) {
            strOptString = AppEventsConstants.EVENT_PARAM_VALUE_NO + strOptString;
        }
        if (strOptString.length() < 3 || strOptString.length() > 4) {
            map.put("description", "Card cvv needs to be in 3 or 4 digits");
            return map;
        }
        if (strOptString.matches("^[0-9]{3,4}$")) {
            return null;
        }
        map.put(XfdfConstants.FIELD, "cvv");
        map.put("description", "Card cvv can only have digits 0-9");
        return map;
    }
}
