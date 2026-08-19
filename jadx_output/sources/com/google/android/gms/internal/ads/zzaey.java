package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaey implements zzaeq {
    public final zzfww zza;
    private final int zzb;

    private zzaey(int i, zzfww zzfwwVar) {
        this.zzb = i;
        this.zza = zzfwwVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzaey zzc(int i, zzek zzekVar) {
        zzaeq zzaezVar;
        String str;
        zzfwt zzfwtVar = new zzfwt();
        int iZzd = zzekVar.zzd();
        int iZzb = -2;
        while (zzekVar.zza() > 8) {
            int iZzi = zzekVar.zzi();
            int iZzc = zzekVar.zzc() + zzekVar.zzi();
            zzekVar.zzK(iZzc);
            if (iZzi != 1414744396) {
                zzaez zzaezVar2 = null;
                switch (iZzi) {
                    case 1718776947:
                        if (iZzb != 2) {
                            if (iZzb == 1) {
                                int iZzk = zzekVar.zzk();
                                String str2 = iZzk != 1 ? iZzk != 85 ? iZzk != 255 ? iZzk != 8192 ? iZzk != 8193 ? null : "audio/vnd.dts" : "audio/ac3" : "audio/mp4a-latm" : "audio/mpeg" : "audio/raw";
                                if (str2 != null) {
                                    int iZzk2 = zzekVar.zzk();
                                    int iZzi2 = zzekVar.zzi();
                                    zzekVar.zzM(6);
                                    int iZzn = zzeu.zzn(zzekVar.zzk());
                                    int iZzk3 = zzekVar.zza() > 0 ? zzekVar.zzk() : 0;
                                    zzx zzxVar = new zzx();
                                    zzxVar.zzad(str2);
                                    zzxVar.zzB(iZzk2);
                                    zzxVar.zzae(iZzi2);
                                    if (str2.equals("audio/raw") && iZzn != 0) {
                                        zzxVar.zzX(iZzn);
                                    }
                                    if (str2.equals("audio/mp4a-latm") && iZzk3 > 0) {
                                        byte[] bArr = new byte[iZzk3];
                                        zzekVar.zzH(bArr, 0, iZzk3);
                                        zzxVar.zzP(zzfww.zzo(bArr));
                                    }
                                    zzaezVar = new zzaez(zzxVar.zzaj());
                                } else {
                                    zzdx.zzf("StreamFormatChunk", "Ignoring track with unsupported format tag " + iZzk);
                                }
                            } else {
                                zzdx.zzf("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(zzeu.zzD(iZzb)));
                            }
                            break;
                        } else {
                            zzekVar.zzM(4);
                            int iZzi3 = zzekVar.zzi();
                            int iZzi4 = zzekVar.zzi();
                            zzekVar.zzM(4);
                            int iZzi5 = zzekVar.zzi();
                            switch (iZzi5) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str = "video/avc";
                                    break;
                                case 842289229:
                                    str = "video/mp42";
                                    break;
                                case 859066445:
                                    str = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str = "video/mjpeg";
                                    break;
                                default:
                                    str = null;
                                    break;
                            }
                            if (str == null) {
                                zzdx.zzf("StreamFormatChunk", "Ignoring track with unsupported compression " + iZzi5);
                            } else {
                                zzx zzxVar2 = new zzx();
                                zzxVar2.zzai(iZzi3);
                                zzxVar2.zzM(iZzi4);
                                zzxVar2.zzad(str);
                                zzaezVar2 = new zzaez(zzxVar2.zzaj());
                            }
                        }
                        zzaezVar = zzaezVar2;
                        break;
                    case 1751742049:
                        zzaezVar = zzaev.zzb(zzekVar);
                        break;
                    case 1752331379:
                        zzaezVar = zzaew.zzd(zzekVar);
                        break;
                    case 1852994675:
                        zzaezVar = zzafa.zzb(zzekVar);
                        break;
                    default:
                        zzaezVar = zzaezVar2;
                        break;
                }
            } else {
                zzaezVar = zzc(zzekVar.zzi(), zzekVar);
            }
            if (zzaezVar != null) {
                if (zzaezVar.zza() == 1752331379) {
                    iZzb = ((zzaew) zzaezVar).zzb();
                }
                zzfwtVar.zzf(zzaezVar);
            }
            zzekVar.zzL(iZzc);
            zzekVar.zzK(iZzd);
        }
        return new zzaey(i, zzfwtVar.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzaeq
    public final int zza() {
        return this.zzb;
    }

    public final zzaeq zzb(Class cls) {
        zzfww zzfwwVar = this.zza;
        int size = zzfwwVar.size();
        int i = 0;
        while (i < size) {
            zzaeq zzaeqVar = (zzaeq) zzfwwVar.get(i);
            i++;
            if (zzaeqVar.getClass() == cls) {
                return zzaeqVar;
            }
        }
        return null;
    }
}
