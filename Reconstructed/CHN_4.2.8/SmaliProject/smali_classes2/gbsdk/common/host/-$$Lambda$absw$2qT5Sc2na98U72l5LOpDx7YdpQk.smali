.class public final synthetic Lgbsdk/common/host/-$$Lambda$absw$2qT5Sc2na98U72l5LOpDx7YdpQk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/volcengine/zeus/download/IDownloaderProvider;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbsdk/common/host/-$$Lambda$absw$2qT5Sc2na98U72l5LOpDx7YdpQk;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getDownloader()Lcom/volcengine/zeus/download/IDownloader;
    .locals 1

    iget-object v0, p0, Lgbsdk/common/host/-$$Lambda$absw$2qT5Sc2na98U72l5LOpDx7YdpQk;->f$0:Landroid/content/Context;

    invoke-static {v0}, Lgbsdk/common/host/absw;->lambda$2qT5Sc2na98U72l5LOpDx7YdpQk(Landroid/content/Context;)Lcom/volcengine/zeus/download/IDownloader;

    move-result-object v0

    return-object v0
.end method
