.class public final Lgbsdk/common/host/abht$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abht;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lgbsdk/common/host/abht;->c()V

    const/4 v0, 0x0

    invoke-static {v0}, Lgbsdk/common/host/abht;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lgbsdk/common/host/abed;->a()V

    :cond_0
    return-void
.end method
