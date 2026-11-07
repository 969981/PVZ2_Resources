.class public final synthetic Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$nwTHYjm4Etd6l7RFizRct8d9sbU;
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

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$nwTHYjm4Etd6l7RFizRct8d9sbU;->f$0:Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$nwTHYjm4Etd6l7RFizRct8d9sbU;->f$1:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$nwTHYjm4Etd6l7RFizRct8d9sbU;->f$0:Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/download/-$$Lambda$SimpleDownloader$ProxyDownloaderListener$nwTHYjm4Etd6l7RFizRct8d9sbU;->f$1:Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;

    invoke-static {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;->lambda$nwTHYjm4Etd6l7RFizRct8d9sbU(Lcom/bytedance/ttgame/tob/common/host/framework/download/SimpleDownloader$ProxyDownloaderListener;Lcom/bytedance/ttgame/tob/common/host/framework/download/DownloaderInfo;)V

    return-void
.end method
