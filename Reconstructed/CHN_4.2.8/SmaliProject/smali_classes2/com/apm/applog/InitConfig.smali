.class public Lcom/apm/applog/InitConfig;
.super Ljava/lang/Object;
.source "InitConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apm/applog/InitConfig$a;
    }
.end annotation


# instance fields
.field public A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:Landroid/accounts/Account;

.field public C:Z

.field public D:Lcom/apm/applog/network/INetworkClient;

.field public E:Lcom/apm/applog/network/INetworkClient;

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public T:Z

.field public U:Z

.field public V:Ljava/lang/String;

.field public W:Z

.field public X:Ljava/lang/String;

.field public Y:Z

.field public Z:Z

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/apm/applog/ILogger;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Lcom/apm/applog/UriConfig;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:I

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/apm/applog/InitConfig;->c:Z

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->l:Z

    .line 26
    iput v1, p0, Lcom/apm/applog/InitConfig;->n:I

    .line 58
    new-instance v2, Lgbsdk/common/host/abaz;

    invoke-direct {v2}, Lgbsdk/common/host/abaz;-><init>()V

    iput-object v2, p0, Lcom/apm/applog/InitConfig;->D:Lcom/apm/applog/network/INetworkClient;

    .line 65
    iput-boolean v0, p0, Lcom/apm/applog/InitConfig;->F:Z

    .line 75
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->H:Z

    .line 81
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->I:Z

    .line 83
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->J:Z

    .line 90
    iput-boolean v0, p0, Lcom/apm/applog/InitConfig;->K:Z

    .line 93
    iput-boolean v0, p0, Lcom/apm/applog/InitConfig;->L:Z

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/apm/applog/InitConfig;->N:Ljava/lang/String;

    .line 103
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->O:Z

    .line 105
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->P:Z

    .line 107
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->Q:Z

    .line 109
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->R:Z

    .line 113
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->T:Z

    .line 115
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->U:Z

    .line 128
    iput-object v0, p0, Lcom/apm/applog/InitConfig;->X:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->Y:Z

    .line 135
    iput-boolean v1, p0, Lcom/apm/applog/InitConfig;->Z:Z

    .line 138
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->a:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/apm/applog/InitConfig;->d:Ljava/lang/String;

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "InitConfig"

    const-string p2, "channel is empty, please check!!!"

    .line 141
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1, p3}, Lcom/apm/applog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput-object p2, p0, Lcom/apm/applog/InitConfig;->b:Ljava/lang/String;

    .line 144
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "InitConfig"

    const-string p2, "token is empty, please check!!!"

    .line 145
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->K:Z

    return v0
.end method

.method public autoStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->c:Z

    return v0
.end method

.method public clearABCacheOnUserChange(Z)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->U:Z

    return-object p0
.end method

