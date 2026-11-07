.class public Lgbsdk/optional/applog/ap$ab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/optional/applog/ap;->a(Lcom/bytedance/bdtracker/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/bytedance/bdtracker/d;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/ap;Lcom/bytedance/bdtracker/d;)V
    .locals 0

    iput-object p2, p0, Lgbsdk/optional/applog/ap$ab;->a:Lcom/bytedance/bdtracker/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lgbsdk/optional/applog/ap$ab;->a:Lcom/bytedance/bdtracker/d;

    const-string v1, "getConfig"

    .line 1
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->q:Lgbsdk/optional/applog/abbj;

    .line 2
    iget-object v0, v0, Lgbsdk/optional/applog/abbj;->e:Lgbsdk/optional/applog/abfl;

    :goto_0
    if-eqz v0, :cond_3

    .line 3
    iget-boolean v1, v0, Lgbsdk/optional/applog/abfl;->q:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v0, v0, Lgbsdk/optional/applog/abfl;->f:Lcom/bytedance/applog/store/kv/IKVStore;

    const-string v1, "enter_background_not_send"

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/store/kv/IKVStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 4
    iget-object v0, p0, Lgbsdk/optional/applog/ap$ab;->a:Lcom/bytedance/bdtracker/d;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->flush()V

    :cond_3
    return-void
.end method
