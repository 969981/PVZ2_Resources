.class public Lgbsdk/common/host/abrl;
.super Ljava/lang/Object;
.source "EarlySettingsFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgbsdk/common/host/abrl$ab;,
        Lgbsdk/common/host/abrl$ac;
    }
.end annotation


# static fields
.field public static Dd:Ljava/lang/String; = null

.field public static De:Lgbsdk/common/host/abrg; = null

.field private static final TAG:Ljava/lang/String; = "EarlySettingsFetcher"

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bZ(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abrl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "eaaf673edaafbc6c132ffbd1d76277a6"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lgbsdk/common/host/abrl$ac;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgbsdk/common/host/abrl$ac;

    if-eqz p0, :cond_1

    .line 68
    iget-object v0, p0, Lgbsdk/common/host/abrl$ac;->Dg:Lgbsdk/common/host/abrl$ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbsdk/common/host/abrl$ac;->Dg:Lgbsdk/common/host/abrl$ab;

    iget-object v0, v0, Lgbsdk/common/host/abrl$ab;->Df:Lgbsdk/common/host/abrl$ab$ab;

    if-eqz v0, :cond_1

    .line 69
    iget-object p0, p0, Lgbsdk/common/host/abrl$ac;->Dg:Lgbsdk/common/host/abrl$ab;

    iget-object p0, p0, Lgbsdk/common/host/abrl$ab;->Df:Lgbsdk/common/host/abrl$ab$ab;

    iget-object p0, p0, Lgbsdk/common/host/abrl$ab$ab;->De:Lgbsdk/common/host/abrg;

    sput-object p0, Lgbsdk/common/host/abrl;->De:Lgbsdk/common/host/abrg;

    :cond_1
    return-void
.end method

.method public static c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lgbsdk/common/host/abrl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v3, 0x0

    const-string v4, "13311c84be519c60a7060731ce27aa33"

    invoke-static {v1, v3, v2, v0, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "EarlySettingsFetcher"

    const-string v1, "EarlySettingsFetcher.getStreamString error!"

    .line 84
    invoke-static {v0, v1, p0}, Lcom/bytedance/ttgame/tob/common/host/framework/alog/ALogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v3
.end method

.method public static em()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lgbsdk/common/host/abrl;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "f6a00e18ef7a47f0c65493cebeae4723"

    invoke-static {v0, v2, v1, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->getInstance()Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/network/AppExecutors;->networkIO()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lgbsdk/common/host/abrl$1;

    invoke-direct {v1}, Lgbsdk/common/host/abrl$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
