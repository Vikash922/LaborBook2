package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import androidx.collection.ArrayMap;
import com.amplitude.android.migration.DatabaseConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzfn;
import com.google.android.gms.internal.measurement.zzgn;
import com.google.android.gms.internal.measurement.zzrw;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.itextpdf.svg.SvgConstants;
import com.laborbook.base.analytics.ConstantEventAttributes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.time.DurationKt;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzam extends zznr {
    private static final String[] zza = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};
    private static final String[] zzb = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};
    private static final String[] zzc = {ConstantEventAttributes.APP_VERSION, "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;"};
    private static final String[] zzd = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};
    private static final String[] zze = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};
    private static final String[] zzf = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzh = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};
    private static final String[] zzi = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};
    private static final String[] zzj = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};
    private static final String[] zzk = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};
    private final zzav zzl;
    private final zznl zzm;

    public final int zza(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        try {
            return m156e_().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error deleting conditional property", zzgi.zza(str), zzi().zzc(str2), e);
            return 0;
        }
    }

    @Override // com.google.android.gms.measurement.internal.zznr
    protected final boolean zzc() {
        return false;
    }

    public final long zza(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        try {
            return m156e_().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[]{str, String.valueOf(Math.max(0, Math.min(DurationKt.NANOS_IN_MILLIS, zze().zzb(str, zzbj.zzp))))});
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error deleting over the limit events. appId", zzgi.zza(str), e);
            return 0L;
        }
    }

    /* JADX INFO: renamed from: b_ */
    public final long m153b_() {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = m156e_().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                if (!cursorRawQuery.moveToFirst()) {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return -1L;
                }
                long j = cursorRawQuery.getLong(0);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error querying raw events", e);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return -1L;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public final long zza(zzgn.zzk zzkVar) throws IOException {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzkVar);
        Preconditions.checkNotEmpty(zzkVar.zzz());
        byte[] bArrZzca = zzkVar.zzca();
        long jZza = mo158g_().zza(bArrZzca);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzkVar.zzz());
        contentValues.put("metadata_fingerprint", Long.valueOf(jZza));
        contentValues.put(SvgConstants.Tags.METADATA, bArrZzca);
        try {
            m156e_().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
            return jZza;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing raw event metadata. appId", zzgi.zza(zzkVar.zzz()), e);
            throw e;
        }
    }

    protected final long zzb(String str, String str2) {
        long jZza;
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        SQLiteDatabase sQLiteDatabaseM156e_ = m156e_();
        sQLiteDatabaseM156e_.beginTransaction();
        long j = 0;
        try {
            try {
                jZza = zza("select " + str2 + " from app2 where app_id=?", new String[]{str}, -1L);
            } catch (SQLiteException e) {
                e = e;
            }
            if (jZza == -1) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", str);
                contentValues.put("first_open_count", (Integer) 0);
                contentValues.put("previous_install_count", (Integer) 0);
                if (sQLiteDatabaseM156e_.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                    zzj().zzg().zza("Failed to insert column (got -1). appId", zzgi.zza(str), str2);
                    return -1L;
                }
                jZza = 0;
                zzj().zzg().zza("Error inserting column. appId", zzgi.zza(str), str2, e);
                sQLiteDatabaseM156e_.endTransaction();
                return j;
            }
            try {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("app_id", str);
                contentValues2.put(str2, Long.valueOf(1 + jZza));
                if (sQLiteDatabaseM156e_.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                    zzj().zzg().zza("Failed to update column (got 0). appId", zzgi.zza(str), str2);
                    return -1L;
                }
                sQLiteDatabaseM156e_.setTransactionSuccessful();
                return jZza;
            } catch (SQLiteException e2) {
                e = e2;
                j = jZza;
            }
        } finally {
            sQLiteDatabaseM156e_.endTransaction();
        }
    }

    public final long zzb(String str) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        return zza("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
    }

    /* JADX INFO: renamed from: c_ */
    public final long m154c_() {
        return zza("select max(bundle_end_timestamp) from queue", (String[]) null, 0L);
    }

    /* JADX INFO: renamed from: d_ */
    public final long m155d_() {
        return zza("select max(timestamp) from raw_events", (String[]) null, 0L);
    }

    public final long zzc(String str) {
        Preconditions.checkNotEmpty(str);
        return zza("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    private final long zzb(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = m156e_().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    long j = cursorRawQuery.getLong(0);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return j;
                }
                throw new SQLiteException("Database returned empty set");
            } catch (SQLiteException e) {
                zzj().zzg().zza("Database error", str, e);
                throw e;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long zza(String str, String[] strArr, long j) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = m156e_().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    return cursorRawQuery.getLong(0);
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return j;
            } catch (SQLiteException e) {
                zzj().zzg().zza("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    /* JADX INFO: renamed from: e_ */
    final SQLiteDatabase m156e_() {
        zzt();
        try {
            return this.zzl.getWritableDatabase();
        } catch (SQLiteException e) {
            zzj().zzu().zza("Error opening database", e);
            throw e;
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0089: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:32:0x0089 */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle zzd(java.lang.String r6) throws java.lang.Throwable {
        /*
            r5 = this;
            r5.zzt()
            r5.zzal()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r5.m156e_()     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            java.lang.String r2 = "select parameters from default_event_params where app_id=?"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            r4 = 0
            r3[r4] = r6     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L71 android.database.sqlite.SQLiteException -> L73
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            if (r2 != 0) goto L30
            com.google.android.gms.measurement.internal.zzgi r6 = r5.zzj()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            com.google.android.gms.measurement.internal.zzgk r6 = r6.zzp()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            java.lang.String r2 = "Default event parameters not found"
            r6.zza(r2)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            if (r1 == 0) goto L2f
            r1.close()
        L2f:
            return r0
        L30:
            byte[] r2 = r1.getBlob(r4)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            com.google.android.gms.internal.measurement.zzgn$zzf$zza r3 = com.google.android.gms.internal.measurement.zzgn.zzf.zze()     // Catch: java.io.IOException -> L57 android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            com.google.android.gms.internal.measurement.zzmk r2 = com.google.android.gms.measurement.internal.zzol.zza(r3, r2)     // Catch: java.io.IOException -> L57 android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            com.google.android.gms.internal.measurement.zzgn$zzf$zza r2 = (com.google.android.gms.internal.measurement.zzgn.zzf.zza) r2     // Catch: java.io.IOException -> L57 android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            com.google.android.gms.internal.measurement.zzml r2 = r2.zzai()     // Catch: java.io.IOException -> L57 android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            com.google.android.gms.internal.measurement.zzlc r2 = (com.google.android.gms.internal.measurement.zzlc) r2     // Catch: java.io.IOException -> L57 android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            com.google.android.gms.internal.measurement.zzgn$zzf r2 = (com.google.android.gms.internal.measurement.zzgn.zzf) r2     // Catch: java.io.IOException -> L57 android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            r5.mo158g_()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            java.util.List r6 = r2.zzh()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            android.os.Bundle r6 = com.google.android.gms.measurement.internal.zzol.zza(r6)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            if (r1 == 0) goto L56
            r1.close()
        L56:
            return r6
        L57:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzgi r3 = r5.zzj()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            com.google.android.gms.measurement.internal.zzgk r3 = r3.zzg()     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            java.lang.String r4 = "Failed to retrieve default event parameters. appId"
            java.lang.Object r6 = com.google.android.gms.measurement.internal.zzgi.zza(r6)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            r3.zza(r4, r6, r2)     // Catch: android.database.sqlite.SQLiteException -> L6f java.lang.Throwable -> L88
            if (r1 == 0) goto L6e
            r1.close()
        L6e:
            return r0
        L6f:
            r6 = move-exception
            goto L75
        L71:
            r6 = move-exception
            goto L8a
        L73:
            r6 = move-exception
            r1 = r0
        L75:
            com.google.android.gms.measurement.internal.zzgi r2 = r5.zzj()     // Catch: java.lang.Throwable -> L88
            com.google.android.gms.measurement.internal.zzgk r2 = r2.zzg()     // Catch: java.lang.Throwable -> L88
            java.lang.String r3 = "Error selecting default event parameters"
            r2.zza(r3, r6)     // Catch: java.lang.Throwable -> L88
            if (r1 == 0) goto L87
            r1.close()
        L87:
            return r0
        L88:
            r6 = move-exception
            r0 = r1
        L8a:
            if (r0 == 0) goto L8f
            r0.close()
        L8f:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zzd(java.lang.String):android.os.Bundle");
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0091: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:32:0x0091 */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<com.google.android.gms.internal.measurement.zzgn.zzf, java.lang.Long> zza(java.lang.String r8, java.lang.Long r9) throws java.lang.Throwable {
        /*
            r7 = this;
            r7.zzt()
            r7.zzal()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r7.m156e_()     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7b
            java.lang.String r2 = "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"
            r3 = 2
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7b
            r4 = 0
            r3[r4] = r8     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7b
            java.lang.String r5 = java.lang.String.valueOf(r9)     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7b
            r6 = 1
            r3[r6] = r5     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7b
            android.database.Cursor r1 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L79 android.database.sqlite.SQLiteException -> L7b
            boolean r2 = r1.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            if (r2 != 0) goto L37
            com.google.android.gms.measurement.internal.zzgi r8 = r7.zzj()     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.zzgk r8 = r8.zzp()     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            java.lang.String r9 = "Main event not found"
            r8.zza(r9)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            if (r1 == 0) goto L36
            r1.close()
        L36:
            return r0
        L37:
            byte[] r2 = r1.getBlob(r4)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            long r3 = r1.getLong(r6)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            java.lang.Long r3 = java.lang.Long.valueOf(r3)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.zzgn$zzf$zza r4 = com.google.android.gms.internal.measurement.zzgn.zzf.zze()     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.zzmk r2 = com.google.android.gms.measurement.internal.zzol.zza(r4, r2)     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.zzgn$zzf$zza r2 = (com.google.android.gms.internal.measurement.zzgn.zzf.zza) r2     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.zzml r2 = r2.zzai()     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.zzlc r2 = (com.google.android.gms.internal.measurement.zzlc) r2     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            com.google.android.gms.internal.measurement.zzgn$zzf r2 = (com.google.android.gms.internal.measurement.zzgn.zzf) r2     // Catch: java.io.IOException -> L5f android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            android.util.Pair r8 = android.util.Pair.create(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            if (r1 == 0) goto L5e
            r1.close()
        L5e:
            return r8
        L5f:
            r2 = move-exception
            com.google.android.gms.measurement.internal.zzgi r3 = r7.zzj()     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.zzgk r3 = r3.zzg()     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            java.lang.String r4 = "Failed to merge main event. appId, eventId"
            java.lang.Object r8 = com.google.android.gms.measurement.internal.zzgi.zza(r8)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            r3.zza(r4, r8, r9, r2)     // Catch: android.database.sqlite.SQLiteException -> L77 java.lang.Throwable -> L90
            if (r1 == 0) goto L76
            r1.close()
        L76:
            return r0
        L77:
            r8 = move-exception
            goto L7d
        L79:
            r8 = move-exception
            goto L92
        L7b:
            r8 = move-exception
            r1 = r0
        L7d:
            com.google.android.gms.measurement.internal.zzgi r9 = r7.zzj()     // Catch: java.lang.Throwable -> L90
            com.google.android.gms.measurement.internal.zzgk r9 = r9.zzg()     // Catch: java.lang.Throwable -> L90
            java.lang.String r2 = "Error selecting main event"
            r9.zza(r2, r8)     // Catch: java.lang.Throwable -> L90
            if (r1 == 0) goto L8f
            r1.close()
        L8f:
            return r0
        L90:
            r8 = move-exception
            r0 = r1
        L92:
            if (r0 == 0) goto L97
            r0.close()
        L97:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zza(java.lang.String, java.lang.Long):android.util.Pair");
    }

    /* JADX WARN: Not initialized variable reg: 4, insn: 0x044e: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:131:0x044d */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0451  */
    /* JADX WARN: Removed duplicated region for block: B:139:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzh zze(java.lang.String r27) {
        /*
            Method dump skipped, instruction units count: 1109
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zze(java.lang.String):com.google.android.gms.measurement.internal.zzh");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0159  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzaf zzc(java.lang.String r33, java.lang.String r34) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zzc(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzaf");
    }

    public final zzao zzf(String str) throws Throwable {
        Cursor cursorQuery;
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        Cursor cursor = null;
        try {
            cursorQuery = m156e_().query("apps", new String[]{"remote_config", "config_last_modified_time", "e_tag"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    byte[] blob = cursorQuery.getBlob(0);
                    String string = cursorQuery.getString(1);
                    String string2 = cursorQuery.getString(2);
                    if (cursorQuery.moveToNext()) {
                        zzj().zzg().zza("Got multiple records for app config, expected one. appId", zzgi.zza(str));
                    }
                    if (blob == null) {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                    zzao zzaoVar = new zzao(blob, string, string2);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return zzaoVar;
                } catch (SQLiteException e) {
                    e = e;
                    zzj().zzg().zza("Error querying remote config. appId", zzgi.zza(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
            }
            th = th;
            cursor = cursorQuery;
        } catch (SQLiteException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (cursor != null) {
            cursor.close();
        }
        throw th;
    }

    public final zzar zza(long j, String str, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        return zza(j, str, 1L, false, false, z3, false, z5, z6);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzar zza(long r22, java.lang.String r24, long r25, boolean r27, boolean r28, boolean r29, boolean r30, boolean r31, boolean r32) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zza(long, java.lang.String, long, boolean, boolean, boolean, boolean, boolean, boolean):com.google.android.gms.measurement.internal.zzar");
    }

    public final zzaz zzg(String str) {
        Preconditions.checkNotNull(str);
        zzt();
        zzal();
        return zzaz.zza(zza("select dma_consent_settings from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    public final zzbd zzd(String str, String str2) {
        return zzc(DatabaseConstants.EVENT_TABLE_NAME, str, str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x016b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.measurement.internal.zzbd zzc(java.lang.String r28, java.lang.String r29, java.lang.String r30) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zzc(java.lang.String, java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzbd");
    }

    public final zzjc zzh(String str) {
        Preconditions.checkNotNull(str);
        zzt();
        zzal();
        return zzjc.zzb(zza("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    public final zzjc zzi(String str) {
        Preconditions.checkNotNull(str);
        zzt();
        zzal();
        zzjc zzjcVar = (zzjc) zza("select consent_state, consent_source from consent_settings where app_id=? limit 1;", new String[]{str}, new zzas() { // from class: com.google.android.gms.measurement.internal.zzap
            @Override // com.google.android.gms.measurement.internal.zzas
            public final Object zza(Cursor cursor) {
                return zzjc.zza(cursor.getString(0), cursor.getInt(1));
            }
        });
        return zzjcVar == null ? zzjc.zza : zzjcVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0191  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzog zzj(java.lang.String r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zzj(java.lang.String):com.google.android.gms.measurement.internal.zzog");
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.zzom zze(java.lang.String r19, java.lang.String r20) {
        /*
            r18 = this;
            r8 = r20
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r19)
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r20)
            r18.zzt()
            r18.zzal()
            r9 = 0
            android.database.sqlite.SQLiteDatabase r10 = r18.m156e_()     // Catch: java.lang.Throwable -> L8b android.database.sqlite.SQLiteException -> L8f
            java.lang.String r11 = "user_attributes"
            r0 = 3
            java.lang.String[] r12 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L8b android.database.sqlite.SQLiteException -> L8f
            java.lang.String r0 = "set_timestamp"
            r1 = 0
            r12[r1] = r0     // Catch: java.lang.Throwable -> L8b android.database.sqlite.SQLiteException -> L8f
            java.lang.String r0 = "value"
            r2 = 1
            r12[r2] = r0     // Catch: java.lang.Throwable -> L8b android.database.sqlite.SQLiteException -> L8f
            java.lang.String r0 = "origin"
            r3 = 2
            r12[r3] = r0     // Catch: java.lang.Throwable -> L8b android.database.sqlite.SQLiteException -> L8f
            java.lang.String r13 = "app_id=? and name=?"
            java.lang.String[] r14 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L8b android.database.sqlite.SQLiteException -> L8f
            r14[r1] = r19     // Catch: java.lang.Throwable -> L8b android.database.sqlite.SQLiteException -> L8f
            r14[r2] = r8     // Catch: java.lang.Throwable -> L8b android.database.sqlite.SQLiteException -> L8f
            r16 = 0
            r17 = 0
            r15 = 0
            android.database.Cursor r10 = r10.query(r11, r12, r13, r14, r15, r16, r17)     // Catch: java.lang.Throwable -> L8b android.database.sqlite.SQLiteException -> L8f
            boolean r0 = r10.moveToFirst()     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L87
            if (r0 != 0) goto L44
            if (r10 == 0) goto L43
            r10.close()
        L43:
            return r9
        L44:
            long r5 = r10.getLong(r1)     // Catch: java.lang.Throwable -> L83 android.database.sqlite.SQLiteException -> L87
            r11 = r18
            java.lang.Object r7 = r11.zza(r10, r2)     // Catch: android.database.sqlite.SQLiteException -> L81 java.lang.Throwable -> Lb2
            if (r7 != 0) goto L56
            if (r10 == 0) goto L55
            r10.close()
        L55:
            return r9
        L56:
            java.lang.String r3 = r10.getString(r3)     // Catch: android.database.sqlite.SQLiteException -> L81 java.lang.Throwable -> Lb2
            com.google.android.gms.measurement.internal.zzom r0 = new com.google.android.gms.measurement.internal.zzom     // Catch: android.database.sqlite.SQLiteException -> L81 java.lang.Throwable -> Lb2
            r1 = r0
            r2 = r19
            r4 = r20
            r1.<init>(r2, r3, r4, r5, r7)     // Catch: android.database.sqlite.SQLiteException -> L81 java.lang.Throwable -> Lb2
            boolean r1 = r10.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L81 java.lang.Throwable -> Lb2
            if (r1 == 0) goto L7b
            com.google.android.gms.measurement.internal.zzgi r1 = r18.zzj()     // Catch: android.database.sqlite.SQLiteException -> L81 java.lang.Throwable -> Lb2
            com.google.android.gms.measurement.internal.zzgk r1 = r1.zzg()     // Catch: android.database.sqlite.SQLiteException -> L81 java.lang.Throwable -> Lb2
            java.lang.String r2 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r3 = com.google.android.gms.measurement.internal.zzgi.zza(r19)     // Catch: android.database.sqlite.SQLiteException -> L81 java.lang.Throwable -> Lb2
            r1.zza(r2, r3)     // Catch: android.database.sqlite.SQLiteException -> L81 java.lang.Throwable -> Lb2
        L7b:
            if (r10 == 0) goto L80
            r10.close()
        L80:
            return r0
        L81:
            r0 = move-exception
            goto L93
        L83:
            r0 = move-exception
            r11 = r18
            goto Lb3
        L87:
            r0 = move-exception
            r11 = r18
            goto L93
        L8b:
            r0 = move-exception
            r11 = r18
            goto Lb4
        L8f:
            r0 = move-exception
            r11 = r18
            r10 = r9
        L93:
            com.google.android.gms.measurement.internal.zzgi r1 = r18.zzj()     // Catch: java.lang.Throwable -> Lb2
            com.google.android.gms.measurement.internal.zzgk r1 = r1.zzg()     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r2 = "Error querying user property. appId"
            java.lang.Object r3 = com.google.android.gms.measurement.internal.zzgi.zza(r19)     // Catch: java.lang.Throwable -> Lb2
            com.google.android.gms.measurement.internal.zzgh r4 = r18.zzi()     // Catch: java.lang.Throwable -> Lb2
            java.lang.String r4 = r4.zzc(r8)     // Catch: java.lang.Throwable -> Lb2
            r1.zza(r2, r3, r4, r0)     // Catch: java.lang.Throwable -> Lb2
            if (r10 == 0) goto Lb1
            r10.close()
        Lb1:
            return r9
        Lb2:
            r0 = move-exception
        Lb3:
            r9 = r10
        Lb4:
            if (r9 == 0) goto Lb9
            r9.close()
        Lb9:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zze(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzom");
    }

    private final Object zza(Cursor cursor, int i) {
        int type = cursor.getType(i);
        if (type == 0) {
            zzj().zzg().zza("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i));
        }
        if (type == 3) {
            return cursor.getString(i);
        }
        if (type == 4) {
            zzj().zzg().zza("Loaded invalid blob type value, ignoring it");
            return null;
        }
        zzj().zzg().zza("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0049  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final <T> T zza(java.lang.String r3, java.lang.String[] r4, com.google.android.gms.measurement.internal.zzas<T> r5) throws java.lang.Throwable {
        /*
            r2 = this;
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r2.m156e_()     // Catch: java.lang.Throwable -> L2e android.database.sqlite.SQLiteException -> L30
            android.database.Cursor r3 = r1.rawQuery(r3, r4)     // Catch: java.lang.Throwable -> L2e android.database.sqlite.SQLiteException -> L30
            boolean r4 = r3.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L2c java.lang.Throwable -> L45
            if (r4 != 0) goto L22
            com.google.android.gms.measurement.internal.zzgi r4 = r2.zzj()     // Catch: android.database.sqlite.SQLiteException -> L2c java.lang.Throwable -> L45
            com.google.android.gms.measurement.internal.zzgk r4 = r4.zzp()     // Catch: android.database.sqlite.SQLiteException -> L2c java.lang.Throwable -> L45
            java.lang.String r5 = "No data found"
            r4.zza(r5)     // Catch: android.database.sqlite.SQLiteException -> L2c java.lang.Throwable -> L45
            if (r3 == 0) goto L21
            r3.close()
        L21:
            return r0
        L22:
            java.lang.Object r4 = r5.zza(r3)     // Catch: android.database.sqlite.SQLiteException -> L2c java.lang.Throwable -> L45
            if (r3 == 0) goto L2b
            r3.close()
        L2b:
            return r4
        L2c:
            r4 = move-exception
            goto L32
        L2e:
            r4 = move-exception
            goto L47
        L30:
            r4 = move-exception
            r3 = r0
        L32:
            com.google.android.gms.measurement.internal.zzgi r5 = r2.zzj()     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.measurement.internal.zzgk r5 = r5.zzg()     // Catch: java.lang.Throwable -> L45
            java.lang.String r1 = "Error querying database."
            r5.zza(r1, r4)     // Catch: java.lang.Throwable -> L45
            if (r3 == 0) goto L44
            r3.close()
        L44:
            return r0
        L45:
            r4 = move-exception
            r0 = r3
        L47:
            if (r0 == 0) goto L4c
            r0.close()
        L4c:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zza(java.lang.String, java.lang.String[], com.google.android.gms.measurement.internal.zzas):java.lang.Object");
    }

    private final String zzao() {
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        return "app_id=? AND (" + ("(upload_type = " + zznt.GOOGLE_SIGNAL.zza() + " AND (ABS(creation_timestamp - " + jCurrentTimeMillis + ") <= CAST(" + zzah.zzm() + " AS INTEGER)))") + " OR" + ("(upload_type != " + zznt.GOOGLE_SIGNAL.zza() + " AND (ABS(creation_timestamp - " + jCurrentTimeMillis + ") <= CAST(" + zzah.zzo() + " AS INTEGER)))") + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zza(long r5) throws java.lang.Throwable {
        /*
            r4 = this;
            r4.zzt()
            r4.zzal()
            r0 = 0
            android.database.sqlite.SQLiteDatabase r1 = r4.m156e_()     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L42
            java.lang.String r2 = "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"
            r3 = 1
            java.lang.String[] r3 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L42
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L42
            r6 = 0
            r3[r6] = r5     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L42
            android.database.Cursor r5 = r1.rawQuery(r2, r3)     // Catch: java.lang.Throwable -> L40 android.database.sqlite.SQLiteException -> L42
            boolean r1 = r5.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L57
            if (r1 != 0) goto L34
            com.google.android.gms.measurement.internal.zzgi r6 = r4.zzj()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L57
            com.google.android.gms.measurement.internal.zzgk r6 = r6.zzp()     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L57
            java.lang.String r1 = "No expired configs for apps with pending events"
            r6.zza(r1)     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L57
            if (r5 == 0) goto L33
            r5.close()
        L33:
            return r0
        L34:
            java.lang.String r6 = r5.getString(r6)     // Catch: android.database.sqlite.SQLiteException -> L3e java.lang.Throwable -> L57
            if (r5 == 0) goto L3d
            r5.close()
        L3d:
            return r6
        L3e:
            r6 = move-exception
            goto L44
        L40:
            r6 = move-exception
            goto L59
        L42:
            r6 = move-exception
            r5 = r0
        L44:
            com.google.android.gms.measurement.internal.zzgi r1 = r4.zzj()     // Catch: java.lang.Throwable -> L57
            com.google.android.gms.measurement.internal.zzgk r1 = r1.zzg()     // Catch: java.lang.Throwable -> L57
            java.lang.String r2 = "Error selecting expired configs"
            r1.zza(r2, r6)     // Catch: java.lang.Throwable -> L57
            if (r5 == 0) goto L56
            r5.close()
        L56:
            return r0
        L57:
            r6 = move-exception
            r0 = r5
        L59:
            if (r0 == 0) goto L5e
            r0.close()
        L5e:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zza(long):java.lang.String");
    }

    /* JADX INFO: renamed from: f_ */
    public final String m157f_() throws Throwable {
        Throwable th;
        Cursor cursorRawQuery;
        try {
            cursorRawQuery = m156e_().rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
            try {
                try {
                    if (!cursorRawQuery.moveToFirst()) {
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return null;
                    }
                    String string = cursorRawQuery.getString(0);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return string;
                } catch (SQLiteException e) {
                    e = e;
                    zzj().zzg().zza("Database error getting next bundle app id", e);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            th = th2;
        } catch (SQLiteException e2) {
            e = e2;
            cursorRawQuery = null;
        } catch (Throwable th3) {
            th = th3;
            cursorRawQuery = null;
        }
        if (cursorRawQuery != null) {
            cursorRawQuery.close();
        }
        throw th;
    }

    private final String zza(String str, String[] strArr, String str2) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = m156e_().rawQuery(str, strArr);
                if (cursorRawQuery.moveToFirst()) {
                    return cursorRawQuery.getString(0);
                }
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return str2;
            } catch (SQLiteException e) {
                zzj().zzg().zza("Database error", str, e);
                throw e;
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    public final List<Pair<zzgn.zzk, Long>> zza(String str, int i, int i2) {
        byte[] bArrZzc;
        long jZzc;
        long jZzc2;
        zzt();
        zzal();
        int i3 = 1;
        Preconditions.checkArgument(i > 0);
        Preconditions.checkArgument(i2 > 0);
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = m156e_().query("queue", new String[]{"rowid", "data", "retry_count"}, "app_id=?", new String[]{str}, null, null, "rowid", String.valueOf(i));
                if (!cursorQuery.moveToFirst()) {
                    List<Pair<zzgn.zzk, Long>> listEmptyList = Collections.emptyList();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return listEmptyList;
                }
                ArrayList arrayList = new ArrayList();
                int length = 0;
                while (true) {
                    long j = cursorQuery.getLong(0);
                    try {
                        bArrZzc = mo158g_().zzc(cursorQuery.getBlob(i3));
                    } catch (IOException e) {
                        zzj().zzg().zza("Failed to unzip queued bundle. appId", zzgi.zza(str), e);
                    }
                    if (!arrayList.isEmpty() && bArrZzc.length + length > i2) {
                        break;
                    }
                    try {
                        zzgn.zzk.zza zzaVar = (zzgn.zzk.zza) zzol.zza(zzgn.zzk.zzw(), bArrZzc);
                        if (!arrayList.isEmpty()) {
                            zzgn.zzk zzkVar = (zzgn.zzk) ((Pair) arrayList.get(0)).first;
                            zzgn.zzk zzkVar2 = (zzgn.zzk) ((com.google.android.gms.internal.measurement.zzlc) zzaVar.zzai());
                            if (!zzkVar.zzae().equals(zzkVar2.zzae()) || !zzkVar.zzad().equals(zzkVar2.zzad()) || zzkVar.zzau() != zzkVar2.zzau() || !zzkVar.zzaf().equals(zzkVar2.zzaf())) {
                                break;
                            }
                            Iterator<zzgn.zzo> it = zzkVar.zzas().iterator();
                            while (true) {
                                jZzc = -1;
                                if (!it.hasNext()) {
                                    jZzc2 = -1;
                                    break;
                                }
                                zzgn.zzo next = it.next();
                                if ("_npa".equals(next.zzg())) {
                                    jZzc2 = next.zzc();
                                    break;
                                }
                            }
                            Iterator<zzgn.zzo> it2 = zzkVar2.zzas().iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    break;
                                }
                                zzgn.zzo next2 = it2.next();
                                if ("_npa".equals(next2.zzg())) {
                                    jZzc = next2.zzc();
                                    break;
                                }
                            }
                            if (jZzc2 != jZzc) {
                                break;
                            }
                        }
                        if (!cursorQuery.isNull(2)) {
                            zzaVar.zzi(cursorQuery.getInt(2));
                        }
                        length += bArrZzc.length;
                        arrayList.add(Pair.create((zzgn.zzk) ((com.google.android.gms.internal.measurement.zzlc) zzaVar.zzai()), Long.valueOf(j)));
                    } catch (IOException e2) {
                        zzj().zzg().zza("Failed to merge queued bundle. appId", zzgi.zza(str), e2);
                    }
                    if (!cursorQuery.moveToNext() || length > i2) {
                        break;
                    }
                    i3 = 1;
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            } catch (SQLiteException e3) {
                zzj().zzg().zza("Error querying bundles. appId", zzgi.zza(str), e3);
                List<Pair<zzgn.zzk, Long>> listEmptyList2 = Collections.emptyList();
                if (0 != 0) {
                    cursor.close();
                }
                return listEmptyList2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    public final List<zzaf> zza(String str, String str2, String str3) {
        Preconditions.checkNotEmpty(str);
        zzt();
        zzal();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(str3 + "*");
            sb.append(" and name glob ?");
        }
        return zza(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x008c, code lost:
    
        zzj().zzg().zza("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0177  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzaf> zza(java.lang.String r40, java.lang.String[] r41) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zza(java.lang.String, java.lang.String[]):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zznk> zzk(java.lang.String r15) {
        /*
            r14 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r15)
            r14.zzt()
            r14.zzal()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r14.m156e_()     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            java.lang.String r3 = "trigger_uris"
            r4 = 3
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            java.lang.String r5 = "trigger_uri"
            r11 = 0
            r4[r11] = r5     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            java.lang.String r5 = "timestamp_millis"
            r12 = 1
            r4[r12] = r5     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            java.lang.String r5 = "source"
            r13 = 2
            r4[r13] = r5     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            java.lang.String r5 = "app_id=?"
            java.lang.String[] r6 = new java.lang.String[r12]     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            r6[r11] = r15     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            java.lang.String r9 = "rowid"
            r10 = 0
            r7 = 0
            r8 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            if (r2 != 0) goto L42
            if (r1 == 0) goto L41
            r1.close()
        L41:
            return r0
        L42:
            java.lang.String r2 = r1.getString(r11)     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            if (r2 != 0) goto L4a
            java.lang.String r2 = ""
        L4a:
            long r3 = r1.getLong(r12)     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            int r5 = r1.getInt(r13)     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            com.google.android.gms.measurement.internal.zznk r6 = new com.google.android.gms.measurement.internal.zznk     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            r6.<init>(r2, r3, r5)     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            r0.add(r6)     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L66 android.database.sqlite.SQLiteException -> L68
            if (r2 != 0) goto L42
            if (r1 == 0) goto L65
            r1.close()
        L65:
            return r0
        L66:
            r15 = move-exception
            goto L84
        L68:
            r0 = move-exception
            com.google.android.gms.measurement.internal.zzgi r2 = r14.zzj()     // Catch: java.lang.Throwable -> L66
            com.google.android.gms.measurement.internal.zzgk r2 = r2.zzg()     // Catch: java.lang.Throwable -> L66
            java.lang.String r3 = "Error querying trigger uris. appId"
            java.lang.Object r15 = com.google.android.gms.measurement.internal.zzgi.zza(r15)     // Catch: java.lang.Throwable -> L66
            r2.zza(r3, r15, r0)     // Catch: java.lang.Throwable -> L66
            java.util.List r15 = java.util.Collections.emptyList()     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L83
            r1.close()
        L83:
            return r15
        L84:
            if (r1 == 0) goto L89
            r1.close()
        L89:
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zzk(java.lang.String):java.util.List");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzom> zzl(java.lang.String r23) throws java.lang.Throwable {
        /*
            r22 = this;
            com.google.android.gms.common.internal.Preconditions.checkNotEmpty(r23)
            r22.zzt()
            r22.zzal()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r22.m156e_()     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            java.lang.String r3 = "user_attributes"
            r4 = 4
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            java.lang.String r5 = "name"
            r11 = 0
            r4[r11] = r5     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            java.lang.String r5 = "origin"
            r12 = 1
            r4[r12] = r5     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            java.lang.String r5 = "set_timestamp"
            r13 = 2
            r4[r13] = r5     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            java.lang.String r5 = "value"
            r14 = 3
            r4[r14] = r5     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            java.lang.String r5 = "app_id=?"
            java.lang.String[] r6 = new java.lang.String[r12]     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            r6[r11] = r23     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            java.lang.String r9 = "rowid"
            java.lang.String r10 = "1000"
            r7 = 0
            r8 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            if (r2 != 0) goto L48
            if (r1 == 0) goto L47
            r1.close()
        L47:
            return r0
        L48:
            java.lang.String r18 = r1.getString(r11)     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            java.lang.String r2 = r1.getString(r12)     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            if (r2 != 0) goto L54
            java.lang.String r2 = ""
        L54:
            r17 = r2
            long r19 = r1.getLong(r13)     // Catch: java.lang.Throwable -> L8d android.database.sqlite.SQLiteException -> L91
            r2 = r22
            java.lang.Object r21 = r2.zza(r1, r14)     // Catch: android.database.sqlite.SQLiteException -> L8b java.lang.Throwable -> Laf
            if (r21 != 0) goto L74
            com.google.android.gms.measurement.internal.zzgi r3 = r22.zzj()     // Catch: android.database.sqlite.SQLiteException -> L8b java.lang.Throwable -> Laf
            com.google.android.gms.measurement.internal.zzgk r3 = r3.zzg()     // Catch: android.database.sqlite.SQLiteException -> L8b java.lang.Throwable -> Laf
            java.lang.String r4 = "Read invalid user property value, ignoring it. appId"
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzgi.zza(r23)     // Catch: android.database.sqlite.SQLiteException -> L8b java.lang.Throwable -> Laf
            r3.zza(r4, r5)     // Catch: android.database.sqlite.SQLiteException -> L8b java.lang.Throwable -> Laf
            goto L7f
        L74:
            com.google.android.gms.measurement.internal.zzom r3 = new com.google.android.gms.measurement.internal.zzom     // Catch: android.database.sqlite.SQLiteException -> L8b java.lang.Throwable -> Laf
            r15 = r3
            r16 = r23
            r15.<init>(r16, r17, r18, r19, r21)     // Catch: android.database.sqlite.SQLiteException -> L8b java.lang.Throwable -> Laf
            r0.add(r3)     // Catch: android.database.sqlite.SQLiteException -> L8b java.lang.Throwable -> Laf
        L7f:
            boolean r3 = r1.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L8b java.lang.Throwable -> Laf
            if (r3 != 0) goto L48
            if (r1 == 0) goto L8a
            r1.close()
        L8a:
            return r0
        L8b:
            r0 = move-exception
            goto L94
        L8d:
            r0 = move-exception
            r2 = r22
            goto Lb0
        L91:
            r0 = move-exception
            r2 = r22
        L94:
            com.google.android.gms.measurement.internal.zzgi r3 = r22.zzj()     // Catch: java.lang.Throwable -> Laf
            com.google.android.gms.measurement.internal.zzgk r3 = r3.zzg()     // Catch: java.lang.Throwable -> Laf
            java.lang.String r4 = "Error querying user properties. appId"
            java.lang.Object r5 = com.google.android.gms.measurement.internal.zzgi.zza(r23)     // Catch: java.lang.Throwable -> Laf
            r3.zza(r4, r5, r0)     // Catch: java.lang.Throwable -> Laf
            java.util.List r0 = java.util.Collections.emptyList()     // Catch: java.lang.Throwable -> Laf
            if (r1 == 0) goto Lae
            r1.close()
        Lae:
            return r0
        Laf:
            r0 = move-exception
        Lb0:
            if (r1 == 0) goto Lb5
            r1.close()
        Lb5:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zzl(java.lang.String):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a5, code lost:
    
        zzj().zzg().zza("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0147  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.measurement.internal.zzom> zzb(java.lang.String r23, java.lang.String r24, java.lang.String r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zzb(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    final Map<Integer, zzgn.zzm> zzm(String str) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = m156e_().query("audience_filter_values", new String[]{"audience_id", "current_results"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, zzgn.zzm> mapEmptyMap = Collections.emptyMap();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return mapEmptyMap;
                }
                ArrayMap arrayMap = new ArrayMap();
                do {
                    int i = cursorQuery.getInt(0);
                    try {
                        arrayMap.put(Integer.valueOf(i), (zzgn.zzm) ((com.google.android.gms.internal.measurement.zzlc) ((zzgn.zzm.zza) zzol.zza(zzgn.zzm.zze(), cursorQuery.getBlob(1))).zzai()));
                    } catch (IOException e) {
                        zzj().zzg().zza("Failed to merge filter results. appId, audienceId, error", zzgi.zza(str), Integer.valueOf(i), e);
                    }
                } while (cursorQuery.moveToNext());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayMap;
            } catch (SQLiteException e2) {
                zzj().zzg().zza("Database error querying filter results. appId", zzgi.zza(str), e2);
                Map<Integer, zzgn.zzm> mapEmptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return mapEmptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    final Map<Integer, List<zzfn.zzb>> zzn(String str) {
        Preconditions.checkNotEmpty(str);
        ArrayMap arrayMap = new ArrayMap();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = m156e_().query("event_filters", new String[]{"audience_id", "data"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, List<zzfn.zzb>> mapEmptyMap = Collections.emptyMap();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return mapEmptyMap;
                }
                do {
                    try {
                        zzfn.zzb zzbVar = (zzfn.zzb) ((com.google.android.gms.internal.measurement.zzlc) ((zzfn.zzb.zza) zzol.zza(zzfn.zzb.zzc(), cursorQuery.getBlob(1))).zzai());
                        if (zzbVar.zzk()) {
                            int i = cursorQuery.getInt(0);
                            List arrayList = (List) arrayMap.get(Integer.valueOf(i));
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                arrayMap.put(Integer.valueOf(i), arrayList);
                            }
                            arrayList.add(zzbVar);
                        }
                    } catch (IOException e) {
                        zzj().zzg().zza("Failed to merge filter. appId", zzgi.zza(str), e);
                    }
                } while (cursorQuery.moveToNext());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayMap;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            zzj().zzg().zza("Database error querying filters. appId", zzgi.zza(str), e2);
            Map<Integer, List<zzfn.zzb>> mapEmptyMap2 = Collections.emptyMap();
            if (0 != 0) {
                cursor.close();
            }
            return mapEmptyMap2;
        }
    }

    final Map<Integer, List<zzfn.zzb>> zzf(String str, String str2) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        ArrayMap arrayMap = new ArrayMap();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = m156e_().query("event_filters", new String[]{"audience_id", "data"}, "app_id=? AND event_name=?", new String[]{str, str2}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, List<zzfn.zzb>> mapEmptyMap = Collections.emptyMap();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return mapEmptyMap;
                }
                do {
                    try {
                        zzfn.zzb zzbVar = (zzfn.zzb) ((com.google.android.gms.internal.measurement.zzlc) ((zzfn.zzb.zza) zzol.zza(zzfn.zzb.zzc(), cursorQuery.getBlob(1))).zzai());
                        int i = cursorQuery.getInt(0);
                        List arrayList = (List) arrayMap.get(Integer.valueOf(i));
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            arrayMap.put(Integer.valueOf(i), arrayList);
                        }
                        arrayList.add(zzbVar);
                    } catch (IOException e) {
                        zzj().zzg().zza("Failed to merge filter. appId", zzgi.zza(str), e);
                    }
                } while (cursorQuery.moveToNext());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayMap;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            zzj().zzg().zza("Database error querying filters. appId", zzgi.zza(str), e2);
            Map<Integer, List<zzfn.zzb>> mapEmptyMap2 = Collections.emptyMap();
            if (0 != 0) {
                cursor.close();
            }
            return mapEmptyMap2;
        }
    }

    final Map<Integer, List<zzfn.zze>> zzg(String str, String str2) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        ArrayMap arrayMap = new ArrayMap();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = m156e_().query("property_filters", new String[]{"audience_id", "data"}, "app_id=? AND property_name=?", new String[]{str, str2}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    Map<Integer, List<zzfn.zze>> mapEmptyMap = Collections.emptyMap();
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return mapEmptyMap;
                }
                do {
                    try {
                        zzfn.zze zzeVar = (zzfn.zze) ((com.google.android.gms.internal.measurement.zzlc) ((zzfn.zze.zza) zzol.zza(zzfn.zze.zzc(), cursorQuery.getBlob(1))).zzai());
                        int i = cursorQuery.getInt(0);
                        List arrayList = (List) arrayMap.get(Integer.valueOf(i));
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            arrayMap.put(Integer.valueOf(i), arrayList);
                        }
                        arrayList.add(zzeVar);
                    } catch (IOException e) {
                        zzj().zzg().zza("Failed to merge filter", zzgi.zza(str), e);
                    }
                } while (cursorQuery.moveToNext());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayMap;
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e2) {
            zzj().zzg().zza("Database error querying filters. appId", zzgi.zza(str), e2);
            Map<Integer, List<zzfn.zze>> mapEmptyMap2 = Collections.emptyMap();
            if (0 != 0) {
                cursor.close();
            }
            return mapEmptyMap2;
        }
    }

    final Map<Integer, List<Integer>> zzo(String str) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        ArrayMap arrayMap = new ArrayMap();
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = m156e_().rawQuery("select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;", new String[]{str, str});
                if (!cursorRawQuery.moveToFirst()) {
                    Map<Integer, List<Integer>> mapEmptyMap = Collections.emptyMap();
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    return mapEmptyMap;
                }
                do {
                    int i = cursorRawQuery.getInt(0);
                    List arrayList = (List) arrayMap.get(Integer.valueOf(i));
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        arrayMap.put(Integer.valueOf(i), arrayList);
                    }
                    arrayList.add(Integer.valueOf(cursorRawQuery.getInt(1)));
                } while (cursorRawQuery.moveToNext());
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                return arrayMap;
            } catch (SQLiteException e) {
                zzj().zzg().zza("Database error querying scoped filters. appId", zzgi.zza(str), e);
                Map<Integer, List<Integer>> mapEmptyMap2 = Collections.emptyMap();
                if (0 != 0) {
                    cursor.close();
                }
                return mapEmptyMap2;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    zzam(zznv zznvVar) {
        super(zznvVar);
        this.zzm = new zznl(zzb());
        this.zzl = new zzav(this, zza(), "google_app_measurement.db");
    }

    public final void zzp() {
        zzal();
        m156e_().beginTransaction();
    }

    public final void zzp(String str) {
        zzt();
        zzal();
        try {
            m156e_().execSQL("delete from default_event_params where app_id=?", new String[]{str});
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error clearing default event params", e);
        }
    }

    private final void zzi(String str, String str2) {
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        try {
            m156e_().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error deleting snapshot. appId", zzgi.zza(str2), e);
        }
    }

    public final void zzq(String str) {
        zzbd zzbdVarZzd;
        zzi("events_snapshot", str);
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = m156e_().query(DatabaseConstants.EVENT_TABLE_NAME, (String[]) Collections.singletonList("name").toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                        return;
                    }
                    return;
                }
                do {
                    String string = cursorQuery.getString(0);
                    if (string != null && (zzbdVarZzd = zzd(str, string)) != null) {
                        zza("events_snapshot", zzbdVarZzd);
                    }
                } while (cursorQuery.moveToNext());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error creating snapshot. appId", zzgi.zza(str), e);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public final void zzu() {
        zzal();
        m156e_().endTransaction();
    }

    final void zza(List<Long> list) {
        zzt();
        zzal();
        Preconditions.checkNotNull(list);
        Preconditions.checkNotZero(list.size());
        if (zzaa()) {
            String str = "(" + TextUtils.join(",", list) + ")";
            if (zzb("SELECT COUNT(1) FROM queue WHERE rowid IN " + str + " AND retry_count =  2147483647 LIMIT 1", (String[]) null) > 0) {
                zzj().zzu().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                m156e_().execSQL("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN " + str + " AND (retry_count IS NULL OR retry_count < 2147483647)");
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error incrementing retry count. error", e);
            }
        }
    }

    final void zza(Long l) {
        zzt();
        zzal();
        Preconditions.checkNotNull(l);
        if ((!zzrw.zza() || zze().zza(zzbj.zzbz)) && zzaa()) {
            if (zzb("SELECT COUNT(1) FROM upload_queue WHERE rowid = " + l + " AND retry_count =  2147483647 LIMIT 1", (String[]) null) > 0) {
                zzj().zzu().zza("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                m156e_().execSQL("UPDATE upload_queue SET retry_count = retry_count + 1 WHERE rowid = " + l + " AND retry_count < 2147483647");
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error incrementing retry count. error", e);
            }
        }
    }

    final void zzv() {
        int iDelete;
        zzt();
        zzal();
        if (zzaa()) {
            long jZza = zzn().zza.zza();
            long jElapsedRealtime = zzb().elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jZza) > zzah.zzp()) {
                zzn().zza.zza(jElapsedRealtime);
                zzt();
                zzal();
                if (!zzaa() || (iDelete = m156e_().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(zzb().currentTimeMillis()), String.valueOf(zzah.zzo())})) <= 0) {
                    return;
                }
                zzj().zzp().zza("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
            }
        }
    }

    public final void zzh(String str, String str2) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        zzt();
        zzal();
        try {
            m156e_().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error deleting user property. appId", zzgi.zza(str), zzi().zzc(str2), e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzr(java.lang.String r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zzr(java.lang.String):void");
    }

    private static void zza(ContentValues contentValues, String str, Object obj) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(obj);
        if (obj instanceof String) {
            contentValues.put(str, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(str, (Long) obj);
        } else {
            if (obj instanceof Double) {
                contentValues.put(str, (Double) obj);
                return;
            }
            throw new IllegalArgumentException("Invalid value type");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x020f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01e3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zza(java.lang.String r18, java.util.List<com.google.android.gms.internal.measurement.zzfn.zza> r19) {
        /*
            Method dump skipped, instruction units count: 587
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zza(java.lang.String, java.util.List):void");
    }

    public final void zzw() {
        zzal();
        m156e_().setTransactionSuccessful();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.measurement.internal.zzh r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instruction units count: 881
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzam.zza(com.google.android.gms.measurement.internal.zzh, boolean, boolean):void");
    }

    public final void zza(String str, zzaz zzazVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzazVar);
        zzt();
        zzal();
        if (zze().zza(zzbj.zzcq) && zzi(str) == zzjc.zza) {
            zzb(str, zzjc.zza);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("dma_consent_settings", zzazVar.zzf());
        zza("consent_settings", "app_id", contentValues);
    }

    public final void zza(zzbd zzbdVar) {
        zza(DatabaseConstants.EVENT_TABLE_NAME, zzbdVar);
    }

    private final void zza(String str, zzbd zzbdVar) {
        Preconditions.checkNotNull(zzbdVar);
        zzt();
        zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbdVar.zza);
        contentValues.put("name", zzbdVar.zzb);
        contentValues.put("lifetime_count", Long.valueOf(zzbdVar.zzc));
        contentValues.put("current_bundle_count", Long.valueOf(zzbdVar.zzd));
        contentValues.put("last_fire_timestamp", Long.valueOf(zzbdVar.zzf));
        contentValues.put("last_bundled_timestamp", Long.valueOf(zzbdVar.zzg));
        contentValues.put("last_bundled_day", zzbdVar.zzh);
        contentValues.put("last_sampled_complex_event_id", zzbdVar.zzi);
        contentValues.put("last_sampling_rate", zzbdVar.zzj);
        contentValues.put("current_session_count", Long.valueOf(zzbdVar.zze));
        contentValues.put("last_exempt_from_sampling", (zzbdVar.zzk == null || !zzbdVar.zzk.booleanValue()) ? null : 1L);
        try {
            if (m156e_().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update event aggregates (got -1). appId", zzgi.zza(zzbdVar.zza));
            }
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing event aggregates. appId", zzgi.zza(zzbdVar.zza), e);
        }
    }

    private final void zza(String str, String str2, ContentValues contentValues) {
        try {
            SQLiteDatabase sQLiteDatabaseM156e_ = m156e_();
            if (contentValues.getAsString(str2) == null) {
                zzj().zzh().zza("Value of the primary key is not set.", zzgi.zza(str2));
            } else if (sQLiteDatabaseM156e_.update(str, contentValues, str2 + " = ?", new String[]{r1}) == 0 && sQLiteDatabaseM156e_.insertWithOnConflict(str, null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update table (got -1). key", zzgi.zza(str), zzgi.zza(str2));
            }
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing into table. key", zzgi.zza(str), zzgi.zza(str2), e);
        }
    }

    public final void zza(String str, zzjc zzjcVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzjcVar);
        zzt();
        zzal();
        zzb(str, zzi(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", zzjcVar.zzh());
        zza("consent_settings", "app_id", contentValues);
    }

    public final void zzb(String str, zzjc zzjcVar) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzjcVar);
        zzt();
        zzal();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzjcVar.zzh());
        contentValues.put("consent_source", Integer.valueOf(zzjcVar.zza()));
        zza("consent_settings", "app_id", contentValues);
    }

    private final boolean zzb(String str, List<Integer> list) {
        Preconditions.checkNotEmpty(str);
        zzal();
        zzt();
        SQLiteDatabase sQLiteDatabaseM156e_ = m156e_();
        try {
            long jZzb = zzb("select count(1) from audience_filter_values where app_id=?", new String[]{str});
            int iMax = Math.max(0, Math.min(2000, zze().zzb(str, zzbj.zzah)));
            if (jZzb <= iMax) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                Integer num = list.get(i);
                if (num == null) {
                    return false;
                }
                arrayList.add(Integer.toString(num.intValue()));
            }
            return sQLiteDatabaseM156e_.delete("audience_filter_values", new StringBuilder("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ").append(new StringBuilder("(").append(TextUtils.join(",", arrayList)).append(")").toString()).append(" order by rowid desc limit -1 offset ?)").toString(), new String[]{str, Integer.toString(iMax)}) > 0;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Database error querying filters. appId", zzgi.zza(str), e);
            return false;
        }
    }

    public final boolean zzx() {
        return zzb("select count(1) > 0 from raw_events", (String[]) null) != 0;
    }

    public final boolean zzy() {
        return zzb("select count(1) > 0 from queue where has_realtime = 1", (String[]) null) != 0;
    }

    public final boolean zzz() {
        return zzb("select count(1) > 0 from raw_events where realtime = 1", (String[]) null) != 0;
    }

    public final boolean zzs(String str) {
        return (!zzrw.zza() || zze().zza(zzbj.zzbz)) && zzb(new StringBuilder("SELECT COUNT(1) > 0 FROM upload_queue WHERE ").append(zzao()).toString(), new String[]{str}) != 0;
    }

    public final boolean zza(zzgn.zzk zzkVar, boolean z) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzkVar);
        Preconditions.checkNotEmpty(zzkVar.zzz());
        Preconditions.checkState(zzkVar.zzbj());
        zzv();
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        if (zzkVar.zzm() < jCurrentTimeMillis - zzah.zzo() || zzkVar.zzm() > zzah.zzo() + jCurrentTimeMillis) {
            zzj().zzu().zza("Storing bundle outside of the max uploading time span. appId, now, timestamp", zzgi.zza(zzkVar.zzz()), Long.valueOf(jCurrentTimeMillis), Long.valueOf(zzkVar.zzm()));
        }
        try {
            byte[] bArrZzb = mo158g_().zzb(zzkVar.zzca());
            zzj().zzp().zza("Saving bundle, size", Integer.valueOf(bArrZzb.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", zzkVar.zzz());
            contentValues.put("bundle_end_timestamp", Long.valueOf(zzkVar.zzm()));
            contentValues.put("data", bArrZzb);
            contentValues.put("has_realtime", Integer.valueOf(z ? 1 : 0));
            if (zzkVar.zzbq()) {
                contentValues.put("retry_count", Integer.valueOf(zzkVar.zzg()));
            }
            try {
                if (m156e_().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                zzj().zzg().zza("Failed to insert bundle (got -1). appId", zzgi.zza(zzkVar.zzz()));
                return false;
            } catch (SQLiteException e) {
                zzj().zzg().zza("Error storing bundle. appId", zzgi.zza(zzkVar.zzz()), e);
                return false;
            }
        } catch (IOException e2) {
            zzj().zzg().zza("Data loss. Failed to serialize bundle. appId", zzgi.zza(zzkVar.zzz()), e2);
            return false;
        }
    }

    private final boolean zza(String str, int i, zzfn.zzb zzbVar) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzbVar);
        if (zzbVar.zzf().isEmpty()) {
            zzj().zzu().zza("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", zzgi.zza(str), Integer.valueOf(i), String.valueOf(zzbVar.zzl() ? Integer.valueOf(zzbVar.zzb()) : null));
            return false;
        }
        byte[] bArrZzca = zzbVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzbVar.zzl() ? Integer.valueOf(zzbVar.zzb()) : null);
        contentValues.put("event_name", zzbVar.zzf());
        contentValues.put("session_scoped", zzbVar.zzm() ? Boolean.valueOf(zzbVar.zzj()) : null);
        contentValues.put("data", bArrZzca);
        try {
            if (m156e_().insertWithOnConflict("event_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert event filter (got -1). appId", zzgi.zza(str));
            return true;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing event filter. appId", zzgi.zza(str), e);
            return false;
        }
    }

    private final boolean zza(String str, int i, zzfn.zze zzeVar) {
        zzal();
        zzt();
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(zzeVar);
        if (zzeVar.zze().isEmpty()) {
            zzj().zzu().zza("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", zzgi.zza(str), Integer.valueOf(i), String.valueOf(zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null));
            return false;
        }
        byte[] bArrZzca = zzeVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("audience_id", Integer.valueOf(i));
        contentValues.put("filter_id", zzeVar.zzi() ? Integer.valueOf(zzeVar.zza()) : null);
        contentValues.put("property_name", zzeVar.zze());
        contentValues.put("session_scoped", zzeVar.zzj() ? Boolean.valueOf(zzeVar.zzh()) : null);
        contentValues.put("data", bArrZzca);
        try {
            if (m156e_().insertWithOnConflict("property_filters", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert property filter (got -1). appId", zzgi.zza(str));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing property filter. appId", zzgi.zza(str), e);
            return false;
        }
    }

    public final boolean zza(zzba zzbaVar, long j, boolean z) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzbaVar);
        Preconditions.checkNotEmpty(zzbaVar.zza);
        byte[] bArrZzca = mo158g_().zza(zzbaVar).zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbaVar.zza);
        contentValues.put("name", zzbaVar.zzb);
        contentValues.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, Long.valueOf(zzbaVar.zzd));
        contentValues.put("metadata_fingerprint", Long.valueOf(j));
        contentValues.put("data", bArrZzca);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            if (m156e_().insert("raw_events", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert raw event (got -1). appId", zzgi.zza(zzbaVar.zza));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing raw event. appId", zzgi.zza(zzbaVar.zza), e);
            return false;
        }
    }

    public final boolean zza(String str, zznk zznkVar) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zznkVar);
        Preconditions.checkNotEmpty(str);
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        if (zznkVar.zzb < jCurrentTimeMillis - zzah.zzo() || zznkVar.zzb > zzah.zzo() + jCurrentTimeMillis) {
            zzj().zzu().zza("Storing trigger URI outside of the max retention time span. appId, now, timestamp", zzgi.zza(str), Long.valueOf(jCurrentTimeMillis), Long.valueOf(zznkVar.zzb));
        }
        zzj().zzp().zza("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", zznkVar.zza);
        contentValues.put("source", Integer.valueOf(zznkVar.zzc));
        contentValues.put("timestamp_millis", Long.valueOf(zznkVar.zzb));
        try {
            if (m156e_().insert("trigger_uris", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert trigger URI (got -1). appId", zzgi.zza(str));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing trigger URI. appId", zzgi.zza(str), e);
            return false;
        }
    }

    public final boolean zza(String str, zzgn.zzj zzjVar, String str2, Map<String, String> map, zznt zzntVar) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzjVar);
        Preconditions.checkNotEmpty(str);
        if (zzrw.zza() && !zze().zza(zzbj.zzbz)) {
            return false;
        }
        zzt();
        zzal();
        if (zzaa()) {
            long jZza = zzn().zzb.zza();
            long jElapsedRealtime = zzb().elapsedRealtime();
            if (Math.abs(jElapsedRealtime - jZza) > zzah.zzp()) {
                zzn().zzb.zza(jElapsedRealtime);
                zzt();
                zzal();
                if (zzaa()) {
                    SQLiteDatabase sQLiteDatabaseM156e_ = m156e_();
                    zzb().currentTimeMillis();
                    zznt.GOOGLE_SIGNAL.zza();
                    zzah.zzm();
                    zznt.GOOGLE_SIGNAL.zza();
                    zzah.zzo();
                    int iDelete = sQLiteDatabaseM156e_.delete("upload_queue", "ABS(creation_timestamp - ?) > CAST(? as integer)", new String[0]);
                    if (iDelete > 0) {
                        zzj().zzp().zza("Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted", Integer.valueOf(iDelete));
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            arrayList.add(entry.getKey() + "=" + entry.getValue());
        }
        byte[] bArrZzca = zzjVar.zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("measurement_batch", bArrZzca);
        contentValues.put("upload_uri", str2);
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        if (size > 0) {
            sb.append((CharSequence) arrayList.get(0));
            int i = 1;
            while (i < size) {
                sb.append((CharSequence) "\r\n");
                Object obj = arrayList.get(i);
                i++;
                sb.append((CharSequence) obj);
            }
        }
        contentValues.put("upload_headers", sb.toString());
        contentValues.put("upload_type", Integer.valueOf(zzntVar.zza()));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzb().currentTimeMillis()));
        contentValues.put("retry_count", (Integer) 0);
        try {
            if (m156e_().insert("upload_queue", null, contentValues) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert MeasurementBatch (got -1) to upload_queue. appId", str);
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing MeasurementBatch to upload_queue. appId", str, e);
            return false;
        }
    }

    protected final boolean zzaa() {
        return zza().getDatabasePath("google_app_measurement.db").exists();
    }

    public final boolean zza(String str, Long l, long j, zzgn.zzf zzfVar) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzfVar);
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotNull(l);
        byte[] bArrZzca = zzfVar.zzca();
        zzj().zzp().zza("Saving complex main event, appId, data size", zzi().zza(str), Integer.valueOf(bArrZzca.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l);
        contentValues.put("children_to_process", Long.valueOf(j));
        contentValues.put("main_event", bArrZzca);
        try {
            if (m156e_().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert complex main event (got -1). appId", zzgi.zza(str));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing complex main event. appId", zzgi.zza(str), e);
            return false;
        }
    }

    public final boolean zza(zzaf zzafVar) {
        Preconditions.checkNotNull(zzafVar);
        zzt();
        zzal();
        String str = zzafVar.zza;
        Preconditions.checkNotNull(str);
        if (zze(str, zzafVar.zzc.zza) == null && zzb("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str}) >= 1000) {
            return false;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzafVar.zzb);
        contentValues.put("name", zzafVar.zzc.zza);
        zza(contentValues, "value", Preconditions.checkNotNull(zzafVar.zzc.zza()));
        contentValues.put("active", Boolean.valueOf(zzafVar.zze));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_EVENT_NAME, zzafVar.zzf);
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGER_TIMEOUT, Long.valueOf(zzafVar.zzh));
        zzq();
        contentValues.put("timed_out_event", zzop.zza((Parcelable) zzafVar.zzg));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.CREATION_TIMESTAMP, Long.valueOf(zzafVar.zzd));
        zzq();
        contentValues.put("triggered_event", zzop.zza((Parcelable) zzafVar.zzi));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TRIGGERED_TIMESTAMP, Long.valueOf(zzafVar.zzc.zzb));
        contentValues.put(AppMeasurementSdk.ConditionalUserProperty.TIME_TO_LIVE, Long.valueOf(zzafVar.zzj));
        zzq();
        contentValues.put("expired_event", zzop.zza((Parcelable) zzafVar.zzk));
        try {
            if (m156e_().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update conditional user property (got -1)", zzgi.zza(str));
            }
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing conditional user property", zzgi.zza(str), e);
        }
        return true;
    }

    final boolean zza(String str, Bundle bundle) {
        zzt();
        zzal();
        byte[] bArrZzca = mo158g_().zza(new zzba(this.zzu, "", str, "dep", 0L, 0L, bundle)).zzca();
        zzj().zzp().zza("Saving default event parameters, appId, data size", zzi().zza(str), Integer.valueOf(bArrZzca.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("parameters", bArrZzca);
        try {
            if (m156e_().insertWithOnConflict("default_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            zzj().zzg().zza("Failed to insert default event parameters (got -1). appId", zzgi.zza(str));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing default event parameters. appId", zzgi.zza(str), e);
            return false;
        }
    }

    public final boolean zza(long j, zzba zzbaVar, long j2, boolean z) {
        zzt();
        zzal();
        Preconditions.checkNotNull(zzbaVar);
        Preconditions.checkNotEmpty(zzbaVar.zza);
        byte[] bArrZzca = mo158g_().zza(zzbaVar).zzca();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzbaVar.zza);
        contentValues.put("name", zzbaVar.zzb);
        contentValues.put(SDKConstants.PARAM_DEBUG_MESSAGE_TIMESTAMP, Long.valueOf(zzbaVar.zzd));
        contentValues.put("metadata_fingerprint", Long.valueOf(j2));
        contentValues.put("data", bArrZzca);
        contentValues.put("realtime", Integer.valueOf(z ? 1 : 0));
        try {
            long jUpdate = m156e_().update("raw_events", contentValues, "rowid = ?", new String[]{String.valueOf(j)});
            if (jUpdate == 1) {
                return true;
            }
            zzj().zzg().zza("Failed to update raw event. appId, updatedRows", zzgi.zza(zzbaVar.zza), Long.valueOf(jUpdate));
            return false;
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error updating raw event. appId", zzgi.zza(zzbaVar.zza), e);
            return false;
        }
    }

    public final boolean zza(zzom zzomVar) {
        Preconditions.checkNotNull(zzomVar);
        zzt();
        zzal();
        if (zze(zzomVar.zza, zzomVar.zzc) == null) {
            if (zzop.zzh(zzomVar.zzc)) {
                if (zzb("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{zzomVar.zza}) >= zze().zza(zzomVar.zza, zzbj.zzai, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(zzomVar.zzc) && zzb("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{zzomVar.zza, zzomVar.zzb}) >= 25) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", zzomVar.zza);
        contentValues.put("origin", zzomVar.zzb);
        contentValues.put("name", zzomVar.zzc);
        contentValues.put("set_timestamp", Long.valueOf(zzomVar.zzd));
        zza(contentValues, "value", zzomVar.zze);
        try {
            if (m156e_().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                zzj().zzg().zza("Failed to insert/update user property (got -1). appId", zzgi.zza(zzomVar.zza));
            }
        } catch (SQLiteException e) {
            zzj().zzg().zza("Error storing user property. appId", zzgi.zza(zzomVar.zza), e);
        }
        return true;
    }
}
