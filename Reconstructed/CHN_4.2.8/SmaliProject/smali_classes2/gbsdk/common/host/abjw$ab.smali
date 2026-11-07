.class public abstract Lgbsdk/common/host/abjw$ab;
.super Ljava/lang/Object;
.source "NetThreadPoolManager.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abjw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lgbsdk/common/host/abjw$ab;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final synthetic hd:Lgbsdk/common/host/abjw;

.field public he:Lgbsdk/common/host/abjv;


# direct methods
.method public constructor <init>(Lgbsdk/common/host/abjw;Lgbsdk/common/host/abjv;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lgbsdk/common/host/abjw$ab;->hd:Lgbsdk/common/host/abjw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p2, p0, Lgbsdk/common/host/abjw$ab;->he:Lgbsdk/common/host/abjv;

    return-void
.end method
