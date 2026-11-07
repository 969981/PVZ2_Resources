.class public Lgbsdk/common/host/abaw;
.super Ljava/lang/Object;
.source "DeviceParamsProvider.java"

# interfaces
.implements Lgbsdk/common/host/abar;


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static volatile h:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final aU:Lgbsdk/common/host/abbk;

.field public bS:Lgbsdk/common/host/abai;

.field public final bT:Lgbsdk/common/host/abao;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgbsdk/common/host/abbk;Lgbsdk/common/host/abao;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lgbsdk/common/host/abaw;->aU:Lgbsdk/common/host/abbk;

    .line 3
    iget-object v0, p2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {v0}, Lcom/apm/applog/InitConfig;->getLocalTest()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_local"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4
    :goto_0
    iput-object v0, p0, Lgbsdk/common/host/abaw;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lgbsdk/common/host/abaw;->a:Landroid/content/Context;

    .line 6
    new-instance p1, Lgbsdk/common/host/abat;

    invoke-direct {p1}, Lgbsdk/common/host/abat;-><init>()V

    .line 7
    iput-object p3, p0, Lgbsdk/common/host/abaw;->bT:Lgbsdk/common/host/abao;

    .line 8
    new-instance p3, Lgbsdk/common/host/abac;

    iget-object v0, p0, Lgbsdk/common/host/abaw;->a:Landroid/content/Context;

    .line 9
    iget-object v1, p2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 10
    invoke-virtual {v1}, Lcom/apm/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lgbsdk/common/host/abac;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lgbsdk/common/host/abaw;->bS:Lgbsdk/common/host/abai;

    .line 11
    iget-object v0, p0, Lgbsdk/common/host/abaw;->bT:Lgbsdk/common/host/abao;

    .line 12
    iput-object v0, p3, Lgbsdk/common/host/abai;->bx:Lgbsdk/common/host/abai;

    .line 13
    iget-object p3, p2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {p3}, Lcom/apm/applog/InitConfig;->getAnonymous()Z

    move-result p3

    if-nez p3, :cond_1

    .line 14
    new-instance p3, Lgbsdk/common/host/abau;

    invoke-direct {p3, p1}, Lgbsdk/common/host/abau;-><init>(Lgbsdk/common/host/abat;)V

    .line 40
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 41
    :cond_1
    iget-object p1, p2, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    invoke-virtual {p1}, Lcom/apm/applog/InitConfig;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abaw;->a(Landroid/accounts/Account;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    const-string v0, "clientudid"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lgbsdk/common/host/abaw;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "dce3521a03c76eee7b85e31e254f67a3"

    invoke-static {v2, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 89
    :cond_0
    sget-object v2, Lgbsdk/common/host/abaw;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    sget-object v0, Lgbsdk/common/host/abaw;->g:Ljava/lang/String;

    return-object v0

    .line 94
    :cond_1
    :try_start_0
    iget-object v2, p0, Lgbsdk/common/host/abaw;->a:Landroid/content/Context;

    const-string v3, "snssdk_openudid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 96
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-static {v3}, Lgbsdk/common/host/abdh;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 101
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lgbsdk/common/host/abaw;->bT:Lgbsdk/common/host/abao;

    invoke-virtual {v0, v3, v2}, Lgbsdk/common/host/abai;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgbsdk/common/host/abaw;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    :cond_3
    sput-object v3, Lgbsdk/common/host/abaw;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    const-string v1, ""

    .line 112
    invoke-static {v1, v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public a(Landroid/accounts/Account;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abaw;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "bbc7d7b1b657c3964e0c3ed2b34e95cb"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abaw;->bT:Lgbsdk/common/host/abao;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0, p1}, Lgbsdk/common/host/abao;->a(Landroid/accounts/Account;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    sget-object v3, Lgbsdk/common/host/abaw;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "f2c16d62110d52753401b4f35013d8fd"

    invoke-static {v0, p0, v3, v1, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeviceParamsProvider#clearDidAndIid clearKey="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sDeviceId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lgbsdk/common/host/abaw;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCacheHandler.loadDeviceId()="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lgbsdk/common/host/abaw;->bS:Lgbsdk/common/host/abai;

    const-string v4, ""

    .line 120
    invoke-virtual {v3, v4, v4}, Lgbsdk/common/host/abai;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 126
    sput-object v0, Lgbsdk/common/host/abaw;->h:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear_key_prefix"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v3, p0, Lgbsdk/common/host/abaw;->aU:Lgbsdk/common/host/abbk;

    .line 130
    iget-object v3, v3, Lgbsdk/common/host/abbk;->aW:Lcom/apm/applog/InitConfig;

    .line 131
    invoke-virtual {v3}, Lcom/apm/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 133
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "clearKey : "

    if-nez v1, :cond_4

    .line 135
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 136
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "device_id"

    .line 137
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string v2, "install_id"

    .line 140
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 141
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    iget-object p1, p0, Lgbsdk/common/host/abaw;->bS:Lgbsdk/common/host/abai;

    invoke-virtual {p1, v0}, Lgbsdk/common/host/abai;->a(Ljava/lang/String;)V

    .line 146
    sget-boolean p1, Lgbsdk/common/host/abdn;->b:Z

    if-eqz p1, :cond_5

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " :clear installId and deviceId finish"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_4
    sget-boolean p1, Lgbsdk/common/host/abdn;->b:Z

    if-eqz p1, :cond_5

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : is already cleared"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abaw;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "a1c83d1ee8cf183d7f578e3dfced5e15"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-static {p1}, Lgbsdk/common/host/abdh;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lgbsdk/common/host/abaw;->h:Ljava/lang/String;

    invoke-static {p1, v0}, Lgbsdk/common/host/abdh;->f(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abaw;->bS:Lgbsdk/common/host/abai;

    sget-object v1, Lgbsdk/common/host/abaw;->h:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lgbsdk/common/host/abai;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lgbsdk/common/host/abaw;->h:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abaw;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "dc2331b698529c8da852af93981b14ec"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1
    :cond_0
    sget-object v0, Lgbsdk/common/host/abaw;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lgbsdk/common/host/abaw;->h:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lgbsdk/common/host/abaw;->bS:Lgbsdk/common/host/abai;

    const-string v1, ""

    invoke-virtual {v0, v1, v1}, Lgbsdk/common/host/abai;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abaw;->h:Ljava/lang/String;

    .line 5
    sget-object v0, Lgbsdk/common/host/abaw;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i(Z)Ljava/lang/String;
    .locals 9

    const-string v0, "openudid"

    const-string v1, "Secure.getString_android_id"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Byte;

    invoke-direct {v4, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    sget-object v4, Lgbsdk/common/host/abaw;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v5, "f8c068d533bdaf2962ad7d971a85c4cf"

    invoke-static {v3, p0, v4, p1, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object p1, v3, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1
    :cond_0
    sget-object v3, Lgbsdk/common/host/abaw;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2
    sget-object p1, Lgbsdk/common/host/abaw;->f:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_1
    invoke-static {}, Lcom/apm/applog/AppLog;->isAndroidIdEnabled()Z

    move-result v3

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Lgbsdk/common/host/abaw;->a:Landroid/content/Context;

    .line 6
    :try_start_0
    invoke-static {v3}, Lgbsdk/common/host/abac;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 7
    invoke-interface {v6, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "android_id"

    invoke-static {v3, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 13
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v5

    goto :goto_0

    :cond_3
    move-object v7, v4

    .line 18
    :cond_4
    :goto_0
    :try_start_1
    invoke-static {v7}, Lgbsdk/common/host/abdh;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 49
    :cond_5
    iget-object p1, p0, Lgbsdk/common/host/abaw;->bS:Lgbsdk/common/host/abai;

    invoke-virtual {p1, v5, v7}, Lgbsdk/common/host/abai;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 50
    :cond_6
    :goto_1
    iget-object v1, p0, Lgbsdk/common/host/abaw;->a:Landroid/content/Context;

    const-string v3, "snssdk_openudid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-static {v3}, Lgbsdk/common/host/abdh;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 54
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 55
    new-instance v5, Ljava/math/BigInteger;

    const/16 v6, 0x50

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v3, 0x10

    invoke-virtual {v5, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v5, 0x2d

    if-ne p1, v5, :cond_7

    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 59
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int/lit8 p1, p1, 0xd

    if-lez p1, :cond_9

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-lez p1, :cond_8

    const/16 v5, 0x46

    .line 63
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 66
    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    :cond_9
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 71
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    .line 75
    :cond_a
    iget-object p1, p0, Lgbsdk/common/host/abaw;->bT:Lgbsdk/common/host/abao;

    invoke-virtual {p1, v3, v5}, Lgbsdk/common/host/abai;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object v7, v3

    goto :goto_4

    :catch_1
    move-exception p1

    .line 82
    invoke-static {v4, p1}, Lgbsdk/common/host/abdn;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 85
    invoke-static {v7}, Lgbsdk/common/host/ab;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lgbsdk/common/host/abaw;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 87
    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 88
    sput-object v7, Lgbsdk/common/host/abaw;->f:Ljava/lang/String;

    :cond_c
    return-object v7
.end method
