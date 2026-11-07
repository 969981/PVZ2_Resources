.class public Lgbsdk/common/host/abdf$ab$ab;
.super Ljava/lang/Object;
.source "IDidAidlInterface.java"

# interfaces
.implements Lgbsdk/common/host/abdf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abdf$ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field public cg:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lgbsdk/common/host/abdf$ab$ab;->cg:Landroid/os/IBinder;

    return-void
.end method
