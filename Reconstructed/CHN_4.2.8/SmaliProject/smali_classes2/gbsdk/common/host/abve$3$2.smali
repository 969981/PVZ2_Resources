.class public final Lgbsdk/common/host/abve$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/framwork/core/apm/SDKMonitor$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abve$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aLj:Lgbsdk/common/host/abve$3;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abve$3;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lgbsdk/common/host/abve$3$2;->aLj:Lgbsdk/common/host/abve$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Z)V
    .locals 1

    .line 180
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "flush report result : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SDKMonitorHelper"

    invoke-static {v0, p1}, Lcom/volcengine/zeus/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
