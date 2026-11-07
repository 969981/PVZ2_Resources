.class public final Lcom/bytedance/ttnet/TTNetInit$7;
.super Lcom/bytedance/common/utility/concurrent/ThreadPlus;
.source "TTNetInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/ttnet/TTNetInit;->onActivityResume(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic aFp:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 579
    iput-object p2, p0, Lcom/bytedance/ttnet/TTNetInit$7;->aFp:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/bytedance/common/utility/concurrent/ThreadPlus;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/bytedance/ttnet/TTNetInit$7;->aFp:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/ttnet/config/AppConfig;->getInstance(Landroid/content/Context;)Lcom/bytedance/ttnet/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ttnet/config/AppConfig;->tryLoadLocalConfig()V

    return-void
.end method
