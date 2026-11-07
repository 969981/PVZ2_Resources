.class final Lct/bu$a;
.super Landroid/os/Handler;
.source "TL"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lct/bu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:Lct/bv;

.field private b:I

.field private synthetic c:Lct/bu;


# direct methods
.method constructor <init>(Lct/bu;Landroid/os/Looper;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lct/bu$a;->c:Lct/bu;

    .line 908
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 909
    invoke-static {p1}, Lct/bu;->a(Lct/bu;)Lct/be;

    invoke-static {}, Lct/bh;->c()Lct/bv;

    move-result-object p1

    iput-object p1, p0, Lct/bu$a;->a:Lct/bv;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 913
    invoke-virtual {p0, v0}, Lct/bu$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 918
    iget-object v0, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v0}, Lct/bu;->b(Lct/bu;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 919
    :try_start_0
    iget-object v1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v1}, Lct/bu;->c(Lct/bu;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 920
    monitor-exit v0

    return-void

    .line 922
    :cond_0
    iget-object v1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v1}, Lct/bu;->c(Lct/bu;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object v1

    .line 923
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    iget-object v0, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v0}, Lct/bu;->d(Lct/bu;)Lcom/tencent/map/geolocation/TencentLocationRequest;

    move-result-object v0

    .line 927
    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getRequestLevel()I

    move-result v2

    .line 928
    invoke-virtual {v0}, Lcom/tencent/map/geolocation/TencentLocationRequest;->getInterval()J

    move-result-wide v3

    .line 930
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x22b

    const/16 v6, 0xf9f

    if-eq v0, v5, :cond_12

    const/16 v5, 0x1f3f

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v0, v5, :cond_a

    const/16 v5, 0xf9e

    if-eq v0, v5, :cond_9

    if-eq v0, v6, :cond_b

    const/16 v6, 0x1386

    if-eq v0, v6, :cond_8

    const/16 v8, 0x1387

    if-eq v0, v8, :cond_4

    const/16 p1, 0x2ede

    if-eq v0, p1, :cond_3

    const/16 p1, 0x2edf

    if-eq v0, p1, :cond_1

    goto/16 :goto_2

    .line 933
    :cond_1
    iget-object v0, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v0}, Lct/bu;->e(Lct/bu;)Lct/cr;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v0}, Lct/bu;->e(Lct/bu;)Lct/cr;

    move-result-object v2

    invoke-static {v0, v2}, Lct/bu;->a(Lct/bu;Lct/cr;)V

    .line 935
    iget-object v0, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v0}, Lct/bu;->e(Lct/bu;)Lct/cr;

    move-result-object v0

    iget-object v2, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v2}, Lct/bu;->f(Lct/bu;)I

    move-result v2

    invoke-static {}, Lct/bu;->d()Landroid/util/SparseArray;

    move-result-object v5

    iget-object v6, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v6}, Lct/bu;->f(Lct/bu;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v0, v2, v5}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-lez v2, :cond_13

    .line 939
    invoke-virtual {p0, p1, v3, v4}, Lct/bu$a;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 944
    :cond_3
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {p1}, Lct/bu;->e(Lct/bu;)Lct/cr;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 945
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {p1}, Lct/bu;->e(Lct/bu;)Lct/cr;

    move-result-object v0

    invoke-static {p1, v0}, Lct/bu;->a(Lct/bu;Lct/cr;)V

    .line 946
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {p1}, Lct/bu;->e(Lct/bu;)Lct/cr;

    move-result-object p1

    iget-object v0, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v0}, Lct/bu;->f(Lct/bu;)I

    move-result v0

    invoke-static {}, Lct/bu;->d()Landroid/util/SparseArray;

    move-result-object v2

    iget-object v3, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v3}, Lct/bu;->f(Lct/bu;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, p1, v0, v2}, Lcom/tencent/map/geolocation/TencentLocationListener;->onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V

    return-void

    .line 1026
    :cond_4
    invoke-virtual {p0, v6}, Lct/bu$a;->removeMessages(I)V

    .line 1028
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 1029
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lct/cf;

    .line 1032
    invoke-virtual {p1}, Lct/cf;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "gps"

    goto :goto_0

    :cond_5
    const-string v1, "network"

    .line 1037
    :goto_0
    :try_start_1
    new-instance v3, Lct/cr$a;

    invoke-direct {v3}, Lct/cr$a;-><init>()V

    iput-object v0, v3, Lct/cr$a;->a:Ljava/lang/String;

    iput v2, v3, Lct/cr$a;->c:I

    iput-object v1, v3, Lct/cr$a;->d:Ljava/lang/String;

    invoke-virtual {v3}, Lct/cr$a;->a()Lct/cr;

    move-result-object v0

    .line 1040
    invoke-static {v0}, Lct/cr;->a(Lct/cr;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1054
    iget-object v1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v1}, Lct/bu;->n(Lct/bu;)Lct/cd;

    move-result-object v1

    invoke-static {v0, v1}, Lct/cr;->a(Lct/cr;Lct/cd;)Lct/cr;

    .line 1055
    iget-object v1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v1}, Lct/bu;->j(Lct/bu;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v3}, Lct/bu;->a(Lct/bu;)Lct/be;

    move-result-object v3

    invoke-virtual {p1, v2, v1, v3}, Lct/cf;->a(ILjava/lang/String;Lct/be;)Ljava/lang/String;

    invoke-static {}, Lct/ci;->a()V

    .line 1059
    invoke-virtual {v0}, Lct/cr;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "wifi_ap_num"

    invoke-virtual {v0}, Lct/cr;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1062
    iget-object v1, p1, Lct/cf;->c:Lct/ce;

    if-eqz v1, :cond_6

    .line 1063
    iget-object p1, p1, Lct/cf;->c:Lct/ce;

    iget p1, p1, Lct/ce;->c:I

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 1065
    :goto_1
    invoke-virtual {v0}, Lct/cr;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sat_num"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1068
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {p1}, Lct/bu;->a(Lct/bu;)Lct/be;

    move-result-object p1

    const-string v1, "map"

    invoke-virtual {p1, v1}, Lct/be;->a(Ljava/lang/String;)Lct/bi;

    move-result-object p1

    .line 1069
    invoke-virtual {v0}, Lct/cr;->getExtra()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lct/bi;->b(Landroid/os/Bundle;)Z

    .line 1071
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {p1, v7, v0}, Lct/bu;->a(Lct/bu;ILct/cr;)V

    return-void

    :catch_0
    nop

    .line 1042
    iget-object p1, p0, Lct/bu$a;->a:Lct/bv;

    invoke-interface {p1}, Lct/bv;->e()Landroid/location/Location;

    move-result-object p1

    sget-object v0, Lct/bp;->b:Landroid/location/Location;

    if-eq p1, v0, :cond_7

    invoke-virtual {p0, v5, p1}, Lct/bu$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_7
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    const/16 v0, 0x194

    sget-object v1, Lct/cr;->a:Lct/cr;

    invoke-static {p1, v0, v1}, Lct/bu;->a(Lct/bu;ILct/cr;)V

    return-void

    .line 1076
    :cond_8
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    sget-object v0, Lct/cr;->a:Lct/cr;

    invoke-static {p1, v8, v0}, Lct/bu;->a(Lct/bu;ILct/cr;)V

    return-void

    .line 1015
    :cond_9
    new-instance v0, Lct/cf;

    new-instance v1, Lct/ce;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lct/ce;-><init>(Landroid/location/Location;JIII)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, p1, v1}, Lct/cf;-><init>(Lct/ch;Lct/cd;Lct/ce;)V

    .line 1018
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {p1}, Lct/bu;->j(Lct/bu;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v1}, Lct/bu;->a(Lct/bu;)Lct/be;

    move-result-object v1

    invoke-virtual {v0, v2, p1, v1}, Lct/cf;->a(ILjava/lang/String;Lct/be;)Ljava/lang/String;

    move-result-object p1

    .line 1020
    iget-object v1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v1}, Lct/bu;->m(Lct/bu;)Lct/ca;

    move-result-object v1

    iget-object v2, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v2}, Lct/bu;->h(Lct/bu;)I

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lct/ca;->a(Ljava/lang/String;Lct/cf;I)V

    return-void

    .line 952
    :cond_a
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {p1}, Lct/bu;->g(Lct/bu;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 955
    :cond_b
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {p1}, Lct/bu;->h(Lct/bu;)I

    move-result p1

    .line 959
    iget-object v0, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v0}, Lct/bu;->i(Lct/bu;)Lct/cf;

    move-result-object v0

    .line 960
    iget-object v1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v1}, Lct/bu;->j(Lct/bu;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v3}, Lct/bu;->a(Lct/bu;)Lct/be;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lct/cf;->a(ILjava/lang/String;Lct/be;)Ljava/lang/String;

    move-result-object v1

    .line 963
    invoke-static {v1}, Lct/b$a;->b(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v2, v8

    if-eqz v2, :cond_d

    .line 969
    iget p1, p0, Lct/bu$a;->b:I

    add-int/2addr p1, v8

    iput p1, p0, Lct/bu$a;->b:I

    const/4 v0, 0x2

    if-lt p1, v0, :cond_c

    .line 973
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    sget-object v1, Lct/cr;->a:Lct/cr;

    invoke-static {p1, v0, v1}, Lct/bu;->a(Lct/bu;ILct/cr;)V

    .line 974
    iput v7, p0, Lct/bu$a;->b:I

    :cond_c
    return-void

    .line 979
    :cond_d
    iput v7, p0, Lct/bu$a;->b:I

    .line 982
    iget-object v2, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v2}, Lct/bu;->k(Lct/bu;)Lct/bt;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v2}, Lct/bu;->k(Lct/bu;)Lct/bt;

    move-result-object v2

    invoke-virtual {v2}, Lct/bt;->b()Z

    .line 983
    :cond_e
    iget-object v2, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v2}, Lct/bu;->l(Lct/bu;)Lct/bg;

    move-result-object v2

    invoke-interface {v2, v1}, Lct/bg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    if-ne v1, v2, :cond_f

    return-void

    .line 989
    :cond_f
    invoke-static {}, Lct/ci;->c()Z

    .line 990
    sget-boolean v2, Lct/ci;->a:Z

    if-nez v2, :cond_10

    return-void

    .line 1004
    :cond_10
    iget-object v2, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v2}, Lct/bu;->a(Lct/bu;)Lct/be;

    move-result-object v2

    iget-object v2, v2, Lct/be;->a:Landroid/content/Context;

    invoke-static {v2}, Lct/b$a;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1005
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    sget-object v0, Lct/cr;->a:Lct/cr;

    invoke-static {p1, v8, v0}, Lct/bu;->a(Lct/bu;ILct/cr;)V

    return-void

    .line 1009
    :cond_11
    iget-object v2, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {v2}, Lct/bu;->m(Lct/bu;)Lct/ca;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1}, Lct/ca;->a(Ljava/lang/String;Lct/cf;I)V

    .line 1010
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {p1}, Lct/bu;->l(Lct/bu;)Lct/bg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    .line 1080
    :cond_12
    iget-object p1, p0, Lct/bu$a;->c:Lct/bu;

    invoke-static {p1}, Lct/bu;->o(Lct/bu;)Lct/ch;

    .line 1082
    invoke-virtual {p0, v6}, Lct/bu$a;->sendEmptyMessage(I)Z

    :cond_13
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 923
    monitor-exit v0

    throw p1
.end method
