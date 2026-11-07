.class public Lgbsdk/optional/applog/abck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgbsdk/optional/applog/abch;


# direct methods
.method public constructor <init>(Lgbsdk/optional/applog/abch;)V
    .locals 0

    iput-object p1, p0, Lgbsdk/optional/applog/abck;->a:Lgbsdk/optional/applog/abch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lgbsdk/optional/applog/abck;->a:Lgbsdk/optional/applog/abch;

    .line 1
    iget-object v0, v0, Lgbsdk/optional/applog/abch;->e:Lcom/bytedance/applog/profile/UserProfileCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/applog/profile/UserProfileCallback;->onSuccess()V

    :cond_0
    return-void
.end method
