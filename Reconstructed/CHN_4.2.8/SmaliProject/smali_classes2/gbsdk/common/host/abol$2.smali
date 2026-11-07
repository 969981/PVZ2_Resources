.class public Lgbsdk/common/host/abol$2;
.super Ljava/lang/Object;
.source "DefaultLogSendImpl.java"

# interfaces
.implements Lgbsdk/common/host/abmm$ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abol;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic uD:Lgbsdk/common/host/abol;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abol;Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lgbsdk/common/host/abol$2;->uD:Lgbsdk/common/host/abol;

    iput-object p2, p0, Lgbsdk/common/host/abol$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lgbsdk/common/host/abol$2;->a:Ljava/lang/String;

    invoke-static {v0}, Lgbsdk/common/host/aboj;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    .line 99
    iget-object v0, p0, Lgbsdk/common/host/abol$2;->uD:Lgbsdk/common/host/abol;

    invoke-static {v0}, Lgbsdk/common/host/abol;->a(Lgbsdk/common/host/abol;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lgbsdk/common/host/abol$2;->uD:Lgbsdk/common/host/abol;

    iget-boolean v0, v0, Lgbsdk/common/host/abol;->c:Z

    return v0
.end method