.method public clearDidAndIid(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/apm/applog/InitConfig;->C:Z

    .line 2
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->e:Ljava/lang/String;

    return-void
.end method

.method public disableDeferredALink()Lcom/apm/applog/InitConfig;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/apm/applog/InitConfig;->T:Z

    return-object p0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->B:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAliyunUdid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAnonymous()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->k:Z

    return v0
.end method

.method public getAppImei()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getClearKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->A:Ljava/util/Map;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->M:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "bd_tea_agent_"

    invoke-static {v0}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apm/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getGoogleAid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getH5BridgeAllowlist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->S:Ljava/util/List;

    return-object v0
.end method

.method public getIpcDataChecker()Lcom/apm/applog/InitConfig$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalTest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->l:Z

    return v0
.end method

.method public getLogger()Lcom/apm/applog/ILogger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->h:Lcom/apm/applog/ILogger;

    return-object v0
.end method

.method public getManifestVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getManifestVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apm/applog/InitConfig;->w:I

    return v0
.end method

.method public getNetworkClient()Lcom/apm/applog/network/INetworkClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->E:Lcom/apm/applog/network/INetworkClient;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->D:Lcom/apm/applog/network/INetworkClient;

    :goto_0
    return-object v0
.end method

.method public getNotReuqestSender()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->p:Z

    return v0
.end method

.method public getPicker()Lgbsdk/common/host/abbn;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreInstallCallback()Lgbsdk/common/host/abck;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProcess()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apm/applog/InitConfig;->n:I

    return v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseBuild()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getSensitiveInfoProvider()Lgbsdk/common/host/abbw;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->N:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "applog_stats_"

    invoke-static {v0}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apm/applog/InitConfig;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTweakedChannel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apm/applog/InitConfig;->v:I

    return v0
.end method

.method public getUriConfig()Lcom/apm/applog/UriConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->r:Lcom/apm/applog/UriConfig;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/apm/applog/InitConfig;->u:I

    return v0
.end method

.method public getVersionMinor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getZiJieCloudPkg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/applog/InitConfig;->z:Ljava/lang/String;

    return-object v0
.end method

.method public isAbEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->H:Z

    return v0
.end method

.method public isAntiCheatingEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->J:Z

    return v0
.end method

.method public isAutoActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->F:Z

    return v0
.end method

.method public isAutoTrackEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->I:Z

    return v0
.end method

.method public isClearABCacheOnUserChange()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->U:Z

    return v0
.end method

.method public isClearDidAndIid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->C:Z

    return v0
.end method

.method public isCongestionControlEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->L:Z

    return v0
.end method

.method public isCustomLaunch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->Y:Z

    return v0
.end method

.method public isDeferredALinkEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->T:Z

    return v0
.end method

.method public isEventFilterEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->W:Z

    return v0
.end method

.method public isFixPageView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->Z:Z

    return v0
.end method

.method public isH5BridgeEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->Q:Z

    return v0
.end method

.method public isH5CollectEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->R:Z

    return v0
.end method

.method public isImeiEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->P:Z

    return v0
.end method

.method public isMacEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->O:Z

    return v0
.end method

.method public isPlayEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->m:Z

    return v0
.end method

.method public isSilenceInBackground()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/apm/applog/InitConfig;->G:Z

    return v0
.end method

.method public putCommonHeader(Ljava/util/Map;)Lcom/apm/applog/InitConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/apm/applog/InitConfig;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->A:Ljava/util/Map;

    return-object p0
.end method

.method public setAbEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->H:Z

    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->B:Landroid/accounts/Account;

    return-object p0
.end method

.method public setAliyunUdid(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->j:Ljava/lang/String;

    return-object p0
.end method

.method public setAnonymous(Z)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->k:Z

    return-object p0
.end method

.method public setAppImei(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->V:Ljava/lang/String;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->q:Ljava/lang/String;

    return-object p0
.end method

.method public setAutoActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->F:Z

    return-void
.end method

.method public setAutoStart(Z)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->c:Z

    return-object p0
.end method

.method public setAutoTrackEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->I:Z

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->d:Ljava/lang/String;

    return-void
.end method

.method public setCongestionControlEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->L:Z

    return-void
.end method

.method public setCustomLaunch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->Y:Z

    return-void
.end method

.method public setDbName(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->M:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setDid(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->X:Ljava/lang/String;

    return-object p0
.end method

.method public setEnablePlay(Z)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->m:Z

    return-object p0
.end method

.method public setEventFilterEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->W:Z

    return-void
.end method

.method public setFixPageView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->Z:Z

    return-void
.end method

.method public setGoogleAid(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->f:Ljava/lang/String;

    return-object p0
.end method

.method public setH5BridgeAllowlist(Ljava/util/List;)Lcom/apm/applog/InitConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/apm/applog/InitConfig;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->S:Ljava/util/List;

    return-object p0
.end method

.method public setH5BridgeEnable(Z)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->Q:Z

    return-object p0
.end method

.method public setH5CollectEnable(Z)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->R:Z

    return-object p0
.end method

.method public setHandleLifeCycle(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->K:Z

    return-void
.end method

.method public setImeiEnable(Z)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->P:Z

    return-object p0
.end method

.method public setIpcDataChecker(Lcom/apm/applog/InitConfig$a;)Lcom/apm/applog/InitConfig;
    .locals 0

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->g:Ljava/lang/String;

    return-object p0
.end method

.method public setLocalTest(Z)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->l:Z

    return-object p0
.end method

.method public setLogger(Lcom/apm/applog/ILogger;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->h:Lcom/apm/applog/ILogger;

    return-object p0
.end method

.method public setMacEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->O:Z

    return-void
.end method

.method public setManifestVersion(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->x:Ljava/lang/String;

    return-object p0
.end method

.method public setManifestVersionCode(I)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/apm/applog/InitConfig;->w:I

    return-object p0
.end method

.method public setNeedAntiCheating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->J:Z

    return-void
.end method

.method public setNetworkClient(Lcom/apm/applog/network/INetworkClient;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->E:Lcom/apm/applog/network/INetworkClient;

    .line 2
    invoke-static {p1}, Lcom/apm/applog/AppLog;->setNetworkClient(Lcom/apm/applog/network/INetworkClient;)V

    return-object p0
.end method

.method public setNotRequestSender(Z)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->p:Z

    return-object p0
.end method

.method public setPicker(Lgbsdk/common/host/abbn;)Lcom/apm/applog/InitConfig;
    .locals 0

    return-object p0
.end method

.method public setPreInstallChannelCallback(Lgbsdk/common/host/abck;)Lcom/apm/applog/InitConfig;
    .locals 0

    return-object p0
.end method

.method public setProcess(I)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/apm/applog/InitConfig;->n:I

    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->i:Ljava/lang/String;

    return-object p0
.end method

.method public setReleaseBuild(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->o:Ljava/lang/String;

    return-object p0
.end method

.method public setSensitiveInfoProvider(Lgbsdk/common/host/abbw;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/apm/applog/AppLog;->setSensitiveInfoProvider(Lgbsdk/common/host/abbw;)V

    return-void
.end method

.method public setSilenceInBackground(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/apm/applog/InitConfig;->G:Z

    return-void
.end method

.method public setSpName(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->N:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setTweakedChannel(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->t:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdateVersionCode(I)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/apm/applog/InitConfig;->v:I

    return-object p0
.end method

.method public setUriConfig(I)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/apm/applog/UriConfig;->createUriConfig(I)Lcom/apm/applog/UriConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/apm/applog/InitConfig;->r:Lcom/apm/applog/UriConfig;

    return-object p0
.end method

.method public setUriConfig(Lcom/apm/applog/UriConfig;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->r:Lcom/apm/applog/UriConfig;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->s:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionCode(I)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput p1, p0, Lcom/apm/applog/InitConfig;->u:I

    return-object p0
.end method

.method public setVersionMinor(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->y:Ljava/lang/String;

    return-object p0
.end method

.method public setZiJieCloudPkg(Ljava/lang/String;)Lcom/apm/applog/InitConfig;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/applog/InitConfig;->z:Ljava/lang/String;

    return-object p0
.end method
