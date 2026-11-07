.class public final Lgbsdk/common/host/abyo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abyo;->i(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic aLM:Lgbsdk/common/host/abyp;

.field final synthetic aLN:Lgbsdk/common/host/abyo;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abyo;Lgbsdk/common/host/abyp;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lgbsdk/common/host/abyo$1;->aLN:Lgbsdk/common/host/abyo;

    iput-object p2, p0, Lgbsdk/common/host/abyo$1;->aLM:Lgbsdk/common/host/abyp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 64
    iget-object v0, p0, Lgbsdk/common/host/abyo$1;->aLM:Lgbsdk/common/host/abyp;

    invoke-virtual {v0}, Lgbsdk/common/host/abyp;->hJ()Lcom/volcengine/zeus/download/PluginDownloadBean;

    return-void
.end method
