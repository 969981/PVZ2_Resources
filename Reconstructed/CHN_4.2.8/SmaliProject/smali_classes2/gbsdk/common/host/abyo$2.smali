.class public final Lgbsdk/common/host/abyo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abyo;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic aLN:Lgbsdk/common/host/abyo;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abyo;Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lgbsdk/common/host/abyo$2;->aLN:Lgbsdk/common/host/abyo;

    iput-object p2, p0, Lgbsdk/common/host/abyo$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 82
    invoke-static {}, Lcom/volcengine/zeus/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lgbsdk/common/host/acbz;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lgbsdk/common/host/abyo$2;->aLN:Lgbsdk/common/host/abyo;

    iget-object v1, p0, Lgbsdk/common/host/abyo$2;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lgbsdk/common/host/abyo;->i(Ljava/lang/String;Z)V

    .line 84
    iget-object v0, p0, Lgbsdk/common/host/abyo$2;->aLN:Lgbsdk/common/host/abyo;

    invoke-static {v0}, Lgbsdk/common/host/abyo;->a(Lgbsdk/common/host/abyo;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
