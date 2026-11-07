.class public final Lgbsdk/optional/applog/abaq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/bytedance/applog/oneid/IDBindCallback;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/applog/oneid/IDBindCallback;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abaq;->a:Lcom/bytedance/applog/oneid/IDBindCallback;

    iput p2, p0, Lgbsdk/optional/applog/abaq;->b:I

    iput-object p3, p0, Lgbsdk/optional/applog/abaq;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lgbsdk/optional/applog/abaq;->a:Lcom/bytedance/applog/oneid/IDBindCallback;

    iget v1, p0, Lgbsdk/optional/applog/abaq;->b:I

    iget-object v2, p0, Lgbsdk/optional/applog/abaq;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/applog/oneid/IDBindCallback;->onFail(ILjava/lang/String;)V

    return-void
.end method
