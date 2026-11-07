.class public final Lcom/volcengine/zeus/wrapper/PluginActivityWrapper$1;
.super Lgbsdk/common/host/abvh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volcengine/zeus/wrapper/PluginActivityWrapper;-><init>(Landroid/app/Activity;Lcom/volcengine/zeus/PluginContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aNH:Lcom/volcengine/zeus/wrapper/PluginActivityWrapper;


# direct methods
.method constructor <init>(Lcom/volcengine/zeus/wrapper/PluginActivityWrapper;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/volcengine/zeus/wrapper/PluginActivityWrapper$1;->aNH:Lcom/volcengine/zeus/wrapper/PluginActivityWrapper;

    invoke-direct {p0}, Lgbsdk/common/host/abvh;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lgbsdk/common/host/abvh;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 38
    iget-object v0, p0, Lcom/volcengine/zeus/wrapper/PluginActivityWrapper$1;->aNH:Lcom/volcengine/zeus/wrapper/PluginActivityWrapper;

    iget-object v0, v0, Lcom/volcengine/zeus/wrapper/PluginActivityWrapper;->mOriginActivity:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 39
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
