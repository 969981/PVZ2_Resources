.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/base/api/core/IPluginService;
.super Ljava/lang/Object;
.source "IPluginService.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/IService;


# virtual methods
.method public abstract getPluginsPackage()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isLoadedPlugin(Ljava/lang/String;)Z
.end method

.method public abstract isPluginSdk()Z
.end method

.method public abstract loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract loadClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
.end method
