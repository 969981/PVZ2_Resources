.class public Lgbsdk/common/host/abiv$1;
.super Ljava/lang/Object;
.source "PersistentCookieStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abiv;->a(Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic lk:Lgbsdk/common/host/abiv;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abiv;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lgbsdk/common/host/abiv$1;->lk:Lgbsdk/common/host/abiv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 99
    :try_start_0
    iget-object v0, p0, Lgbsdk/common/host/abiv$1;->lk:Lgbsdk/common/host/abiv;

    invoke-virtual {v0}, Lgbsdk/common/host/abiv;->bP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
