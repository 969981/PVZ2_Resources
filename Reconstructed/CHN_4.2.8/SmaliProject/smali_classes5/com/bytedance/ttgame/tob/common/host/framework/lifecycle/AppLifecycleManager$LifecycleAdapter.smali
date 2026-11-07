.class public Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleAdapter;
.super Ljava/lang/Object;
.source "AppLifecycleManager.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager$LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/lifecycle/AppLifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifecycleAdapter"
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterBackground()V
    .locals 0

    return-void
.end method

.method public enterForeground()V
    .locals 0

    return-void
.end method
