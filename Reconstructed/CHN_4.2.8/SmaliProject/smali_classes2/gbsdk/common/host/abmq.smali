.class public Lgbsdk/common/host/abmq;
.super Ljava/lang/Object;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abmq$ab;
    }
.end annotation


# static fields
.field private static b:Z

.field private static uL:Lgbsdk/common/host/abmq$ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    sget-object v0, Lgbsdk/common/host/abmq$ab;->uL:Lgbsdk/common/host/abmq$ab;

    sput-object v0, Lgbsdk/common/host/abmq;->uL:Lgbsdk/common/host/abmq$ab;

    const/4 v0, 0x0

    .line 74
    sput-boolean v0, Lgbsdk/common/host/abmq;->b:Z

    return-void
.end method

.method public static R(Landroid/content/Context;)Lgbsdk/common/host/abmq$ab;
    .locals 2

    :try_start_0
    const-string v0, "connectivity"

    .line 127
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 129
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 138
    sget-object p0, Lgbsdk/common/host/abmq$ab;->uQ:Lgbsdk/common/host/abmq$ab;

    return-object p0

    :cond_1
    if-nez v0, :cond_2

    const-string v0, "phone"

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 143
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 157
    :pswitch_0
    sget-object p0, Lgbsdk/common/host/abmq$ab;->uN:Lgbsdk/common/host/abmq$ab;

    goto :goto_0

    .line 155
    :pswitch_1
    sget-object p0, Lgbsdk/common/host/abmq$ab;->uR:Lgbsdk/common/host/abmq$ab;

    return-object p0

    .line 153
    :pswitch_2
    sget-object p0, Lgbsdk/common/host/abmq$ab;->uP:Lgbsdk/common/host/abmq$ab;

    :goto_0
    return-object p0

    .line 160
    :cond_2
    sget-object p0, Lgbsdk/common/host/abmq$ab;->uN:Lgbsdk/common/host/abmq$ab;

    return-object p0

    .line 131
    :cond_3
    :goto_1
    sget-object p0, Lgbsdk/common/host/abmq$ab;->uM:Lgbsdk/common/host/abmq$ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 163
    :catchall_0
    sget-object p0, Lgbsdk/common/host/abmq$ab;->uN:Lgbsdk/common/host/abmq$ab;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
