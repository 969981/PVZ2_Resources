.class public final Lgbsdk/optional/applog/abdq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/oneid/IDBindCallback;

.field public final synthetic b:Lcom/bytedance/applog/oneid/IDBindResult;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/oneid/IDBindCallback;Lcom/bytedance/applog/oneid/IDBindResult;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abdq;->a:Lcom/bytedance/applog/oneid/IDBindCallback;

    iput-object p2, p0, Lgbsdk/optional/applog/abdq;->b:Lcom/bytedance/applog/oneid/IDBindResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgbsdk/optional/applog/abdq;->a:Lcom/bytedance/applog/oneid/IDBindCallback;

    iget-object v1, p0, Lgbsdk/optional/applog/abdq;->b:Lcom/bytedance/applog/oneid/IDBindResult;

    invoke-interface {v0, v1}, Lcom/bytedance/applog/oneid/IDBindCallback;->onSuccess(Lcom/bytedance/applog/oneid/IDBindResult;)V

    return-void
.end method
