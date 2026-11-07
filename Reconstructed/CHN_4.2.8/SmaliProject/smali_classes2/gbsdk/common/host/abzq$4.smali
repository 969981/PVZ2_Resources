.class public final Lgbsdk/common/host/abzq$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abzq;->a(Lcom/volcengine/zeus/plugin/Plugin;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/StringBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aMG:Lcom/volcengine/zeus/plugin/Plugin;

.field final synthetic aMS:Lgbsdk/common/host/abzq;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abzq;Lcom/volcengine/zeus/plugin/Plugin;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lgbsdk/common/host/abzq$4;->aMS:Lgbsdk/common/host/abzq;

    iput-object p2, p0, Lgbsdk/common/host/abzq$4;->aMG:Lcom/volcengine/zeus/plugin/Plugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 288
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abzq$4;->aMG:Lcom/volcengine/zeus/plugin/Plugin;

    iget-object v0, v0, Lcom/volcengine/zeus/plugin/Plugin;->mClassLoader:Lcom/volcengine/zeus/PluginClassLoader;

    iget-object v1, p0, Lgbsdk/common/host/abzq$4;->aMG:Lcom/volcengine/zeus/plugin/Plugin;

    iget-object v1, v1, Lcom/volcengine/zeus/plugin/Plugin;->mClassLoader:Lcom/volcengine/zeus/PluginClassLoader;

    const-string v2, "com.volcengine.PluginClassHolder"

    invoke-virtual {v1, v2}, Lcom/volcengine/zeus/PluginClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPluginClasses"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/volcengine/zeus/util/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/volcengine/zeus/PluginClassLoader;->setAllPluginClasses(Ljava/util/HashSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
