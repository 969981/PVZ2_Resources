.class public final Lgbsdk/common/host/abyw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abyw;->requestPluginInfo(Ljava/util/List;Lgbsdk/common/host/abyt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/volcengine/zeus/download/PluginDownloadBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lgbsdk/common/host/abyw$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .line 1038
    new-instance v0, Lgbsdk/common/host/abyp;

    iget-object v1, p0, Lgbsdk/common/host/abyw$2;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lgbsdk/common/host/abyp;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgbsdk/common/host/abyp;->hJ()Lcom/volcengine/zeus/download/PluginDownloadBean;

    move-result-object v0

    return-object v0
.end method
