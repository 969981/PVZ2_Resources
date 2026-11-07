.class public Lgbsdk/common/host/aboa$ad;
.super Ljava/lang/Object;
.source "ThreadWithHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/aboa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ad"
.end annotation


# instance fields
.field a:Landroid/os/Message;

.field b:J


# direct methods
.method constructor <init>(Landroid/os/Message;J)V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lgbsdk/common/host/aboa$ad;->a:Landroid/os/Message;

    .line 216
    iput-wide p2, p0, Lgbsdk/common/host/aboa$ad;->b:J

    return-void
.end method
