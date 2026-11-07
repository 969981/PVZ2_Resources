.class public final synthetic Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$TzjAxnuRQJpHAUEcfeWMqiopJXg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$TzjAxnuRQJpHAUEcfeWMqiopJXg;->f$0:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;

    iput-object p2, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$TzjAxnuRQJpHAUEcfeWMqiopJXg;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$TzjAxnuRQJpHAUEcfeWMqiopJXg;->f$2:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$TzjAxnuRQJpHAUEcfeWMqiopJXg;->f$0:Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$TzjAxnuRQJpHAUEcfeWMqiopJXg;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/optional/applog/impl/-$$Lambda$AppLogInitService$ad$TzjAxnuRQJpHAUEcfeWMqiopJXg;->f$2:Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;

    invoke-static {v0, v1, v2}, Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService$ad;->lambda$TzjAxnuRQJpHAUEcfeWMqiopJXg(Lcom/bytedance/ttgame/tob/optional/applog/impl/AppLogInitService;Landroid/app/Activity;Lcom/bytedance/ttgame/tob/common/host/api/callback/InitCallback;)V

    return-void
.end method
