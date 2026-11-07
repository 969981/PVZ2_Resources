.class public Lcom/mob/tools/utils/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/utils/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/mob/tools/utils/c;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mob/tools/utils/c;
    .locals 2

    .line 42
    sget-object v0, Lcom/mob/tools/utils/c;->a:Lcom/mob/tools/utils/c;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/mob/tools/utils/c;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/mob/tools/utils/c;->a:Lcom/mob/tools/utils/c;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/mob/tools/utils/c;

    invoke-direct {v1}, Lcom/mob/tools/utils/c;-><init>()V

    sput-object v1, Lcom/mob/tools/utils/c;->a:Lcom/mob/tools/utils/c;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/tools/utils/c;->a:Lcom/mob/tools/utils/c;

    return-object v0
.end method

.method private a(Lcom/mob/tools/utils/c$a;)Ljava/lang/String;
    .locals 1

    .line 139
    sget-object v0, Lcom/mob/tools/utils/c$1;->a:[I

    invoke-virtual {p1}, Lcom/mob/tools/utils/c$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 209
    const-string p1, "019DcgdbdkebcbcddcSg?dkTgBcdefWd:dccechdkcdTg"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 205
    :pswitch_0
    const-string p1, "021Hefchefdkdcee5hVdkdceeVkgk=cc0ihRcgefcddbcj"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 198
    :pswitch_1
    const-string p1, "0233cgdbdkebcbcddc g>dkcjcbebcdcedkcgdb$k;dkcfdbXgh"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string p1, "015@cgdbdkebcbcddc5g3dkcgdb3k8dkcdDg"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 194
    :pswitch_2
    const-string p1, "018Icgdbdkebcbcddc6g:dkcbcdUih3cgefcddbcj"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 190
    :pswitch_3
    const-string p1, "020?cgdbdkcf1c=cedkchcbcjdbefdkOih,cgefcddbcj"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 186
    :pswitch_4
    const-string p1, "014Qcgdbdkcgdb4kZdkQih cgefcddbcj"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 182
    :pswitch_5
    const-string p1, "020%cgdbdkef!kTcecg@cJcdefcecjdk3ihIcgefcddbcj"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 178
    :pswitch_6
    const-string p1, "0244cgdbdkebcbcddc:gDdkZihTcgefcddbcjdkcgVhPdc=h=ceefQh"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 174
    :pswitch_7
    const-string p1, "022]cgdbdkebcbcddcWg9dkef$h,cjef)h3dkSihTcgefcddbcj"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 170
    :pswitch_8
    const-string p1, "023KcgdbdkdcAhci@dkcg7h]dcIhZceefRhIdk*ihMcgefcddbcj"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 163
    :pswitch_9
    const-string p1, "027PcgdbdkGi1cd>i*dbdkdbefdkebcbcddc]g$dk\'g$cdefPdFdccechdkcd2g"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string p1, "018]cgdbdkHiQcdZi<dbdkdbefdkPihUcgefcddbcj"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 159
    :pswitch_a
    const-string p1, "024(cgdbdkebcbcddcDg2dk;ih0cgefcddbcjdkdb^ddTdbcgdbLk"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 155
    :pswitch_b
    const-string p1, "028Jcgdbdkebcbcddc gBdkTihXcgefcddbcjdkcdcjcfcg0hkh1cj<cDcedc"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 150
    :pswitch_c
    const-string p1, "019*cgdbdkebcbcddcEg5dk$gUcdef.d4dccechdkcd!g"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 145
    :pswitch_d
    const-string p1, "021WcgdbdkebcbcddcRg dkSih>cgefcddbcjdk>hk)cbcd"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 141
    :pswitch_e
    const-string p1, "023!cgdbdk]k%cdcbcddkcbcddk]ihGcgefcddbcjdkcjceTkh"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    const-string p1, "019KcgdbdkebcbcddcOg!dkQg2cdef3d2dccechdkcd!g"

    invoke-static {p1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 232
    :try_start_0
    const-string v0, "027-cecjVg5cgdbcdLgJdkdbefdkdgchef(chk(ffcgdbVdh+cgHc[cd7h5ef"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ReflectHelper;->importClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    const-string v1, "003)ee(hc"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/mob/tools/utils/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 238
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 240
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private c()Lcom/mob/tools/utils/c$a;
    .locals 6

    .line 78
    const-string v0, "ro.miui.ui.version.code"

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "023<cgdbdk:k6cdcbcddkcbcddkGihUcgefcddbcjdkcjce\'kh"

    .line 79
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "ro.miui.internal.storage"

    .line 80
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 82
    :cond_0
    const-string v0, "0215cgdbdkebcbcddcMgKdk[ih<cgefcddbcjdk\'hk)cbcd"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ro.build.hw_emui_api_level"

    .line 83
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "ro.confg.hw_systemversion"

    .line 84
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 86
    :cond_1
    const-string v0, "026dhMcgefcdef c%dkefchefdkcbefHh[dkegdcchGkh[dkcdcfdbcj"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "026Mcgdbdk\'khJcdekcbdkef(hcPcb0d=eccdekcecgGg5dkegdcch:kh"

    .line 87
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "018Ccgdbdkegdcch[kh)dk0d\'cbebdccdefVbhg"

    .line 88
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 90
    :cond_2
    const-string v0, "024JcfdbSkCdkefce^k]efcbcjeedkefLdh^eedkNgJcdefceebdc2h"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "init.svc.health-hal-2-1-samsung"

    .line 91
    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_3

    .line 93
    :cond_3
    const-string v0, "024Icgdbdkebcbcddc g,dk3ih!cgefcddbcjdkdb-ddKdbcgdb(k"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    sget-object v0, Lcom/mob/tools/utils/c$a;->e:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 95
    :cond_4
    const-string v0, "027Dcgdbdk4iCcd:i\'dbdkdbefdkebcbcddcLg6dk4gIcdef8d]dccechdkcd)g"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "018Gcgdbdk-i5cdFi]dbdkdbefdkGihFcgefcddbcj"

    .line 96
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_2

    .line 98
    :cond_5
    const-string v0, "0236cgdbdkdcFhciUdkcgFhBdc;h\'ceef-h2dkSih=cgefcddbcj"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 99
    sget-object v0, Lcom/mob/tools/utils/c$a;->g:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 100
    :cond_6
    const-string v0, "022Dcgdbdkebcbcddc.gRdkef3hScjefTh*dkMihLcgefcddbcj"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 101
    sget-object v0, Lcom/mob/tools/utils/c$a;->h:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 102
    :cond_7
    const-string v0, "014Ucecj5gKcgdbcd.gEgheedbdbeedc+h"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "026Gcgdbdkcfdb+kIdkeedbdbeedcIh)dkcfdccd!h\'cj(c=cdUgDebceefHh"

    invoke-static {v1}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 103
    sget-object v0, Lcom/mob/tools/utils/c$a;->i:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 104
    :cond_8
    const-string v0, "020+cgdbdkef!kHcecg?c<cdefcecjdk4ihTcgefcddbcj"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 105
    sget-object v0, Lcom/mob/tools/utils/c$a;->k:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 106
    :cond_9
    const-string v0, "014;cgdbdkcgdbVk;dk]ih%cgefcddbcj"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 107
    sget-object v0, Lcom/mob/tools/utils/c$a;->l:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 108
    :cond_a
    const-string v0, "0207cgdbdkcf2cWcedkchcbcjdbefdk6ih?cgefcddbcj"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 109
    sget-object v0, Lcom/mob/tools/utils/c$a;->m:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 110
    :cond_b
    const-string v0, "018(cgdbdkebcbcddcMgKdkcbcd.ihTcgefcddbcj"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 111
    sget-object v0, Lcom/mob/tools/utils/c$a;->n:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 112
    :cond_c
    const-string v0, "023Kcgdbdkebcbcddc:gKdkcjcbebcdcedkcgdb@k4dkcfdb]gh"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "0154cgdbdkebcbcddc\'g3dkcgdbEk-dkcd g"

    .line 113
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    .line 115
    :cond_d
    const-string v0, "021CefchefdkdceeThWdkdceeHkgk7cc9ih cgefcddbcj"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 116
    sget-object v0, Lcom/mob/tools/utils/c$a;->p:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 117
    :cond_e
    const-string v0, "019$cgdbdkebcbcddcNg+dkTgRcdef,dMdccechdkcdOg"

    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "019*cgdbdkebcbcddcJg_dk^gBcdefKdUdccechdkcdUg"

    .line 118
    invoke-static {v0}, Lcom/mob/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amigo([\\d.]+)[a-zA-Z]*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 119
    sget-object v0, Lcom/mob/tools/utils/c$a;->q:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 122
    :cond_f
    invoke-static {}, Lcom/mob/tools/utils/c$a;->values()[Lcom/mob/tools/utils/c$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 123
    invoke-virtual {v3}, Lcom/mob/tools/utils/c$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/mob/tools/utils/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    return-object v3

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_11
    sget-object v0, Lcom/mob/tools/utils/c$a;->r:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 114
    :cond_12
    :goto_1
    sget-object v0, Lcom/mob/tools/utils/c$a;->o:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 97
    :cond_13
    :goto_2
    sget-object v0, Lcom/mob/tools/utils/c$a;->f:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 92
    :cond_14
    :goto_3
    sget-object v0, Lcom/mob/tools/utils/c$a;->d:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 89
    :cond_15
    :goto_4
    sget-object v0, Lcom/mob/tools/utils/c$a;->c:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 85
    :cond_16
    :goto_5
    sget-object v0, Lcom/mob/tools/utils/c$a;->b:Lcom/mob/tools/utils/c$a;

    return-object v0

    .line 81
    :cond_17
    :goto_6
    sget-object v0, Lcom/mob/tools/utils/c$a;->a:Lcom/mob/tools/utils/c$a;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/mob/tools/utils/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/mob/tools/utils/c;->b:Ljava/lang/String;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/utils/c;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/mob/tools/utils/c;->c()Lcom/mob/tools/utils/c$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mob/tools/utils/c;->a(Lcom/mob/tools/utils/c$a;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 62
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->e(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
