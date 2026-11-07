.class public final Lgbsdk/common/host/abpa$2;
.super Ljava/lang/Object;
.source "PlatformThreadPool.java"

# interfaces
.implements Lgbsdk/common/host/abry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abpa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Throwable;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lgbsdk/common/host/abpa$2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "ad368970b0134eac22afa0f981362680"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    sget-object v0, Lgbsdk/common/host/abpa;->yZ:Lgbsdk/common/host/abry;

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lgbsdk/common/host/abpa;->yZ:Lgbsdk/common/host/abry;

    invoke-interface {v0, p1}, Lgbsdk/common/host/abry;->g(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
