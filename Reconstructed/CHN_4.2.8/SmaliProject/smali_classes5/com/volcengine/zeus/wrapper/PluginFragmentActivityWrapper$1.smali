.class public final Lcom/volcengine/zeus/wrapper/PluginFragmentActivityWrapper$1;
.super Lgbsdk/common/host/abvh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/volcengine/zeus/wrapper/PluginFragmentActivityWrapper;-><init>(Landroid/app/Activity;Lcom/volcengine/zeus/PluginContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aNI:Lcom/volcengine/zeus/wrapper/PluginFragmentActivityWrapper;


# direct methods
.method constructor <init>(Lcom/volcengine/zeus/wrapper/PluginFragmentActivityWrapper;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/volcengine/zeus/wrapper/PluginFragmentActivityWrapper$1;->aNI:Lcom/volcengine/zeus/wrapper/PluginFragmentActivityWrapper;

    invoke-direct {p0}, Lgbsdk/common/host/abvh;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lgbsdk/common/host/abvh;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 43
    iget-object v0, p0, Lcom/volcengine/zeus/wrapper/PluginFragmentActivityWrapper$1;->aNI:Lcom/volcengine/zeus/wrapper/PluginFragmentActivityWrapper;

    iget-object v0, v0, Lcom/volcengine/zeus/wrapper/PluginFragmentActivityWrapper;->mOriginActivity:Lgbsdk/android/support/v4/app/FragmentActivity;

    if-ne p1, v0, :cond_0

    .line 44
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method
