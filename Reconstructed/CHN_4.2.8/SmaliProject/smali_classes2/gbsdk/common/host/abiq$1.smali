.class public Lgbsdk/common/host/abiq$1;
.super Ljava/lang/Object;
.source "SSCookieHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abiq;-><init>(Landroid/content/Context;ILandroid/webkit/CookieManager;Ljava/util/ArrayList;Lgbsdk/common/host/abiq$ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic ly:Lgbsdk/common/host/abiq;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lgbsdk/common/host/abiq;Landroid/content/Context;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lgbsdk/common/host/abiq$1;->ly:Lgbsdk/common/host/abiq;

    iput-object p2, p0, Lgbsdk/common/host/abiq$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 68
    iget-object v0, p0, Lgbsdk/common/host/abiq$1;->ly:Lgbsdk/common/host/abiq;

    new-instance v1, Lgbsdk/common/host/abjz;

    new-instance v2, Lgbsdk/common/host/abiv;

    iget-object v3, p0, Lgbsdk/common/host/abiq$1;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lgbsdk/common/host/abiv;-><init>(Landroid/content/Context;)V

    sget-object v3, Lgbsdk/common/host/abjy;->kG:Lgbsdk/common/host/abjy;

    invoke-direct {v1, v2, v3}, Lgbsdk/common/host/abjz;-><init>(Lgbsdk/common/host/abiu;Lgbsdk/common/host/abjy;)V

    iput-object v1, v0, Lgbsdk/common/host/abiq;->ls:Lgbsdk/common/host/abjz;

    return-void
.end method
