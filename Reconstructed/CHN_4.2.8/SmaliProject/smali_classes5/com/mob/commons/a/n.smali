.class public Lcom/mob/commons/a/n;
.super Lcom/mob/commons/a/c;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 21
    const-string v0, "002JghSi"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/mob/commons/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method private n()[Ljava/lang/Object;
    .locals 10

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/DeviceHelper;->getInstance(Landroid/content/Context;)Lcom/mob/tools/utils/DeviceHelper;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getQemuKernel()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 82
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v6, "037hRghejghMejmhEfeefgd3h(feefgdeheePm2egfefefdeheeNijQgdedggee1ljmGedfmghfd"

    invoke-static {v6}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v6, Ljava/io/File;

    const-string v7, "015h:ghejghAhljm-edeeTe^eiegeh$j"

    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v7, Ljava/io/File;

    const-string v8, "022hZghejgh\'ejmhGgdefelBhljm4edijHfLeifdJf8gh"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    :cond_0
    move v5, v3

    goto :goto_0

    :catchall_0
    move-exception v5

    .line 87
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_1
    move v5, v4

    .line 89
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v7, "014hijkhljm+edeeOf@efNfj"

    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance v7, Ljava/io/File;

    const-string v8, "017hijkh%ghfdehekUjehljmIed]i"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_3

    :cond_2
    move v6, v3

    goto :goto_1

    :catchall_1
    move-exception v6

    .line 97
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_3
    move v6, v4

    .line 99
    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    :try_start_2
    const-string v7, "022[ehfdDm<fmgdfeed@jTghCe?egehekghfmegKffm)egeiPe"

    invoke-static {v7}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v7, :cond_5

    .line 104
    :try_start_3
    new-instance v8, Ljava/io/File;

    const-string v9, "021hiOeg>eZeg%hHgdfeedEj,gh<eTegehekghfmRf]eifd1f"

    invoke-static {v9}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v7, v4

    goto :goto_3

    :catchall_2
    move-exception v3

    move v4, v7

    goto/16 :goto_20

    :cond_5
    :goto_2
    move v7, v3

    :goto_3
    if-nez v7, :cond_7

    .line 105
    new-instance v8, Ljava/io/File;

    const-string v9, "040hm-el*ehf+eiQj-gdedel0i(feCjiNeg^ffJgh;h3gdfeed)j)gh.e@egehekghfmXf5eifdNf$fmfdeiefgg"

    invoke-static {v9}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move v7, v4

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v3

    :goto_5
    if-nez v7, :cond_9

    .line 106
    const-string v8, "034VehfdRm1fmgdfeedBj9gh[e[egehekghfmgkghOeZhgfdZmmGegel_iGhheifdeh9jMghghfdei"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_6

    :cond_8
    move v7, v4

    goto :goto_7

    :cond_9
    :goto_6
    move v7, v3

    :goto_7
    if-nez v7, :cond_b

    .line 107
    const-string v8, "019Mehfd*m\'fmgdfeedGjVghWeTegehekghfmWdjTfe^f"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_8

    :cond_a
    move v7, v4

    goto :goto_9

    :cond_b
    :goto_8
    move v7, v3

    :goto_9
    if-nez v7, :cond_d

    .line 108
    const-string v8, "0195ehfdRm)fmgdfeed*j gh,e<egehekghfm>dFfdGmj"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_a

    :cond_c
    move v7, v4

    goto :goto_b

    :cond_d
    :goto_a
    move v7, v3

    :goto_b
    if-nez v7, :cond_f

    .line 109
    const-string v8, "018^ehfd%m[fmgdfeed9jSghQeDegehekghfmghhkPf"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_c

    :cond_e
    move v7, v4

    goto :goto_d

    :cond_f
    :goto_c
    move v7, v3

    :goto_d
    if-nez v7, :cond_11

    .line 110
    const-string v8, "024YehfdNm5fmgdfeed)jUgh;e?egehekghfmghAjQegeiehOd[eg^ff"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_e

    :cond_10
    move v7, v4

    goto :goto_f

    :cond_11
    :goto_e
    move v7, v3

    :goto_f
    if-nez v7, :cond_13

    .line 111
    const-string v8, "030LehfdJm%fmgdfeedMj3ghEe.egehekghfmegeheh_jOfe=jAeifd,mjejFeiedef"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_10

    :cond_12
    move v7, v4

    goto :goto_11

    :cond_13
    :goto_10
    move v7, v3

    :goto_11
    if-nez v7, :cond_15

    .line 112
    const-string v8, "024Dehfd-m*fmgdfeedLjPgh<e_egehekghfmeg;ff;giefel$ijXei"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_14

    goto :goto_12

    :cond_14
    move v7, v4

    goto :goto_13

    :cond_15
    :goto_12
    move v7, v3

    :goto_13
    if-nez v7, :cond_17

    .line 113
    const-string v8, "022Oehfd$m+fmgdfeedKjQgh0eUegehekghfmeg.ffm3egeiPe"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto :goto_14

    :cond_16
    move v7, v4

    goto :goto_15

    :cond_17
    :goto_14
    move v7, v3

    :goto_15
    if-nez v7, :cond_19

    .line 114
    const-string v8, "0260ehfdHmIfmgdfeedQj)ghFe*egehekghfmegSff>ghNjee!efelgggh"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_16

    :cond_18
    move v7, v4

    goto :goto_17

    :cond_19
    :goto_16
    move v7, v3

    :goto_17
    if-nez v7, :cond_1b

    .line 115
    const-string v8, "034@ehfdKm@fmgdfeed1j[gh1e*egehekghfmgkgh@e+hgfdSmm egelKiVhheifdeh3j\'ghghfdei"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_18

    :cond_1a
    move v7, v4

    goto :goto_19

    :cond_1b
    :goto_18
    move v7, v3

    :goto_19
    if-nez v7, :cond_1d

    .line 116
    const-string v8, "024[ehfdDm?fmgdfeed0j^gh$e?egehekghfmgdghTe(gifdfeBij(ei"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_1a

    :cond_1c
    move v7, v4

    goto :goto_1b

    :cond_1d
    :goto_1a
    move v7, v3

    :goto_1b
    if-nez v7, :cond_1f

    .line 117
    const-string v8, "020$ehfdEmCfmgdfeed>j?gh0eJegehekghfmghFjeAed4f"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    goto :goto_1c

    :cond_1e
    move v7, v4

    goto :goto_1d

    :cond_1f
    :goto_1c
    move v7, v3

    :goto_1d
    if-nez v7, :cond_21

    .line 118
    const-string v8, "024\'ehfd m4fmgdfeed%j8ghEe=egehekghfmgh_fOfdHe!feefgg,de"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_1e

    :cond_20
    move v7, v4

    goto :goto_1f

    :cond_21
    :goto_1e
    move v7, v3

    :goto_1f
    if-nez v7, :cond_23

    .line 119
    const-string v8, "020\'ehfdCmJfmegelFi_eifdhfhifmFkm?ehfdelgiefgg"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/mob/tools/utils/DeviceHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_22

    goto :goto_21

    :catchall_3
    move-exception v3

    .line 121
    :goto_20
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_22
    move v3, v4

    .line 123
    :cond_23
    :goto_21
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getTTYDriversInfo()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 126
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_25

    .line 127
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-eqz v8, :cond_24

    .line 128
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_24

    .line 129
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 135
    :cond_25
    invoke-virtual {v1}, Lcom/mob/tools/utils/DeviceHelper;->getCPUInfo()Ljava/util/HashMap;

    move-result-object v1

    .line 136
    invoke-static {v1}, Lcom/mob/tools/utils/HashonHelper;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 139
    const-string v8, "010ljmHedik<j+eiel@j]fe"

    invoke-static {v8}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v2, "013ljmYedieeffe^jLhdemefghKe"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v2, "012ljmOedgjMjk^hdemefghZe"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v2, "019Xgdfeed-j$fi2eUegehekghieeffe9j;hdemefgh_e"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v2, "010ee)ejgjeiefWkjNeigh"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v2, "007SehOfVedfhelgifd"

    invoke-static {v2}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 14

    .line 27
    invoke-direct {p0}, Lcom/mob/commons/a/n;->n()[Ljava/lang/Object;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 29
    array-length v3, v0

    if-ne v3, v2, :cond_0

    const/4 v3, 0x0

    .line 30
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    :cond_0
    new-instance v3, Lcom/mob/tools/utils/f;

    invoke-direct {v3}, Lcom/mob/tools/utils/f;-><init>()V

    .line 33
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mob/tools/utils/f;->a(Landroid/content/Context;)I

    move-result v4

    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mob/tools/utils/f;->b(Landroid/content/Context;)I

    move-result v5

    .line 36
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mob/tools/utils/f;->c(Landroid/content/Context;)I

    move-result v6

    .line 38
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/mob/tools/utils/f;->d(Landroid/content/Context;)I

    move-result v7

    .line 40
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Lcom/mob/tools/utils/f;->a()I

    move-result v8

    .line 42
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/mob/tools/utils/f;->e(Landroid/content/Context;)I

    move-result v9

    .line 44
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/mob/tools/utils/f;->f(Landroid/content/Context;)I

    move-result v10

    .line 46
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3}, Lcom/mob/tools/utils/f;->b()I

    move-result v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object v11

    sget-object v12, Lcom/mob/commons/v;->p:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/mob/commons/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 52
    :cond_1
    invoke-static {}, Lcom/mob/commons/v;->a()Lcom/mob/commons/v;

    move-result-object v11

    sget-object v12, Lcom/mob/commons/v;->p:Ljava/lang/String;

    invoke-virtual {v11, v12, v1}, Lcom/mob/commons/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_2

    .line 54
    array-length v11, v0

    if-ne v11, v2, :cond_2

    const/4 v2, 0x1

    .line 55
    aget-object v0, v0, v2

    .line 56
    instance-of v2, v0, Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 57
    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 60
    :cond_2
    const-string v0, "010EehekgkegghJj:gdegel9i"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "007\'ehekgkfdegei^i"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "010WehekhhfeegTeCgifdei3m"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "008@ehekiefeegXkIfdei"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "0080ehekhgggeifded^f"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "ckiemt"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "011Qehekhgfd+mm+fdelegIff"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "009.ehekhgYfVedefelgifd"

    invoke-static {v0}, Lcom/mob/commons/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "SIMUMT"

    invoke-virtual {p0, v0, v1}, Lcom/mob/commons/a/n;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_3
    return-void
.end method
