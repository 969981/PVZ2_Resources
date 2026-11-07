.class public final synthetic Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$GsEbO-rAhCIIO3V5Wf3zaBb7La4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;

.field public final synthetic f$1:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$GsEbO-rAhCIIO3V5Wf3zaBb7La4;->f$0:Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$GsEbO-rAhCIIO3V5Wf3zaBb7La4;->f$1:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$GsEbO-rAhCIIO3V5Wf3zaBb7La4;->f$0:Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$GsEbO-rAhCIIO3V5Wf3zaBb7La4;->f$1:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->lambda$GsEbO-rAhCIIO3V5Wf3zaBb7La4(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    return-void
.end method
