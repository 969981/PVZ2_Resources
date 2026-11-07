.class public Lcom/bytedance/framwork/core/apm/SDKMonitor$11;
.super Ljava/lang/Object;
.source "SDKMonitor.java"

# interfaces
.implements Lgbsdk/common/host/abmo$ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/framwork/core/apm/SDKMonitor;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/framwork/core/apm/SDKMonitor;


# direct methods
.method constructor <init>(Lcom/bytedance/framwork/core/apm/SDKMonitor;)V
    .locals 0

    .line 1023
    iput-object p1, p0, Lcom/bytedance/framwork/core/apm/SDKMonitor$11;->a:Lcom/bytedance/framwork/core/apm/SDKMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 0

    .line 1026
    invoke-static {p1}, Lgbsdk/common/host/abnc;->b(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
