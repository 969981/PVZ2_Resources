.class public final Lgbsdk/optional/applog/abhl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lgbsdk/optional/applog/abfa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/optional/applog/abhl$ac;
    }
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;

.field public static final b:Lgbsdk/optional/applog/abdk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgbsdk/optional/applog/abdk<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgbsdk/optional/applog/abhl$ab;

    invoke-direct {v0}, Lgbsdk/optional/applog/abhl$ab;-><init>()V

    sput-object v0, Lgbsdk/optional/applog/abhl;->b:Lgbsdk/optional/applog/abdk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v3, Lgbsdk/optional/applog/abhl;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v4, 0x0

    const-string v5, "db9b9e53d1fb3b5ef2a32ff53391bbb0"

    invoke-static {v1, v4, v3, v0, v5}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    :goto_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    if-nez p0, :cond_1

    return v2

    :cond_1
    sget-object v1, Lgbsdk/optional/applog/abhl;->b:Lgbsdk/optional/applog/abdk;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-virtual {v1, v0}, Lgbsdk/optional/applog/abdk;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "Huawei"

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/optional/applog/abhl;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "c4ee268a4a3a720e585f6d2cd8305cee"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "com.huawei.hwid"

    .line 1
    invoke-static {p1, v1}, Lgbsdk/optional/applog/abfb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    iput-object v1, p0, Lgbsdk/optional/applog/abhl;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v1, "com.huawei.hwid.tv"

    invoke-static {p1, v1}, Lgbsdk/optional/applog/abfb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "com.huawei.hms"

    iput-object v0, p0, Lgbsdk/optional/applog/abhl;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lgbsdk/optional/applog/abfb;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public b(Landroid/content/Context;)Lgbsdk/optional/applog/abfa$ab;
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lgbsdk/optional/applog/abhl;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "e4ea984a1fd6451522deb6d801ea09e2"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lgbsdk/optional/applog/abfa$ab;

    return-object p1

    .line 1
    :cond_0
    new-instance v1, Lgbsdk/optional/applog/abhl$ac;

    invoke-direct {v1}, Lgbsdk/optional/applog/abhl$ac;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pps_oaid"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pps_track_limit"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iput-object v3, v1, Lgbsdk/optional/applog/abfa$ab;->b:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lgbsdk/optional/applog/abfa$ab;->c:Z

    const-wide v3, 0x2f08517f88L

    iput-wide v3, v1, Lgbsdk/optional/applog/abhl$ac;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "getOaid failed"

    invoke-interface {v4, v0, v6, v3, v5}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 2
    :cond_1
    iget-object v3, p0, Lgbsdk/optional/applog/abhl;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lgbsdk/optional/applog/abhl;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Lgbsdk/optional/applog/abfo;

    new-instance v5, Lgbsdk/optional/applog/abhk;

    invoke-direct {v5, p0}, Lgbsdk/optional/applog/abhk;-><init>(Lgbsdk/optional/applog/abhl;)V

    invoke-direct {v4, p1, v3, v5}, Lgbsdk/optional/applog/abfo;-><init>(Landroid/content/Context;Landroid/content/Intent;Lgbsdk/optional/applog/abfo$ac;)V

    invoke-virtual {v4}, Lgbsdk/optional/applog/abfo;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    :goto_0
    if-eqz v3, :cond_4

    .line 3
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lgbsdk/optional/applog/abfa$ab;->b:Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v1, Lgbsdk/optional/applog/abfa$ab;->c:Z

    iget-object v3, p0, Lgbsdk/optional/applog/abhl;->c:Ljava/lang/String;

    .line 4
    :try_start_1
    invoke-static {p1, v3, v2}, Lgbsdk/optional/applog/abfb;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "getHwIdVersionCode failed"

    invoke-interface {v3, v0, v5, p1, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(ILjava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    int-to-long v2, v2

    .line 6
    iput-wide v2, v1, Lgbsdk/optional/applog/abhl$ac;->d:J

    :cond_4
    :goto_2
    return-object v1
.end method
